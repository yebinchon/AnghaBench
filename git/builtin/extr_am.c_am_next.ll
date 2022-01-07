; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_am_next.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_am_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am_state = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"author-script\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"final-commit\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"original-commit\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"REBASE_HEAD\00", align 1
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"abort-safety\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.am_state*)* @am_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am_next(%struct.am_state* %0) #0 {
  %2 = alloca %struct.am_state*, align 8
  %3 = alloca %struct.object_id, align 4
  store %struct.am_state* %0, %struct.am_state** %2, align 8
  %4 = load %struct.am_state*, %struct.am_state** %2, align 8
  %5 = getelementptr inbounds %struct.am_state, %struct.am_state* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @FREE_AND_NULL(i32 %6)
  %8 = load %struct.am_state*, %struct.am_state** %2, align 8
  %9 = getelementptr inbounds %struct.am_state, %struct.am_state* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @FREE_AND_NULL(i32 %10)
  %12 = load %struct.am_state*, %struct.am_state** %2, align 8
  %13 = getelementptr inbounds %struct.am_state, %struct.am_state* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @FREE_AND_NULL(i32 %14)
  %16 = load %struct.am_state*, %struct.am_state** %2, align 8
  %17 = getelementptr inbounds %struct.am_state, %struct.am_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @FREE_AND_NULL(i32 %18)
  %20 = load %struct.am_state*, %struct.am_state** %2, align 8
  %21 = getelementptr inbounds %struct.am_state, %struct.am_state* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.am_state*, %struct.am_state** %2, align 8
  %23 = call i32 @am_path(%struct.am_state* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @unlink(i32 %23)
  %25 = load %struct.am_state*, %struct.am_state** %2, align 8
  %26 = call i32 @am_path(%struct.am_state* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @unlink(i32 %26)
  %28 = load %struct.am_state*, %struct.am_state** %2, align 8
  %29 = getelementptr inbounds %struct.am_state, %struct.am_state* %28, i32 0, i32 1
  %30 = call i32 @oidclr(i32* %29)
  %31 = load %struct.am_state*, %struct.am_state** %2, align 8
  %32 = call i32 @am_path(%struct.am_state* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @unlink(i32 %32)
  %34 = load i32, i32* @REF_NO_DEREF, align 4
  %35 = call i32 @delete_ref(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %34)
  %36 = call i32 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.object_id* %3)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %1
  %39 = load %struct.am_state*, %struct.am_state** %2, align 8
  %40 = call i8* @oid_to_hex(%struct.object_id* %3)
  %41 = call i32 @write_state_text(%struct.am_state* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.am_state*, %struct.am_state** %2, align 8
  %44 = call i32 @write_state_text(%struct.am_state* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.am_state*, %struct.am_state** %2, align 8
  %47 = getelementptr inbounds %struct.am_state, %struct.am_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.am_state*, %struct.am_state** %2, align 8
  %51 = load %struct.am_state*, %struct.am_state** %2, align 8
  %52 = getelementptr inbounds %struct.am_state, %struct.am_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @write_state_count(%struct.am_state* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  ret void
}

declare dso_local i32 @FREE_AND_NULL(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @am_path(%struct.am_state*, i8*) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i32 @delete_ref(i32*, i8*, i32*, i32) #1

declare dso_local i32 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @write_state_text(%struct.am_state*, i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @write_state_count(%struct.am_state*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
