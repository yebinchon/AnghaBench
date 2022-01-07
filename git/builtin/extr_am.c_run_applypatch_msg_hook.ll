; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_run_applypatch_msg_hook.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_run_applypatch_msg_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am_state = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"applypatch-msg\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"final-commit\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"'%s' was deleted by the applypatch-msg hook\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am_state*)* @run_applypatch_msg_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_applypatch_msg_hook(%struct.am_state* %0) #0 {
  %2 = alloca %struct.am_state*, align 8
  %3 = alloca i32, align 4
  store %struct.am_state* %0, %struct.am_state** %2, align 8
  %4 = load %struct.am_state*, %struct.am_state** %2, align 8
  %5 = getelementptr inbounds %struct.am_state, %struct.am_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.am_state*, %struct.am_state** %2, align 8
  %9 = call i32 @am_path(%struct.am_state* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @run_hook_le(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9, i32* null)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.am_state*, %struct.am_state** %2, align 8
  %15 = getelementptr inbounds %struct.am_state, %struct.am_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FREE_AND_NULL(i32 %16)
  %18 = load %struct.am_state*, %struct.am_state** %2, align 8
  %19 = call i64 @read_commit_msg(%struct.am_state* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.am_state*, %struct.am_state** %2, align 8
  %24 = call i32 @am_path(%struct.am_state* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @die(i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %13
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @run_hook_le(i32*, i8*, i32, i32*) #1

declare dso_local i32 @am_path(%struct.am_state*, i8*) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

declare dso_local i64 @read_commit_msg(%struct.am_state*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
