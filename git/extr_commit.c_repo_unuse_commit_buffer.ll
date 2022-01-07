; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_repo_unuse_commit_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_repo_unuse_commit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.commit = type { i32 }
%struct.commit_buffer = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repo_unuse_commit_buffer(%struct.repository* %0, %struct.commit* %1, i8* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.commit_buffer*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.repository*, %struct.repository** %4, align 8
  %9 = getelementptr inbounds %struct.repository, %struct.repository* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.commit*, %struct.commit** %5, align 8
  %14 = call %struct.commit_buffer* @buffer_slab_peek(i32 %12, %struct.commit* %13)
  store %struct.commit_buffer* %14, %struct.commit_buffer** %7, align 8
  %15 = load %struct.commit_buffer*, %struct.commit_buffer** %7, align 8
  %16 = icmp ne %struct.commit_buffer* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.commit_buffer*, %struct.commit_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.commit_buffer, %struct.commit_buffer* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17, %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @free(i8* %24)
  br label %26

26:                                               ; preds = %23, %17
  ret void
}

declare dso_local %struct.commit_buffer* @buffer_slab_peek(i32, %struct.commit*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
