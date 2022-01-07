; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_expire_commit_graphs.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_expire_commit_graphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.write_commit_graph_context = type { i8*, i64, i8**, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dirent = type { i8* }
%struct.stat = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"/info/commit-graphs\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".graph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*)* @expire_commit_graphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expire_commit_graphs(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  %12 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %13 = call i64 @time(i32* null)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %15 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %20 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %27 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub nsw i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %25, %18, %1
  %34 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %35 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %40 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @get_chain_filename(i8* %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @unlink(i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %48 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %38, %33
  %50 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %51 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* %52)
  %54 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32* @opendir(i8* %56)
  store i32* %57, i32** %4, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %130

61:                                               ; preds = %49
  %62 = call i32 @strbuf_addch(%struct.strbuf* %3, i8 signext 47)
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %128, %97, %83, %61
  %66 = load i32*, i32** %4, align 8
  %67 = call %struct.dirent* @readdir(i32* %66)
  store %struct.dirent* %67, %struct.dirent** %5, align 8
  %68 = icmp ne %struct.dirent* %67, null
  br i1 %68, label %69, label %129

69:                                               ; preds = %65
  store i64 0, i64* %11, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @strbuf_setlen(%struct.strbuf* %3, i64 %70)
  %72 = load %struct.dirent*, %struct.dirent** %5, align 8
  %73 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* %74)
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @stat(i8* %77, %struct.stat* %9)
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %65

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %86, 6
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 -6
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88, %84
  br label %65

98:                                               ; preds = %88
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %102 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %107 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %106, i32 0, i32 2
  %108 = load i8**, i8*** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* %111, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %105
  store i64 1, i64* %11, align 8
  br label %121

117:                                              ; preds = %105
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %99

121:                                              ; preds = %116, %99
  %122 = load i64, i64* %11, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @unlink(i8* %126)
  br label %128

128:                                              ; preds = %124, %121
  br label %65

129:                                              ; preds = %65
  br label %130

130:                                              ; preds = %129, %60
  %131 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @time(i32*) #2

declare dso_local i8* @get_chain_filename(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
