; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_Continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_Continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.prompt*, i32, i32 }
%struct.prompt = type { i32, i32 }

@bgtimer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@prompt_TimedContinue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"prompt bg\00", align 1
@SECTICKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prompt_Continue(%struct.prompt* %0) #0 {
  %2 = alloca %struct.prompt*, align 8
  store %struct.prompt* %0, %struct.prompt** %2, align 8
  %3 = call i32 @timer_Stop(%struct.TYPE_4__* @bgtimer)
  %4 = call i64 (...) @getpgrp()
  %5 = load %struct.prompt*, %struct.prompt** %2, align 8
  %6 = call i64 @prompt_pgrp(%struct.prompt* %5)
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.prompt*, %struct.prompt** %2, align 8
  %10 = call i32 @prompt_TtyCommandMode(%struct.prompt* %9)
  %11 = load %struct.prompt*, %struct.prompt** %2, align 8
  %12 = getelementptr inbounds %struct.prompt, %struct.prompt* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.prompt*, %struct.prompt** %2, align 8
  %14 = call i32 @prompt_Required(%struct.prompt* %13)
  %15 = load %struct.prompt*, %struct.prompt** %2, align 8
  %16 = call i32 @log_ActivatePrompt(%struct.prompt* %15)
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.prompt*, %struct.prompt** %2, align 8
  %19 = getelementptr inbounds %struct.prompt, %struct.prompt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @prompt_TimedContinue, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bgtimer, i32 0, i32 3), align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bgtimer, i32 0, i32 0), align 8
  %24 = load i32, i32* @SECTICKS, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bgtimer, i32 0, i32 2), align 8
  %25 = load %struct.prompt*, %struct.prompt** %2, align 8
  store %struct.prompt* %25, %struct.prompt** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bgtimer, i32 0, i32 1), align 8
  %26 = call i32 @timer_Start(%struct.TYPE_4__* @bgtimer)
  br label %27

27:                                               ; preds = %22, %17
  br label %28

28:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @timer_Stop(%struct.TYPE_4__*) #1

declare dso_local i64 @getpgrp(...) #1

declare dso_local i64 @prompt_pgrp(%struct.prompt*) #1

declare dso_local i32 @prompt_TtyCommandMode(%struct.prompt*) #1

declare dso_local i32 @prompt_Required(%struct.prompt*) #1

declare dso_local i32 @log_ActivatePrompt(%struct.prompt*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
