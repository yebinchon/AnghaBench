; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_get_reachable_subset.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_get_reachable_subset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { i64, %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.prio_queue = type { i32 }

@GENERATION_NUMBER_INFINITY = common dso_local global i64 0, align 8
@compare_commits_by_gen_then_commit_date = common dso_local global i32 0, align 4
@PARENT1 = common dso_local global i32 0, align 4
@PARENT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @get_reachable_subset(%struct.commit** %0, i32 %1, %struct.commit** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.commit**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit**, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.commit_list*, align 8
  %14 = alloca %struct.commit**, align 8
  %15 = alloca %struct.commit**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.prio_queue, align 4
  %19 = alloca %struct.commit*, align 8
  %20 = alloca %struct.commit*, align 8
  %21 = alloca %struct.commit_list*, align 8
  %22 = alloca %struct.commit*, align 8
  store %struct.commit** %0, %struct.commit*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.commit** %2, %struct.commit*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.commit_list* null, %struct.commit_list** %13, align 8
  %23 = load %struct.commit**, %struct.commit*** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.commit*, %struct.commit** %23, i64 %25
  store %struct.commit** %26, %struct.commit*** %14, align 8
  %27 = load %struct.commit**, %struct.commit*** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.commit*, %struct.commit** %27, i64 %29
  store %struct.commit** %30, %struct.commit*** %15, align 8
  %31 = load i64, i64* @GENERATION_NUMBER_INFINITY, align 8
  store i64 %31, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %32 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %18, i32 0, i32 0
  %33 = load i32, i32* @compare_commits_by_gen_then_commit_date, align 4
  store i32 %33, i32* %32, align 4
  %34 = load %struct.commit**, %struct.commit*** %8, align 8
  store %struct.commit** %34, %struct.commit*** %11, align 8
  br label %35

35:                                               ; preds = %71, %5
  %36 = load %struct.commit**, %struct.commit*** %11, align 8
  %37 = load %struct.commit**, %struct.commit*** %14, align 8
  %38 = icmp ult %struct.commit** %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load %struct.commit**, %struct.commit*** %11, align 8
  %41 = load %struct.commit*, %struct.commit** %40, align 8
  store %struct.commit* %41, %struct.commit** %19, align 8
  %42 = load %struct.commit*, %struct.commit** %19, align 8
  %43 = call i32 @parse_commit(%struct.commit* %42)
  %44 = load %struct.commit*, %struct.commit** %19, align 8
  %45 = getelementptr inbounds %struct.commit, %struct.commit* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %16, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.commit*, %struct.commit** %19, align 8
  %51 = getelementptr inbounds %struct.commit, %struct.commit* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %16, align 8
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.commit*, %struct.commit** %19, align 8
  %55 = getelementptr inbounds %struct.commit, %struct.commit* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PARENT1, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @PARENT1, align 4
  %63 = load %struct.commit*, %struct.commit** %19, align 8
  %64 = getelementptr inbounds %struct.commit, %struct.commit* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %61, %53
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.commit**, %struct.commit*** %11, align 8
  %73 = getelementptr inbounds %struct.commit*, %struct.commit** %72, i32 1
  store %struct.commit** %73, %struct.commit*** %11, align 8
  br label %35

74:                                               ; preds = %35
  %75 = load %struct.commit**, %struct.commit*** %6, align 8
  store %struct.commit** %75, %struct.commit*** %11, align 8
  br label %76

76:                                               ; preds = %103, %74
  %77 = load %struct.commit**, %struct.commit*** %11, align 8
  %78 = load %struct.commit**, %struct.commit*** %15, align 8
  %79 = icmp ult %struct.commit** %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %76
  %81 = load %struct.commit**, %struct.commit*** %11, align 8
  %82 = load %struct.commit*, %struct.commit** %81, align 8
  store %struct.commit* %82, %struct.commit** %20, align 8
  %83 = load %struct.commit*, %struct.commit** %20, align 8
  %84 = getelementptr inbounds %struct.commit, %struct.commit* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PARENT2, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %80
  %91 = load i32, i32* @PARENT2, align 4
  %92 = load %struct.commit*, %struct.commit** %20, align 8
  %93 = getelementptr inbounds %struct.commit, %struct.commit* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 8
  %97 = load %struct.commit*, %struct.commit** %20, align 8
  %98 = call i32 @parse_commit(%struct.commit* %97)
  %99 = load %struct.commit**, %struct.commit*** %11, align 8
  %100 = load %struct.commit*, %struct.commit** %99, align 8
  %101 = call i32 @prio_queue_put(%struct.prio_queue* %18, %struct.commit* %100)
  br label %102

102:                                              ; preds = %90, %80
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.commit**, %struct.commit*** %11, align 8
  %105 = getelementptr inbounds %struct.commit*, %struct.commit** %104, i32 1
  store %struct.commit** %105, %struct.commit*** %11, align 8
  br label %76

106:                                              ; preds = %76
  br label %107

107:                                              ; preds = %182, %106
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = call %struct.commit* @prio_queue_get(%struct.prio_queue* %18)
  store %struct.commit* %111, %struct.commit** %12, align 8
  %112 = icmp ne %struct.commit* %111, null
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i1 [ false, %107 ], [ %112, %110 ]
  br i1 %114, label %115, label %183

115:                                              ; preds = %113
  %116 = load %struct.commit*, %struct.commit** %12, align 8
  %117 = getelementptr inbounds %struct.commit, %struct.commit* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PARENT1, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %115
  %124 = load i32, i32* @PARENT1, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.commit*, %struct.commit** %12, align 8
  %127 = getelementptr inbounds %struct.commit, %struct.commit* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.commit*, %struct.commit** %12, align 8
  %133 = getelementptr inbounds %struct.commit, %struct.commit* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 8
  %137 = load %struct.commit*, %struct.commit** %12, align 8
  %138 = call i32 @commit_list_insert(%struct.commit* %137, %struct.commit_list** %13)
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %17, align 4
  br label %141

141:                                              ; preds = %123, %115
  %142 = load %struct.commit*, %struct.commit** %12, align 8
  %143 = getelementptr inbounds %struct.commit, %struct.commit* %142, i32 0, i32 2
  %144 = load %struct.commit_list*, %struct.commit_list** %143, align 8
  store %struct.commit_list* %144, %struct.commit_list** %21, align 8
  br label %145

145:                                              ; preds = %178, %141
  %146 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %147 = icmp ne %struct.commit_list* %146, null
  br i1 %147, label %148, label %182

148:                                              ; preds = %145
  %149 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %150 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %149, i32 0, i32 0
  %151 = load %struct.commit*, %struct.commit** %150, align 8
  store %struct.commit* %151, %struct.commit** %22, align 8
  %152 = load %struct.commit*, %struct.commit** %22, align 8
  %153 = call i32 @parse_commit(%struct.commit* %152)
  %154 = load %struct.commit*, %struct.commit** %22, align 8
  %155 = getelementptr inbounds %struct.commit, %struct.commit* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %16, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %178

160:                                              ; preds = %148
  %161 = load %struct.commit*, %struct.commit** %22, align 8
  %162 = getelementptr inbounds %struct.commit, %struct.commit* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @PARENT2, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %178

169:                                              ; preds = %160
  %170 = load i32, i32* @PARENT2, align 4
  %171 = load %struct.commit*, %struct.commit** %22, align 8
  %172 = getelementptr inbounds %struct.commit, %struct.commit* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 8
  %176 = load %struct.commit*, %struct.commit** %22, align 8
  %177 = call i32 @prio_queue_put(%struct.prio_queue* %18, %struct.commit* %176)
  br label %178

178:                                              ; preds = %169, %168, %159
  %179 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %180 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %179, i32 0, i32 1
  %181 = load %struct.commit_list*, %struct.commit_list** %180, align 8
  store %struct.commit_list* %181, %struct.commit_list** %21, align 8
  br label %145

182:                                              ; preds = %145
  br label %107

183:                                              ; preds = %113
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.commit**, %struct.commit*** %8, align 8
  %186 = load i32, i32* @PARENT1, align 4
  %187 = call i32 @clear_commit_marks_many(i32 %184, %struct.commit** %185, i32 %186)
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.commit**, %struct.commit*** %6, align 8
  %190 = load i32, i32* @PARENT2, align 4
  %191 = call i32 @clear_commit_marks_many(i32 %188, %struct.commit** %189, i32 %190)
  %192 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  ret %struct.commit_list* %192
}

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @prio_queue_put(%struct.prio_queue*, %struct.commit*) #1

declare dso_local %struct.commit* @prio_queue_get(%struct.prio_queue*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @clear_commit_marks_many(i32, %struct.commit**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
