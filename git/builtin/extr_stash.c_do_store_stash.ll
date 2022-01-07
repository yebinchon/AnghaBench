; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_do_store_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_do_store_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Created via \22git stash store\22.\00", align 1
@ref_stash = common dso_local global i32 0, align 4
@REF_FORCE_CREATE_REFLOG = common dso_local global i32 0, align 4
@UPDATE_REFS_QUIET_ON_ERR = common dso_local global i32 0, align 4
@UPDATE_REFS_MSG_ON_ERR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot update %s with %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*, i32)* @do_store_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_store_stash(%struct.object_id* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @ref_stash, align 4
  %14 = load %struct.object_id*, %struct.object_id** %5, align 8
  %15 = load i32, i32* @REF_FORCE_CREATE_REFLOG, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @UPDATE_REFS_QUIET_ON_ERR, align 4
  br label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @UPDATE_REFS_MSG_ON_ERR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i64 @update_ref(i8* %12, i32 %13, %struct.object_id* %14, i32* null, i32 %15, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ref_stash, align 4
  %33 = load %struct.object_id*, %struct.object_id** %5, align 8
  %34 = call i32 @oid_to_hex(%struct.object_id* %33)
  %35 = call i32 @fprintf_ln(i32 %30, i32 %31, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  store i32 -1, i32* %4, align 4
  br label %38

37:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @update_ref(i8*, i32, %struct.object_id*, i32*, i32, i32) #1

declare dso_local i32 @fprintf_ln(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
