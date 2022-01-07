; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_am_state_init.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_am_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am_state = type { i32, i32, i32, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"rebase-apply\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"am.threeway\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"am.messageid\00", align 1
@SCISSORS_UNSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"commit.gpgsign\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.am_state*)* @am_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am_state_init(%struct.am_state* %0) #0 {
  %2 = alloca %struct.am_state*, align 8
  %3 = alloca i32, align 4
  store %struct.am_state* %0, %struct.am_state** %2, align 8
  %4 = load %struct.am_state*, %struct.am_state** %2, align 8
  %5 = call i32 @memset(%struct.am_state* %4, i32 0, i32 40)
  %6 = call i32 @git_pathdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.am_state*, %struct.am_state** %2, align 8
  %8 = getelementptr inbounds %struct.am_state, %struct.am_state* %7, i32 0, i32 7
  store i32 %6, i32* %8, align 8
  %9 = load %struct.am_state*, %struct.am_state** %2, align 8
  %10 = getelementptr inbounds %struct.am_state, %struct.am_state* %9, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = load %struct.am_state*, %struct.am_state** %2, align 8
  %12 = getelementptr inbounds %struct.am_state, %struct.am_state* %11, i32 0, i32 1
  %13 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %14 = load %struct.am_state*, %struct.am_state** %2, align 8
  %15 = getelementptr inbounds %struct.am_state, %struct.am_state* %14, i32 0, i32 2
  store i32 1, i32* %15, align 8
  %16 = load %struct.am_state*, %struct.am_state** %2, align 8
  %17 = getelementptr inbounds %struct.am_state, %struct.am_state* %16, i32 0, i32 3
  %18 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %17)
  %19 = load i32, i32* @SCISSORS_UNSET, align 4
  %20 = load %struct.am_state*, %struct.am_state** %2, align 8
  %21 = getelementptr inbounds %struct.am_state, %struct.am_state* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.am_state*, %struct.am_state** %2, align 8
  %23 = getelementptr inbounds %struct.am_state, %struct.am_state* %22, i32 0, i32 5
  %24 = call i32 @argv_array_init(i32* %23)
  %25 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* null
  %32 = load %struct.am_state*, %struct.am_state** %2, align 8
  %33 = getelementptr inbounds %struct.am_state, %struct.am_state* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @memset(%struct.am_state*, i32, i32) #1

declare dso_local i32 @git_pathdup(i8*) #1

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @argv_array_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
