; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pcb = type { i32 }

@lazy_fpu_switch = common dso_local global i64 0, align 8
@TDP_KTHREAD = common dso_local global i32 0, align 4
@fpcurthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @npxswitch(%struct.thread* %0, %struct.pcb* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.pcb* %1, %struct.pcb** %4, align 8
  %5 = load i64, i64* @lazy_fpu_switch, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TDP_KTHREAD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = load %struct.pcb*, %struct.pcb** %4, align 8
  %16 = call i32 @PCB_USER_FPU(%struct.pcb* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %7, %2
  %19 = call i32 (...) @start_emulating()
  %20 = load i32, i32* @fpcurthread, align 4
  %21 = call i32 @PCPU_SET(i32 %20, i32* null)
  br label %32

22:                                               ; preds = %14
  %23 = load i32, i32* @fpcurthread, align 4
  %24 = call %struct.thread* @PCPU_GET(i32 %23)
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = icmp ne %struct.thread* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = load %struct.pcb*, %struct.pcb** %4, align 8
  %30 = call i32 @restore_npx_curthread(%struct.thread* %28, %struct.pcb* %29)
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %18
  ret void
}

declare dso_local i32 @PCB_USER_FPU(%struct.pcb*) #1

declare dso_local i32 @start_emulating(...) #1

declare dso_local i32 @PCPU_SET(i32, i32*) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @restore_npx_curthread(%struct.thread*, %struct.pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
