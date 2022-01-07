; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_restore_npx_curthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_restore_npx_curthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pcb = type { i32, i64, i32 }

@fpcurthread = common dso_local global i32 0, align 4
@cpu_fxsr = common dso_local global i64 0, align 8
@PCB_NPXINITDONE = common dso_local global i32 0, align 4
@npx_initialstate = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@__INITIAL_NPXCW__ = common dso_local global i64 0, align 8
@PCB_NPXUSERINITDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.pcb*)* @restore_npx_curthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_npx_curthread(%struct.thread* %0, %struct.pcb* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.pcb* %1, %struct.pcb** %4, align 8
  %5 = load i32, i32* @fpcurthread, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = call i32 @PCPU_SET(i32 %5, %struct.thread* %6)
  %8 = call i32 (...) @stop_emulating()
  %9 = load i64, i64* @cpu_fxsr, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @fpu_clean_state()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.pcb*, %struct.pcb** %4, align 8
  %15 = getelementptr inbounds %struct.pcb, %struct.pcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PCB_NPXINITDONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %13
  %21 = load i32, i32* @npx_initialstate, align 4
  %22 = load %struct.pcb*, %struct.pcb** %4, align 8
  %23 = getelementptr inbounds %struct.pcb, %struct.pcb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @cpu_max_ext_state_size, align 4
  %26 = call i32 @bcopy(i32 %21, i32 %24, i32 %25)
  %27 = load %struct.pcb*, %struct.pcb** %4, align 8
  %28 = getelementptr inbounds %struct.pcb, %struct.pcb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @fpurstor(i32 %29)
  %31 = load %struct.pcb*, %struct.pcb** %4, align 8
  %32 = getelementptr inbounds %struct.pcb, %struct.pcb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @__INITIAL_NPXCW__, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.pcb*, %struct.pcb** %4, align 8
  %38 = getelementptr inbounds %struct.pcb, %struct.pcb* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @fldcw(i64 %39)
  br label %41

41:                                               ; preds = %36, %20
  %42 = load i32, i32* @PCB_NPXINITDONE, align 4
  %43 = load %struct.pcb*, %struct.pcb** %4, align 8
  %44 = getelementptr inbounds %struct.pcb, %struct.pcb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.pcb*, %struct.pcb** %4, align 8
  %48 = call i64 @PCB_USER_FPU(%struct.pcb* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @PCB_NPXUSERINITDONE, align 4
  %52 = load %struct.pcb*, %struct.pcb** %4, align 8
  %53 = getelementptr inbounds %struct.pcb, %struct.pcb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %41
  br label %62

57:                                               ; preds = %13
  %58 = load %struct.pcb*, %struct.pcb** %4, align 8
  %59 = getelementptr inbounds %struct.pcb, %struct.pcb* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @fpurstor(i32 %60)
  br label %62

62:                                               ; preds = %57, %56
  ret void
}

declare dso_local i32 @PCPU_SET(i32, %struct.thread*) #1

declare dso_local i32 @stop_emulating(...) #1

declare dso_local i32 @fpu_clean_state(...) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @fpurstor(i32) #1

declare dso_local i32 @fldcw(i64) #1

declare dso_local i64 @PCB_USER_FPU(%struct.pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
