; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_get_patch_ids.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_get_patch_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.object* }
%struct.object = type { i32, i32 }
%struct.patch_ids = type { i32 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"need exactly one range\00", align 1
@the_repository = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"not a range\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"o1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"o2\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@SEEN = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@ADDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.patch_ids*)* @get_patch_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_patch_ids(%struct.rev_info* %0, %struct.patch_ids* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.patch_ids*, align 8
  %5 = alloca %struct.rev_info, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.object*, align 8
  %10 = alloca %struct.object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.patch_ids* %1, %struct.patch_ids** %4, align 8
  %13 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @die(i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.object*, %struct.object** %27, align 8
  store %struct.object* %28, %struct.object** %9, align 8
  %29 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %30 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.object*, %struct.object** %34, align 8
  store %struct.object* %35, %struct.object** %10, align 8
  %36 = load %struct.object*, %struct.object** %9, align 8
  %37 = getelementptr inbounds %struct.object, %struct.object* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.object*, %struct.object** %10, align 8
  %40 = getelementptr inbounds %struct.object, %struct.object* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @the_repository, align 4
  %43 = load %struct.object*, %struct.object** %9, align 8
  %44 = getelementptr inbounds %struct.object, %struct.object* %43, i32 0, i32 1
  %45 = call %struct.commit* @lookup_commit_reference(i32 %42, i32* %44)
  store %struct.commit* %45, %struct.commit** %7, align 8
  %46 = load i32, i32* @the_repository, align 4
  %47 = load %struct.object*, %struct.object** %10, align 8
  %48 = getelementptr inbounds %struct.object, %struct.object* %47, i32 0, i32 1
  %49 = call %struct.commit* @lookup_commit_reference(i32 %46, i32* %48)
  store %struct.commit* %49, %struct.commit** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @UNINTERESTING, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @UNINTERESTING, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %21
  %58 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @die(i32 %58)
  br label %60

60:                                               ; preds = %57, %21
  %61 = load i32, i32* @the_repository, align 4
  %62 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %63 = call i32 @init_patch_ids(i32 %61, %struct.patch_ids* %62)
  %64 = load i32, i32* @the_repository, align 4
  %65 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %66 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @repo_init_revisions(i32 %64, %struct.rev_info* %5, i32 %67)
  %69 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @UNINTERESTING, align 4
  %71 = load %struct.object*, %struct.object** %9, align 8
  %72 = getelementptr inbounds %struct.object, %struct.object* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @UNINTERESTING, align 4
  %76 = load %struct.object*, %struct.object** %10, align 8
  %77 = getelementptr inbounds %struct.object, %struct.object* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.object*, %struct.object** %9, align 8
  %81 = call i32 @add_pending_object(%struct.rev_info* %5, %struct.object* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.object*, %struct.object** %10, align 8
  %83 = call i32 @add_pending_object(%struct.rev_info* %5, %struct.object* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i64 @prepare_revision_walk(%struct.rev_info* %5)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %60
  %87 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 @die(i32 %87)
  br label %89

89:                                               ; preds = %86, %60
  br label %90

90:                                               ; preds = %93, %89
  %91 = call %struct.commit* @get_revision(%struct.rev_info* %5)
  store %struct.commit* %91, %struct.commit** %6, align 8
  %92 = icmp ne %struct.commit* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.commit*, %struct.commit** %6, align 8
  %95 = load %struct.patch_ids*, %struct.patch_ids** %4, align 8
  %96 = call i32 @add_commit_patch_id(%struct.commit* %94, %struct.patch_ids* %95)
  br label %90

97:                                               ; preds = %90
  %98 = load %struct.commit*, %struct.commit** %7, align 8
  %99 = load i32, i32* @SEEN, align 4
  %100 = load i32, i32* @UNINTERESTING, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SHOWN, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @ADDED, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @clear_commit_marks(%struct.commit* %98, i32 %105)
  %107 = load %struct.commit*, %struct.commit** %8, align 8
  %108 = load i32, i32* @SEEN, align 4
  %109 = load i32, i32* @UNINTERESTING, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SHOWN, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @ADDED, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @clear_commit_marks(%struct.commit* %107, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.object*, %struct.object** %9, align 8
  %118 = getelementptr inbounds %struct.object, %struct.object* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.object*, %struct.object** %10, align 8
  %121 = getelementptr inbounds %struct.object, %struct.object* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  ret void
}

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, i32*) #1

declare dso_local i32 @init_patch_ids(i32, %struct.patch_ids*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i8*) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #1

declare dso_local i32 @add_commit_patch_id(%struct.commit*, %struct.patch_ids*) #1

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
