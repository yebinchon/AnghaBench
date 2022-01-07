; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_feedback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nlm_feedback_arg = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"lockd not responding\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"lockd is alive again\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @nlm_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_feedback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.nlm_feedback_arg*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nlm_feedback_arg*
  store %struct.nlm_feedback_arg* %11, %struct.nlm_feedback_arg** %8, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %21 [
    i32 128, label %13
    i32 129, label %13
    i32 130, label %17
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.nlm_feedback_arg*, %struct.nlm_feedback_arg** %8, align 8
  %15 = load %struct.thread*, %struct.thread** %7, align 8
  %16 = call i32 @nlm_down(%struct.nlm_feedback_arg* %14, %struct.thread* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.nlm_feedback_arg*, %struct.nlm_feedback_arg** %8, align 8
  %19 = load %struct.thread*, %struct.thread** %7, align 8
  %20 = call i32 @nlm_up(%struct.nlm_feedback_arg* %18, %struct.thread* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %3, %17, %13
  ret void
}

declare dso_local i32 @nlm_down(%struct.nlm_feedback_arg*, %struct.thread*, i8*, i32) #1

declare dso_local i32 @nlm_up(%struct.nlm_feedback_arg*, %struct.thread*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
