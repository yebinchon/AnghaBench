; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_sort_in_topological_order.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_sort_in_topological_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.commit_list* }
%struct.indegree_slab = type { i32 }
%struct.prio_queue = type { %struct.author_date_slab*, i32* }
%struct.author_date_slab = type { i32 }
%struct.TYPE_2__ = type { %struct.commit_list* }

@compare_commits_by_commit_date = common dso_local global i32* null, align 8
@compare_commits_by_author_date = common dso_local global i32* null, align 8
@REV_SORT_IN_GRAPH_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_in_topological_order(%struct.commit_list** %0, i32 %1) #0 {
  %3 = alloca %struct.commit_list**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit_list**, align 8
  %8 = alloca %struct.indegree_slab, align 4
  %9 = alloca %struct.prio_queue, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca %struct.author_date_slab, align 4
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.commit_list*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.commit*, align 8
  %17 = alloca %struct.commit_list*, align 8
  %18 = alloca %struct.commit*, align 8
  %19 = alloca i32*, align 8
  store %struct.commit_list** %0, %struct.commit_list*** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  %21 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  store %struct.commit_list* %21, %struct.commit_list** %6, align 8
  %22 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %23 = icmp ne %struct.commit_list* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %176

25:                                               ; preds = %2
  %26 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  store %struct.commit_list* null, %struct.commit_list** %26, align 8
  %27 = call i32 @init_indegree_slab(%struct.indegree_slab* %8)
  %28 = call i32 @memset(%struct.prio_queue* %9, i8 signext 0, i32 16)
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %30 [
    i32 128, label %32
    i32 129, label %35
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %9, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %40

32:                                               ; preds = %25
  %33 = load i32*, i32** @compare_commits_by_commit_date, align 8
  %34 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %9, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  br label %40

35:                                               ; preds = %25
  %36 = call i32 @init_author_date_slab(%struct.author_date_slab* %11)
  %37 = load i32*, i32** @compare_commits_by_author_date, align 8
  %38 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %9, i32 0, i32 1
  store i32* %37, i32** %38, align 8
  %39 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %9, i32 0, i32 0
  store %struct.author_date_slab* %11, %struct.author_date_slab** %39, align 8
  br label %40

40:                                               ; preds = %35, %32, %30
  %41 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %41, %struct.commit_list** %5, align 8
  br label %42

42:                                               ; preds = %57, %40
  %43 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %44 = icmp ne %struct.commit_list* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %47 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %46, i32 0, i32 0
  %48 = load %struct.commit*, %struct.commit** %47, align 8
  store %struct.commit* %48, %struct.commit** %12, align 8
  %49 = load %struct.commit*, %struct.commit** %12, align 8
  %50 = call i32* @indegree_slab_at(%struct.indegree_slab* %8, %struct.commit* %49)
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 129
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.commit*, %struct.commit** %12, align 8
  %55 = call i32 @record_author_date(%struct.author_date_slab* %11, %struct.commit* %54)
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %59 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %58, i32 0, i32 1
  %60 = load %struct.commit_list*, %struct.commit_list** %59, align 8
  store %struct.commit_list* %60, %struct.commit_list** %5, align 8
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %62, %struct.commit_list** %5, align 8
  br label %63

63:                                               ; preds = %93, %61
  %64 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %65 = icmp ne %struct.commit_list* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %68 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %67, i32 0, i32 0
  %69 = load %struct.commit*, %struct.commit** %68, align 8
  %70 = getelementptr inbounds %struct.commit, %struct.commit* %69, i32 0, i32 0
  %71 = load %struct.commit_list*, %struct.commit_list** %70, align 8
  store %struct.commit_list* %71, %struct.commit_list** %13, align 8
  br label %72

72:                                               ; preds = %88, %66
  %73 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %74 = icmp ne %struct.commit_list* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %77 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %76, i32 0, i32 0
  %78 = load %struct.commit*, %struct.commit** %77, align 8
  store %struct.commit* %78, %struct.commit** %14, align 8
  %79 = load %struct.commit*, %struct.commit** %14, align 8
  %80 = call i32* @indegree_slab_at(%struct.indegree_slab* %8, %struct.commit* %79)
  store i32* %80, i32** %15, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %84, %75
  %89 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %90 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %89, i32 0, i32 1
  %91 = load %struct.commit_list*, %struct.commit_list** %90, align 8
  store %struct.commit_list* %91, %struct.commit_list** %13, align 8
  br label %72

92:                                               ; preds = %72
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %95 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %94, i32 0, i32 1
  %96 = load %struct.commit_list*, %struct.commit_list** %95, align 8
  store %struct.commit_list* %96, %struct.commit_list** %5, align 8
  br label %63

97:                                               ; preds = %63
  %98 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %98, %struct.commit_list** %5, align 8
  br label %99

99:                                               ; preds = %114, %97
  %100 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %101 = icmp ne %struct.commit_list* %100, null
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %104 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %103, i32 0, i32 0
  %105 = load %struct.commit*, %struct.commit** %104, align 8
  store %struct.commit* %105, %struct.commit** %16, align 8
  %106 = load %struct.commit*, %struct.commit** %16, align 8
  %107 = call i32* @indegree_slab_at(%struct.indegree_slab* %8, %struct.commit* %106)
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load %struct.commit*, %struct.commit** %16, align 8
  %112 = call i32 @prio_queue_put(%struct.prio_queue* %9, %struct.commit* %111)
  br label %113

113:                                              ; preds = %110, %102
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %116 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %115, i32 0, i32 1
  %117 = load %struct.commit_list*, %struct.commit_list** %116, align 8
  store %struct.commit_list* %117, %struct.commit_list** %5, align 8
  br label %99

118:                                              ; preds = %99
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @REV_SORT_IN_GRAPH_ORDER, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 @prio_queue_reverse(%struct.prio_queue* %9)
  br label %124

124:                                              ; preds = %122, %118
  %125 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %126 = call i32 @free_commit_list(%struct.commit_list* %125)
  %127 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  store %struct.commit_list** %127, %struct.commit_list*** %7, align 8
  %128 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  store %struct.commit_list* null, %struct.commit_list** %128, align 8
  br label %129

129:                                              ; preds = %162, %124
  %130 = call %struct.commit* @prio_queue_get(%struct.prio_queue* %9)
  store %struct.commit* %130, %struct.commit** %10, align 8
  %131 = icmp ne %struct.commit* %130, null
  br i1 %131, label %132, label %169

132:                                              ; preds = %129
  %133 = load %struct.commit*, %struct.commit** %10, align 8
  %134 = getelementptr inbounds %struct.commit, %struct.commit* %133, i32 0, i32 0
  %135 = load %struct.commit_list*, %struct.commit_list** %134, align 8
  store %struct.commit_list* %135, %struct.commit_list** %17, align 8
  br label %136

136:                                              ; preds = %158, %132
  %137 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %138 = icmp ne %struct.commit_list* %137, null
  br i1 %138, label %139, label %162

139:                                              ; preds = %136
  %140 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %141 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %140, i32 0, i32 0
  %142 = load %struct.commit*, %struct.commit** %141, align 8
  store %struct.commit* %142, %struct.commit** %18, align 8
  %143 = load %struct.commit*, %struct.commit** %18, align 8
  %144 = call i32* @indegree_slab_at(%struct.indegree_slab* %8, %struct.commit* %143)
  store i32* %144, i32** %19, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %139
  br label %158

149:                                              ; preds = %139
  %150 = load i32*, i32** %19, align 8
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %150, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.commit*, %struct.commit** %18, align 8
  %156 = call i32 @prio_queue_put(%struct.prio_queue* %9, %struct.commit* %155)
  br label %157

157:                                              ; preds = %154, %149
  br label %158

158:                                              ; preds = %157, %148
  %159 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %160 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %159, i32 0, i32 1
  %161 = load %struct.commit_list*, %struct.commit_list** %160, align 8
  store %struct.commit_list* %161, %struct.commit_list** %17, align 8
  br label %136

162:                                              ; preds = %136
  %163 = load %struct.commit*, %struct.commit** %10, align 8
  %164 = call i32* @indegree_slab_at(%struct.indegree_slab* %8, %struct.commit* %163)
  store i32 0, i32* %164, align 4
  %165 = load %struct.commit*, %struct.commit** %10, align 8
  %166 = load %struct.commit_list**, %struct.commit_list*** %7, align 8
  %167 = call %struct.TYPE_2__* @commit_list_insert(%struct.commit* %165, %struct.commit_list** %166)
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store %struct.commit_list** %168, %struct.commit_list*** %7, align 8
  br label %129

169:                                              ; preds = %129
  %170 = call i32 @clear_indegree_slab(%struct.indegree_slab* %8)
  %171 = call i32 @clear_prio_queue(%struct.prio_queue* %9)
  %172 = load i32, i32* %4, align 4
  %173 = icmp eq i32 %172, 129
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = call i32 @clear_author_date_slab(%struct.author_date_slab* %11)
  br label %176

176:                                              ; preds = %24, %174, %169
  ret void
}

declare dso_local i32 @init_indegree_slab(%struct.indegree_slab*) #1

declare dso_local i32 @memset(%struct.prio_queue*, i8 signext, i32) #1

declare dso_local i32 @init_author_date_slab(%struct.author_date_slab*) #1

declare dso_local i32* @indegree_slab_at(%struct.indegree_slab*, %struct.commit*) #1

declare dso_local i32 @record_author_date(%struct.author_date_slab*, %struct.commit*) #1

declare dso_local i32 @prio_queue_put(%struct.prio_queue*, %struct.commit*) #1

declare dso_local i32 @prio_queue_reverse(%struct.prio_queue*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local %struct.commit* @prio_queue_get(%struct.prio_queue*) #1

declare dso_local %struct.TYPE_2__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @clear_indegree_slab(%struct.indegree_slab*) #1

declare dso_local i32 @clear_prio_queue(%struct.prio_queue*) #1

declare dso_local i32 @clear_author_date_slab(%struct.author_date_slab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
