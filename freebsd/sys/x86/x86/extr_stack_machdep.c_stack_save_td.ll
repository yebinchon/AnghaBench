; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_stack_machdep.c_stack_save_td.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_stack_machdep.c_stack_save_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"stack_save_td: swapped\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"stack_save_td: running\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_save_td(%struct.stack* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %4, align 8
  %6 = call i64 @TD_IS_SWAPPED(%struct.thread* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = call i64 @TD_IS_RUNNING(%struct.thread* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = load %struct.stack*, %struct.stack** %3, align 8
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PCB_FP(i32 %21)
  %23 = call i32 @stack_capture(%struct.thread* %17, %struct.stack* %18, i32 %22)
  ret void
}

declare dso_local i64 @TD_IS_SWAPPED(%struct.thread*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i32 @stack_capture(%struct.thread*, %struct.stack*, i32) #1

declare dso_local i32 @PCB_FP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
