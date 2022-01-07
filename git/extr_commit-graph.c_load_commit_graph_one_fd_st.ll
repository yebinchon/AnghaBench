; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_load_commit_graph_one_fd_st.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_load_commit_graph_one_fd_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graph = type { i32 }
%struct.stat = type { i32 }

@GRAPH_MIN_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"commit-graph file is too small\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_graph* @load_commit_graph_one_fd_st(i32 %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.commit_graph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.commit_graph*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.stat* %1, %struct.stat** %5, align 8
  %9 = load %struct.stat*, %struct.stat** %5, align 8
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @xsize_t(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @GRAPH_MIN_SIZE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @close(i32 %17)
  %19 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @error(i32 %19)
  store %struct.commit_graph* null, %struct.commit_graph** %3, align 8
  br label %41

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @MAP_PRIVATE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i8* @xmmap(i32* null, i64 %22, i32 %23, i32 %24, i32 %25, i32 0)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.commit_graph* @parse_commit_graph(i8* %27, i32 %28, i64 %29)
  store %struct.commit_graph* %30, %struct.commit_graph** %8, align 8
  %31 = load %struct.commit_graph*, %struct.commit_graph** %8, align 8
  %32 = icmp ne %struct.commit_graph* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @munmap(i8* %34, i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %33, %21
  %40 = load %struct.commit_graph*, %struct.commit_graph** %8, align 8
  store %struct.commit_graph* %40, %struct.commit_graph** %3, align 8
  br label %41

41:                                               ; preds = %39, %16
  %42 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  ret %struct.commit_graph* %42
}

declare dso_local i64 @xsize_t(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xmmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.commit_graph* @parse_commit_graph(i8*, i32, i64) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
