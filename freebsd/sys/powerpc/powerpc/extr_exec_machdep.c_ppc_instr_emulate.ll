; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_ppc_instr_emulate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_ppc_instr_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i64, i32* }
%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32, i64, i32 }

@SIGILL = common dso_local global i32 0, align 4
@XFX = common dso_local global i32 0, align 4
@curpmap = common dso_local global i32 0, align 4
@PCB_FPREGS = common dso_local global i32 0, align 4
@PCB_FPU = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_instr_emulate(%struct.trapframe* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.pcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %12 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @fuword32(i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @SIGILL, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -65011713
  %20 = icmp eq i32 %19, 2082423462
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 65011712
  %24 = lshr i32 %23, 21
  store i32 %24, i32* %8, align 4
  %25 = call i32 (...) @mfpvr()
  %26 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %27 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %33 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 4
  store i64 %35, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %111

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @XFX, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 2080375462
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 65011712
  %44 = ashr i32 %43, 21
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 2095104
  %47 = ashr i32 %46, 16
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %51 = call i32 @emulate_mfspr(i32 %48, i32 %49, %struct.trapframe* %50)
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @XFX, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 2080375718
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 65011712
  %60 = ashr i32 %59, 21
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 2095104
  %63 = ashr i32 %62, 16
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %67 = call i32 @emulate_mtspr(i32 %64, i32 %65, %struct.trapframe* %66)
  store i32 %67, i32* %3, align 4
  br label %111

68:                                               ; preds = %52
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, -67104770
  %71 = icmp eq i32 %70, 2080375980
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = call i32 (...) @powerpc_sync()
  %74 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 4
  store i64 %77, i64* %75, align 8
  store i32 0, i32* %3, align 4
  br label %111

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.thread*, %struct.thread** %5, align 8
  %83 = getelementptr inbounds %struct.thread, %struct.thread* %82, i32 0, i32 0
  %84 = load %struct.pcb*, %struct.pcb** %83, align 8
  store %struct.pcb* %84, %struct.pcb** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @SIGILL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = load %struct.pcb*, %struct.pcb** %6, align 8
  %90 = getelementptr inbounds %struct.pcb, %struct.pcb* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %93 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  store i32 0, i32* %9, align 4
  %97 = load i32, i32* @curpmap, align 4
  %98 = call i32 @PCPU_GET(i32 %97)
  %99 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %100 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @pmap_sync_icache(i32 %98, i64 %101, i32 4)
  %103 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %104 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.pcb*, %struct.pcb** %6, align 8
  %107 = getelementptr inbounds %struct.pcb, %struct.pcb* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %96, %88
  br label %109

109:                                              ; preds = %108, %81
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %72, %57, %41, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @fuword32(i8*) #1

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @emulate_mfspr(i32, i32, %struct.trapframe*) #1

declare dso_local i32 @emulate_mtspr(i32, i32, %struct.trapframe*) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @pmap_sync_icache(i32, i64, i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
