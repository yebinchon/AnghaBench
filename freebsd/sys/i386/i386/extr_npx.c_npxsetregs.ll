; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxsetregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxsetregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32 }
%union.savefpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@hw_float = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@cpu_fxsr = common dso_local global i64 0, align 8
@cpu_mxcsr_mask = common dso_local global i32 0, align 4
@fpcurthread = common dso_local global i32 0, align 4
@PCB_NPXUSERINITDONE = common dso_local global i32 0, align 4
@PCB_NPXINITDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npxsetregs(%struct.thread* %0, %union.savefpu* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %union.savefpu*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pcb*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %union.savefpu* %1, %union.savefpu** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @hw_float, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %5, align 4
  br label %86

16:                                               ; preds = %4
  %17 = load i64, i64* @cpu_fxsr, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* @cpu_mxcsr_mask, align 4
  %21 = load %union.savefpu*, %union.savefpu** %7, align 8
  %22 = bitcast %union.savefpu* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %20
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %19, %16
  %28 = load %struct.thread*, %struct.thread** %6, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load %struct.pcb*, %struct.pcb** %29, align 8
  store %struct.pcb* %30, %struct.pcb** %10, align 8
  store i32 0, i32* %11, align 4
  %31 = call i32 (...) @critical_enter()
  %32 = load %struct.thread*, %struct.thread** %6, align 8
  %33 = load i32, i32* @fpcurthread, align 4
  %34 = call %struct.thread* @PCPU_GET(i32 %33)
  %35 = icmp eq %struct.thread* %32, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %27
  %37 = load %struct.pcb*, %struct.pcb** %10, align 8
  %38 = call i64 @PCB_USER_FPU(%struct.pcb* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load %struct.thread*, %struct.thread** %6, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @npxsetxstate(%struct.thread* %41, i8* %42, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load i64, i64* @cpu_fxsr, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 (...) @fnclex()
  br label %52

52:                                               ; preds = %50, %47
  %53 = load %union.savefpu*, %union.savefpu** %7, align 8
  %54 = load %struct.thread*, %struct.thread** %6, align 8
  %55 = call i32 @get_pcb_user_save_td(%struct.thread* %54)
  %56 = call i32 @bcopy(%union.savefpu* %53, i32 %55, i32 4)
  %57 = load %struct.thread*, %struct.thread** %6, align 8
  %58 = call i32 @get_pcb_user_save_td(%struct.thread* %57)
  %59 = call i32 @fpurstor(i32 %58)
  %60 = load i32, i32* @PCB_NPXUSERINITDONE, align 4
  %61 = load i32, i32* @PCB_NPXINITDONE, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.pcb*, %struct.pcb** %10, align 8
  %64 = getelementptr inbounds %struct.pcb, %struct.pcb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %52, %40
  br label %83

68:                                               ; preds = %36, %27
  %69 = load %struct.thread*, %struct.thread** %6, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @npxsetxstate(%struct.thread* %69, i8* %70, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %union.savefpu*, %union.savefpu** %7, align 8
  %77 = load %struct.thread*, %struct.thread** %6, align 8
  %78 = call i32 @get_pcb_user_save_td(%struct.thread* %77)
  %79 = call i32 @bcopy(%union.savefpu* %76, i32 %78, i32 4)
  %80 = load %struct.thread*, %struct.thread** %6, align 8
  %81 = call i32 @npxuserinited(%struct.thread* %80)
  br label %82

82:                                               ; preds = %75, %68
  br label %83

83:                                               ; preds = %82, %67
  %84 = call i32 (...) @critical_exit()
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %14
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i64 @PCB_USER_FPU(%struct.pcb*) #1

declare dso_local i32 @npxsetxstate(%struct.thread*, i8*, i64) #1

declare dso_local i32 @fnclex(...) #1

declare dso_local i32 @bcopy(%union.savefpu*, i32, i32) #1

declare dso_local i32 @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @fpurstor(i32) #1

declare dso_local i32 @npxuserinited(%struct.thread*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
