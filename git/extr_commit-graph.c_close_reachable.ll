; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_close_reachable.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_close_reachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { i8*, %struct.TYPE_3__, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.commit = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Loading known commits in commit graph\00", align 1
@REACHABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Expanding reachable commits in commit graph\00", align 1
@COMMIT_NOT_FROM_GRAPH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Clearing commit marks in commit graph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*)* @close_reachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_reachable(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  %5 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %6 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %12 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @start_delayed_progress(i32 %10, i32 %14)
  %16 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %17 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %22 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %28 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @display_progress(i8* %29, i32 %31)
  %33 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %34 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %37 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call %struct.commit* @lookup_commit(i32 %35, i32* %42)
  store %struct.commit* %43, %struct.commit** %4, align 8
  %44 = load %struct.commit*, %struct.commit** %4, align 8
  %45 = icmp ne %struct.commit* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %26
  %47 = load i32, i32* @REACHABLE, align 4
  %48 = load %struct.commit*, %struct.commit** %4, align 8
  %49 = getelementptr inbounds %struct.commit, %struct.commit* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %26
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %59 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %58, i32 0, i32 0
  %60 = call i32 @stop_progress(i8** %59)
  %61 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %62 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i8* @start_delayed_progress(i32 %66, i32 0)
  %68 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %69 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %65, %57
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %129, %70
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %74 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %132

78:                                               ; preds = %71
  %79 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %80 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @display_progress(i8* %81, i32 %83)
  %85 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %86 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %89 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call %struct.commit* @lookup_commit(i32 %87, i32* %94)
  store %struct.commit* %95, %struct.commit** %4, align 8
  %96 = load %struct.commit*, %struct.commit** %4, align 8
  %97 = icmp ne %struct.commit* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %78
  br label %129

99:                                               ; preds = %78
  %100 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %101 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load %struct.commit*, %struct.commit** %4, align 8
  %106 = call i32 @parse_commit(%struct.commit* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %104
  %109 = load %struct.commit*, %struct.commit** %4, align 8
  %110 = getelementptr inbounds %struct.commit, %struct.commit* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @COMMIT_NOT_FROM_GRAPH, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %116 = load %struct.commit*, %struct.commit** %4, align 8
  %117 = call i32 @add_missing_parents(%struct.write_commit_graph_context* %115, %struct.commit* %116)
  br label %118

118:                                              ; preds = %114, %108, %104
  br label %128

119:                                              ; preds = %99
  %120 = load %struct.commit*, %struct.commit** %4, align 8
  %121 = call i32 @parse_commit_no_graph(%struct.commit* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %125 = load %struct.commit*, %struct.commit** %4, align 8
  %126 = call i32 @add_missing_parents(%struct.write_commit_graph_context* %124, %struct.commit* %125)
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %127, %118
  br label %129

129:                                              ; preds = %128, %98
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %71

132:                                              ; preds = %71
  %133 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %134 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %133, i32 0, i32 0
  %135 = call i32 @stop_progress(i8** %134)
  %136 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %137 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %132
  %141 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %142 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %143 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @start_delayed_progress(i32 %141, i32 %145)
  %147 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %148 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %140, %132
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %186, %149
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %153 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %151, %155
  br i1 %156, label %157, label %189

157:                                              ; preds = %150
  %158 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %159 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  %163 = call i32 @display_progress(i8* %160, i32 %162)
  %164 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %165 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %168 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %3, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call %struct.commit* @lookup_commit(i32 %166, i32* %173)
  store %struct.commit* %174, %struct.commit** %4, align 8
  %175 = load %struct.commit*, %struct.commit** %4, align 8
  %176 = icmp ne %struct.commit* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %157
  %178 = load i32, i32* @REACHABLE, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.commit*, %struct.commit** %4, align 8
  %181 = getelementptr inbounds %struct.commit, %struct.commit* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %179
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %177, %157
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  br label %150

189:                                              ; preds = %150
  %190 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %191 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %190, i32 0, i32 0
  %192 = call i32 @stop_progress(i8** %191)
  ret void
}

declare dso_local i8* @start_delayed_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @display_progress(i8*, i32) #1

declare dso_local %struct.commit* @lookup_commit(i32, i32*) #1

declare dso_local i32 @stop_progress(i8**) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @add_missing_parents(%struct.write_commit_graph_context*, %struct.commit*) #1

declare dso_local i32 @parse_commit_no_graph(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
