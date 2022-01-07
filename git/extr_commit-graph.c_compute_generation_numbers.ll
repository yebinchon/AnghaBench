; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_compute_generation_numbers.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_compute_generation_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, %struct.commit** }
%struct.commit = type { i64, %struct.commit_list* }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }

@.str = private unnamed_addr constant [42 x i8] c"Computing commit graph generation numbers\00", align 1
@GENERATION_NUMBER_INFINITY = common dso_local global i64 0, align 8
@GENERATION_NUMBER_ZERO = common dso_local global i64 0, align 8
@GENERATION_NUMBER_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*)* @compute_generation_numbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_generation_numbers(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  store %struct.commit_list* null, %struct.commit_list** %4, align 8
  %9 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %10 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %16 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @start_progress(i32 %14, i32 %18)
  %20 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %21 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %13, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %148, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %26 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %151

30:                                               ; preds = %23
  %31 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %32 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @display_progress(i32 %33, i32 %35)
  %37 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %38 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.commit**, %struct.commit*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.commit*, %struct.commit** %40, i64 %42
  %44 = load %struct.commit*, %struct.commit** %43, align 8
  %45 = getelementptr inbounds %struct.commit, %struct.commit* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @GENERATION_NUMBER_INFINITY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %30
  %50 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %51 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.commit**, %struct.commit*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.commit*, %struct.commit** %53, i64 %55
  %57 = load %struct.commit*, %struct.commit** %56, align 8
  %58 = getelementptr inbounds %struct.commit, %struct.commit* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GENERATION_NUMBER_ZERO, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %148

63:                                               ; preds = %49, %30
  %64 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %65 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load %struct.commit**, %struct.commit*** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.commit*, %struct.commit** %67, i64 %69
  %71 = load %struct.commit*, %struct.commit** %70, align 8
  %72 = call i32 @commit_list_insert(%struct.commit* %71, %struct.commit_list** %4)
  br label %73

73:                                               ; preds = %146, %63
  %74 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %75 = icmp ne %struct.commit_list* %74, null
  br i1 %75, label %76, label %147

76:                                               ; preds = %73
  %77 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %78 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %77, i32 0, i32 0
  %79 = load %struct.commit*, %struct.commit** %78, align 8
  store %struct.commit* %79, %struct.commit** %5, align 8
  store i32 1, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %80 = load %struct.commit*, %struct.commit** %5, align 8
  %81 = getelementptr inbounds %struct.commit, %struct.commit* %80, i32 0, i32 1
  %82 = load %struct.commit_list*, %struct.commit_list** %81, align 8
  store %struct.commit_list* %82, %struct.commit_list** %6, align 8
  br label %83

83:                                               ; preds = %123, %76
  %84 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %85 = icmp ne %struct.commit_list* %84, null
  br i1 %85, label %86, label %127

86:                                               ; preds = %83
  %87 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %88 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %87, i32 0, i32 0
  %89 = load %struct.commit*, %struct.commit** %88, align 8
  %90 = getelementptr inbounds %struct.commit, %struct.commit* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @GENERATION_NUMBER_INFINITY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %86
  %95 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %96 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %95, i32 0, i32 0
  %97 = load %struct.commit*, %struct.commit** %96, align 8
  %98 = getelementptr inbounds %struct.commit, %struct.commit* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @GENERATION_NUMBER_ZERO, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %94, %86
  store i32 0, i32* %7, align 4
  %103 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %104 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %103, i32 0, i32 0
  %105 = load %struct.commit*, %struct.commit** %104, align 8
  %106 = call i32 @commit_list_insert(%struct.commit* %105, %struct.commit_list** %4)
  br label %127

107:                                              ; preds = %94
  %108 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %109 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %108, i32 0, i32 0
  %110 = load %struct.commit*, %struct.commit** %109, align 8
  %111 = getelementptr inbounds %struct.commit, %struct.commit* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %117 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %116, i32 0, i32 0
  %118 = load %struct.commit*, %struct.commit** %117, align 8
  %119 = getelementptr inbounds %struct.commit, %struct.commit* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %115, %107
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %125 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %124, i32 0, i32 1
  %126 = load %struct.commit_list*, %struct.commit_list** %125, align 8
  store %struct.commit_list* %126, %struct.commit_list** %6, align 8
  br label %83

127:                                              ; preds = %102, %83
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %127
  %131 = load i64, i64* %8, align 8
  %132 = add nsw i64 %131, 1
  %133 = load %struct.commit*, %struct.commit** %5, align 8
  %134 = getelementptr inbounds %struct.commit, %struct.commit* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = call i32 @pop_commit(%struct.commit_list** %4)
  %136 = load %struct.commit*, %struct.commit** %5, align 8
  %137 = getelementptr inbounds %struct.commit, %struct.commit* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @GENERATION_NUMBER_MAX, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %130
  %142 = load i64, i64* @GENERATION_NUMBER_MAX, align 8
  %143 = load %struct.commit*, %struct.commit** %5, align 8
  %144 = getelementptr inbounds %struct.commit, %struct.commit* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %130
  br label %146

146:                                              ; preds = %145, %127
  br label %73

147:                                              ; preds = %73
  br label %148

148:                                              ; preds = %147, %62
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %23

151:                                              ; preds = %23
  %152 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %153 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %152, i32 0, i32 0
  %154 = call i32 @stop_progress(i32* %153)
  ret void
}

declare dso_local i32 @start_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @pop_commit(%struct.commit_list**) #1

declare dso_local i32 @stop_progress(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
