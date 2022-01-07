; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log_walk.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rev_info = type { i64, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.commit = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@the_repository = common dso_local global %struct.TYPE_5__* null, align 8
@DIFF_FORMAT_CHECKDIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*)* @cmd_log_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_log_walk(%struct.rev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %9 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @setup_early_output()
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %20 = call i64 @prepare_revision_walk(%struct.rev_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @die(i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %27 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %32 = call i32 @finish_early_output(%struct.rev_info* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %92, %33
  %38 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %39 = call %struct.commit* @get_revision(%struct.rev_info* %38)
  store %struct.commit* %39, %struct.commit** %4, align 8
  %40 = icmp ne %struct.commit* %39, null
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %43 = load %struct.commit*, %struct.commit** %4, align 8
  %44 = call i32 @log_tree_commit(%struct.rev_info* %42, %struct.commit* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %48 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %53 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %46, %41
  %57 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %58 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.commit*, %struct.commit** %4, align 8
  %66 = call i32 @free_commit_buffer(i32 %64, %struct.commit* %65)
  %67 = load %struct.commit*, %struct.commit** %4, align 8
  %68 = getelementptr inbounds %struct.commit, %struct.commit* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @free_commit_list(i32* %69)
  %71 = load %struct.commit*, %struct.commit** %4, align 8
  %72 = getelementptr inbounds %struct.commit, %struct.commit* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %61, %56
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %76 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %82 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %87 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %85
  br label %37

93:                                               ; preds = %37
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %96 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %100 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %106 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @fclose(i32 %108)
  br label %110

110:                                              ; preds = %104, %93
  %111 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %112 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @DIFF_FORMAT_CHECKDIFF, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %120 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 2, i32* %2, align 4
  br label %130

126:                                              ; preds = %118, %110
  %127 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %128 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %127, i32 0, i32 1
  %129 = call i32 @diff_result_code(%struct.TYPE_6__* %128, i32 0)
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %125
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @setup_early_output(...) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @finish_early_output(%struct.rev_info*) #1

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #1

declare dso_local i32 @log_tree_commit(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @free_commit_buffer(i32, %struct.commit*) #1

declare dso_local i32 @free_commit_list(i32*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @diff_result_code(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
