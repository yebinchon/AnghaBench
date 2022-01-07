; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_split_graph_merge_strategy.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_split_graph_merge_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { i32, i32, i8*, i8**, %struct.TYPE_8__*, i32*, i8**, %struct.commit_graph*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.commit_graph* }
%struct.commit_graph = type { i32, %struct.commit_graph*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*)* @split_graph_merge_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_graph_merge_strategy(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca %struct.commit_graph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %9 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %10 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %9, i32 0, i32 9
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %15 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %14, i32 0, i32 9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %20 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %19, i32 0, i32 9
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %26 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %25, i32 0, i32 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.commit_graph*, %struct.commit_graph** %30, align 8
  store %struct.commit_graph* %31, %struct.commit_graph** %3, align 8
  %32 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %33 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  %36 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %37 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %41 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %76, %24
  %43 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %44 = icmp ne %struct.commit_graph* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %47 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %4, align 4
  %51 = mul nsw i32 %49, %50
  %52 = icmp sle i32 %48, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br label %62

62:                                               ; preds = %60, %45
  %63 = phi i1 [ true, %45 ], [ %61, %60 ]
  br label %64

64:                                               ; preds = %62, %42
  %65 = phi i1 [ false, %42 ], [ %63, %62 ]
  br i1 %65, label %66, label %89

66:                                               ; preds = %64
  %67 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %68 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %71 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i32 %69, i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %89

76:                                               ; preds = %66
  %77 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %78 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %83 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %82, i32 0, i32 1
  %84 = load %struct.commit_graph*, %struct.commit_graph** %83, align 8
  store %struct.commit_graph* %84, %struct.commit_graph** %3, align 8
  %85 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %86 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  br label %42

89:                                               ; preds = %75, %64
  %90 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %91 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %92 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %91, i32 0, i32 7
  store %struct.commit_graph* %90, %struct.commit_graph** %92, align 8
  %93 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %94 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %125

97:                                               ; preds = %89
  %98 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %99 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @get_commit_graph_filename(i32 %100)
  store i8* %101, i8** %8, align 8
  %102 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %103 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @strcmp(i32 %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %97
  %109 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %110 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %113 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @strcmp(i32 %111, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %119 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %121 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %120, i32 0, i32 7
  store %struct.commit_graph* null, %struct.commit_graph** %121, align 8
  br label %122

122:                                              ; preds = %117, %108, %97
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @free(i8* %123)
  br label %125

125:                                              ; preds = %122, %89
  %126 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %127 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %126, i32 0, i32 6
  %128 = load i8**, i8*** %127, align 8
  %129 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %130 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ALLOC_ARRAY(i8** %128, i32 %131)
  %133 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %134 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %133, i32 0, i32 3
  %135 = load i8**, i8*** %134, align 8
  %136 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %137 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ALLOC_ARRAY(i8** %135, i32 %138)
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %169, %125
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %143 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %149 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %147, %150
  br label %152

152:                                              ; preds = %146, %140
  %153 = phi i1 [ false, %140 ], [ %151, %146 ]
  br i1 %153, label %154, label %172

154:                                              ; preds = %152
  %155 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %156 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @xstrdup(i32 %161)
  %163 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %164 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %163, i32 0, i32 6
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  store i8* %162, i8** %168, align 8
  br label %169

169:                                              ; preds = %154
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %140

172:                                              ; preds = %152
  %173 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %174 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  %177 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %178 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %177, i32 0, i32 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load %struct.commit_graph*, %struct.commit_graph** %182, align 8
  store %struct.commit_graph* %183, %struct.commit_graph** %3, align 8
  br label %184

184:                                              ; preds = %204, %172
  %185 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %186 = icmp ne %struct.commit_graph* %185, null
  br i1 %186, label %187, label %210

187:                                              ; preds = %184
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %190 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %187
  %194 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %195 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %194, i32 0, i32 2
  %196 = call i32 @oid_to_hex(i32* %195)
  %197 = call i8* @xstrdup(i32 %196)
  %198 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %199 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %198, i32 0, i32 3
  %200 = load i8**, i8*** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %197, i8** %203, align 8
  br label %204

204:                                              ; preds = %193, %187
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %5, align 4
  %207 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %208 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %207, i32 0, i32 1
  %209 = load %struct.commit_graph*, %struct.commit_graph** %208, align 8
  store %struct.commit_graph* %209, %struct.commit_graph** %3, align 8
  br label %184

210:                                              ; preds = %184
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @get_commit_graph_filename(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ALLOC_ARRAY(i8**, i32) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
