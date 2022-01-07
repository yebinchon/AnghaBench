; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_update_head.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_update_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unable to update HEAD\00", align 1
@option_bare = common dso_local global i32 0, align 4
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@option_origin = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*, %struct.ref*, i8*)* @update_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_head(%struct.ref* %0, %struct.ref* %1, i8* %2) #0 {
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.ref* %0, %struct.ref** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ref*, %struct.ref** %4, align 8
  %10 = icmp ne %struct.ref* %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %3
  %12 = load %struct.ref*, %struct.ref** %4, align 8
  %13 = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @skip_prefix(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load %struct.ref*, %struct.ref** %4, align 8
  %19 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @create_symref(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32* null)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @die(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* @option_bare, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.ref*, %struct.ref** %4, align 8
  %32 = getelementptr inbounds %struct.ref, %struct.ref* %31, i32 0, i32 0
  %33 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %34 = call i32 @update_ref(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %32, i32* null, i32 0, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @option_origin, align 4
  %37 = load %struct.ref*, %struct.ref** %4, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @install_branch_config(i32 0, i8* %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %29, %26
  br label %69

42:                                               ; preds = %11, %3
  %43 = load %struct.ref*, %struct.ref** %4, align 8
  %44 = icmp ne %struct.ref* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* @the_repository, align 4
  %47 = load %struct.ref*, %struct.ref** %4, align 8
  %48 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 0
  %49 = call %struct.commit* @lookup_commit_reference(i32 %46, i32* %48)
  store %struct.commit* %49, %struct.commit** %8, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.commit*, %struct.commit** %8, align 8
  %52 = getelementptr inbounds %struct.commit, %struct.commit* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @REF_NO_DEREF, align 4
  %55 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %56 = call i32 @update_ref(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %53, i32* null, i32 %54, i32 %55)
  br label %68

57:                                               ; preds = %42
  %58 = load %struct.ref*, %struct.ref** %5, align 8
  %59 = icmp ne %struct.ref* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.ref*, %struct.ref** %5, align 8
  %63 = getelementptr inbounds %struct.ref, %struct.ref* %62, i32 0, i32 0
  %64 = load i32, i32* @REF_NO_DEREF, align 4
  %65 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %66 = call i32 @update_ref(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %63, i32* null, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %57
  br label %68

68:                                               ; preds = %67, %45
  br label %69

69:                                               ; preds = %68, %41
  ret void
}

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #1

declare dso_local i64 @create_symref(i8*, i32, i32*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @update_ref(i8*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @install_branch_config(i32, i8*, i32, i32) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
