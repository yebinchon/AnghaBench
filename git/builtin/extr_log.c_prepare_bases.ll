; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_prepare_bases.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_prepare_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base_tree_info = type { i32, %struct.object_id*, i32, %struct.object_id }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.object_id }
%struct.rev_info = type { i32, i32 }
%struct.diff_options = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.commit_base = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rev_list\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"cannot get patch id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.base_tree_info*, %struct.commit*, %struct.commit**, i32)* @prepare_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_bases(%struct.base_tree_info* %0, %struct.commit* %1, %struct.commit** %2, i32 %3) #0 {
  %5 = alloca %struct.base_tree_info*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.rev_info, align 4
  %11 = alloca %struct.diff_options, align 4
  %12 = alloca %struct.commit_base, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.object_id*, align 8
  store %struct.base_tree_info* %0, %struct.base_tree_info** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store %struct.commit** %2, %struct.commit*** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.commit*, %struct.commit** %6, align 8
  %17 = icmp ne %struct.commit* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %128

19:                                               ; preds = %4
  %20 = call i32 @init_commit_base(%struct.commit_base* %12)
  %21 = load i32, i32* @the_repository, align 4
  %22 = call i32 @repo_diff_setup(i32 %21, %struct.diff_options* %11)
  %23 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = call i32 @diff_setup_done(%struct.diff_options* %11)
  %26 = load %struct.base_tree_info*, %struct.base_tree_info** %5, align 8
  %27 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %26, i32 0, i32 3
  %28 = load %struct.commit*, %struct.commit** %6, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @oidcpy(%struct.object_id* %27, %struct.object_id* %30)
  %32 = load i32, i32* @the_repository, align 4
  %33 = call i32 @repo_init_revisions(i32 %32, %struct.rev_info* %10, i32* null)
  %34 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 1
  store i32 1, i32* %35, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %65, %19
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i32, i32* @UNINTERESTING, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.commit**, %struct.commit*** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.commit*, %struct.commit** %43, i64 %45
  %47 = load %struct.commit*, %struct.commit** %46, align 8
  %48 = getelementptr inbounds %struct.commit, %struct.commit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %42
  store i32 %51, i32* %49, align 4
  %52 = load %struct.commit**, %struct.commit*** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.commit*, %struct.commit** %52, i64 %54
  %56 = load %struct.commit*, %struct.commit** %55, align 8
  %57 = getelementptr inbounds %struct.commit, %struct.commit* %56, i32 0, i32 0
  %58 = call i32 @add_pending_object(%struct.rev_info* %10, %struct.TYPE_4__* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.commit**, %struct.commit*** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.commit*, %struct.commit** %59, i64 %61
  %63 = load %struct.commit*, %struct.commit** %62, align 8
  %64 = call i32* @commit_base_at(%struct.commit_base* %12, %struct.commit* %63)
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %40
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %36

68:                                               ; preds = %36
  %69 = load i32, i32* @UNINTERESTING, align 4
  %70 = load %struct.commit*, %struct.commit** %6, align 8
  %71 = getelementptr inbounds %struct.commit, %struct.commit* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load %struct.commit*, %struct.commit** %6, align 8
  %76 = getelementptr inbounds %struct.commit, %struct.commit* %75, i32 0, i32 0
  %77 = call i32 @add_pending_object(%struct.rev_info* %10, %struct.TYPE_4__* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i64 @prepare_revision_walk(%struct.rev_info* %10)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 @die(i32 %81)
  br label %83

83:                                               ; preds = %80, %68
  br label %84

84:                                               ; preds = %100, %92, %83
  %85 = call %struct.commit* @get_revision(%struct.rev_info* %10)
  store %struct.commit* %85, %struct.commit** %9, align 8
  %86 = icmp ne %struct.commit* %85, null
  br i1 %86, label %87, label %126

87:                                               ; preds = %84
  %88 = load %struct.commit*, %struct.commit** %9, align 8
  %89 = call i32* @commit_base_at(%struct.commit_base* %12, %struct.commit* %88)
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %84

93:                                               ; preds = %87
  %94 = load %struct.commit*, %struct.commit** %9, align 8
  %95 = call i64 @commit_patch_id(%struct.commit* %94, %struct.diff_options* %11, %struct.object_id* %14, i32 0, i32 1)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 @die(i32 %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.base_tree_info*, %struct.base_tree_info** %5, align 8
  %102 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %101, i32 0, i32 1
  %103 = load %struct.object_id*, %struct.object_id** %102, align 8
  %104 = load %struct.base_tree_info*, %struct.base_tree_info** %5, align 8
  %105 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  %108 = load %struct.base_tree_info*, %struct.base_tree_info** %5, align 8
  %109 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ALLOC_GROW(%struct.object_id* %103, i32 %107, i32 %110)
  %112 = load %struct.base_tree_info*, %struct.base_tree_info** %5, align 8
  %113 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %112, i32 0, i32 1
  %114 = load %struct.object_id*, %struct.object_id** %113, align 8
  %115 = load %struct.base_tree_info*, %struct.base_tree_info** %5, align 8
  %116 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.object_id, %struct.object_id* %114, i64 %118
  store %struct.object_id* %119, %struct.object_id** %15, align 8
  %120 = load %struct.object_id*, %struct.object_id** %15, align 8
  %121 = call i32 @oidcpy(%struct.object_id* %120, %struct.object_id* %14)
  %122 = load %struct.base_tree_info*, %struct.base_tree_info** %5, align 8
  %123 = getelementptr inbounds %struct.base_tree_info, %struct.base_tree_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %84

126:                                              ; preds = %84
  %127 = call i32 @clear_commit_base(%struct.commit_base* %12)
  br label %128

128:                                              ; preds = %126, %18
  ret void
}

declare dso_local i32 @init_commit_base(%struct.commit_base*) #1

declare dso_local i32 @repo_diff_setup(i32, %struct.diff_options*) #1

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32* @commit_base_at(%struct.commit_base*, %struct.commit*) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #1

declare dso_local i64 @commit_patch_id(%struct.commit*, %struct.diff_options*, %struct.object_id*, i32, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.object_id*, i32, i32) #1

declare dso_local i32 @clear_commit_base(%struct.commit_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
