; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_paint_down_to_common.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_paint_down_to_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.repository = type { i32 }
%struct.commit = type { i32, %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.prio_queue = type { i32, i32 }

@compare_commits_by_gen_then_commit_date = common dso_local global i32 0, align 4
@GENERATION_NUMBER_INFINITY = common dso_local global i32 0, align 4
@compare_commits_by_commit_date = common dso_local global i32 0, align 4
@PARENT1 = common dso_local global i32 0, align 4
@PARENT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"bad generation skip %8x > %8x at %s\00", align 1
@STALE = common dso_local global i32 0, align 4
@RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.repository*, %struct.commit*, i32, %struct.commit**, i32)* @paint_down_to_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @paint_down_to_common(%struct.repository* %0, %struct.commit* %1, i32 %2, %struct.commit** %3, i32 %4) #0 {
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.prio_queue, align 4
  %13 = alloca %struct.commit_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.commit*, align 8
  %17 = alloca %struct.commit_list*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.commit** %3, %struct.commit*** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %12, i32 0, i32 0
  %21 = load i32, i32* @compare_commits_by_gen_then_commit_date, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %12, i32 0, i32 1
  store i32 0, i32* %22, align 4
  store %struct.commit_list* null, %struct.commit_list** %13, align 8
  %23 = load i32, i32* @GENERATION_NUMBER_INFINITY, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @compare_commits_by_commit_date, align 4
  %28 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %12, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %5
  %30 = load i32, i32* @PARENT1, align 4
  %31 = load %struct.commit*, %struct.commit** %8, align 8
  %32 = getelementptr inbounds %struct.commit, %struct.commit* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load %struct.commit*, %struct.commit** %8, align 8
  %40 = call i32 @commit_list_append(%struct.commit* %39, %struct.commit_list** %13)
  %41 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  store %struct.commit_list* %41, %struct.commit_list** %6, align 8
  br label %182

42:                                               ; preds = %29
  %43 = load %struct.commit*, %struct.commit** %8, align 8
  %44 = call i32 @prio_queue_put(%struct.prio_queue* %12, %struct.commit* %43)
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %66, %42
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load i32, i32* @PARENT2, align 4
  %51 = load %struct.commit**, %struct.commit*** %10, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.commit*, %struct.commit** %51, i64 %53
  %55 = load %struct.commit*, %struct.commit** %54, align 8
  %56 = getelementptr inbounds %struct.commit, %struct.commit* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %50
  store i32 %59, i32* %57, align 4
  %60 = load %struct.commit**, %struct.commit*** %10, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.commit*, %struct.commit** %60, i64 %62
  %64 = load %struct.commit*, %struct.commit** %63, align 8
  %65 = call i32 @prio_queue_put(%struct.prio_queue* %12, %struct.commit* %64)
  br label %66

66:                                               ; preds = %49
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %45

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %178, %69
  %71 = call i64 @queue_has_nonstale(%struct.prio_queue* %12)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %179

73:                                               ; preds = %70
  %74 = call %struct.commit* @prio_queue_get(%struct.prio_queue* %12)
  store %struct.commit* %74, %struct.commit** %16, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.commit*, %struct.commit** %16, align 8
  %79 = getelementptr inbounds %struct.commit, %struct.commit* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.commit*, %struct.commit** %16, align 8
  %85 = getelementptr inbounds %struct.commit, %struct.commit* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.commit*, %struct.commit** %16, align 8
  %89 = getelementptr inbounds %struct.commit, %struct.commit* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = call i32 @oid_to_hex(i32* %90)
  %92 = call i32 @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %83, %77, %73
  %94 = load %struct.commit*, %struct.commit** %16, align 8
  %95 = getelementptr inbounds %struct.commit, %struct.commit* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %15, align 4
  %97 = load %struct.commit*, %struct.commit** %16, align 8
  %98 = getelementptr inbounds %struct.commit, %struct.commit* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %179

103:                                              ; preds = %93
  %104 = load %struct.commit*, %struct.commit** %16, align 8
  %105 = getelementptr inbounds %struct.commit, %struct.commit* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PARENT1, align 4
  %109 = load i32, i32* @PARENT2, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @STALE, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %107, %112
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @PARENT1, align 4
  %116 = load i32, i32* @PARENT2, align 4
  %117 = or i32 %115, %116
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %103
  %120 = load %struct.commit*, %struct.commit** %16, align 8
  %121 = getelementptr inbounds %struct.commit, %struct.commit* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RESULT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* @RESULT, align 4
  %129 = load %struct.commit*, %struct.commit** %16, align 8
  %130 = getelementptr inbounds %struct.commit, %struct.commit* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 4
  %134 = load %struct.commit*, %struct.commit** %16, align 8
  %135 = call i32 @commit_list_insert_by_date(%struct.commit* %134, %struct.commit_list** %13)
  br label %136

136:                                              ; preds = %127, %119
  %137 = load i32, i32* @STALE, align 4
  %138 = load i32, i32* %18, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %18, align 4
  br label %140

140:                                              ; preds = %136, %103
  %141 = load %struct.commit*, %struct.commit** %16, align 8
  %142 = getelementptr inbounds %struct.commit, %struct.commit* %141, i32 0, i32 2
  %143 = load %struct.commit_list*, %struct.commit_list** %142, align 8
  store %struct.commit_list* %143, %struct.commit_list** %17, align 8
  br label %144

144:                                              ; preds = %169, %162, %140
  %145 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %146 = icmp ne %struct.commit_list* %145, null
  br i1 %146, label %147, label %178

147:                                              ; preds = %144
  %148 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %149 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %148, i32 0, i32 1
  %150 = load %struct.commit*, %struct.commit** %149, align 8
  store %struct.commit* %150, %struct.commit** %19, align 8
  %151 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %152 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %151, i32 0, i32 0
  %153 = load %struct.commit_list*, %struct.commit_list** %152, align 8
  store %struct.commit_list* %153, %struct.commit_list** %17, align 8
  %154 = load %struct.commit*, %struct.commit** %19, align 8
  %155 = getelementptr inbounds %struct.commit, %struct.commit* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %18, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* %18, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %147
  br label %144

163:                                              ; preds = %147
  %164 = load %struct.repository*, %struct.repository** %7, align 8
  %165 = load %struct.commit*, %struct.commit** %19, align 8
  %166 = call i64 @repo_parse_commit(%struct.repository* %164, %struct.commit* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store %struct.commit_list* null, %struct.commit_list** %6, align 8
  br label %182

169:                                              ; preds = %163
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.commit*, %struct.commit** %19, align 8
  %172 = getelementptr inbounds %struct.commit, %struct.commit* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 4
  %176 = load %struct.commit*, %struct.commit** %19, align 8
  %177 = call i32 @prio_queue_put(%struct.prio_queue* %12, %struct.commit* %176)
  br label %144

178:                                              ; preds = %144
  br label %70

179:                                              ; preds = %102, %70
  %180 = call i32 @clear_prio_queue(%struct.prio_queue* %12)
  %181 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  store %struct.commit_list* %181, %struct.commit_list** %6, align 8
  br label %182

182:                                              ; preds = %179, %168, %38
  %183 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  ret %struct.commit_list* %183
}

declare dso_local i32 @commit_list_append(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @prio_queue_put(%struct.prio_queue*, %struct.commit*) #1

declare dso_local i64 @queue_has_nonstale(%struct.prio_queue*) #1

declare dso_local %struct.commit* @prio_queue_get(%struct.prio_queue*) #1

declare dso_local i32 @BUG(i8*, i32, i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @commit_list_insert_by_date(%struct.commit*, %struct.commit_list**) #1

declare dso_local i64 @repo_parse_commit(%struct.repository*, %struct.commit*) #1

declare dso_local i32 @clear_prio_queue(%struct.prio_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
