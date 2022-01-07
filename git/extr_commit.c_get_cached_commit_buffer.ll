; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_get_cached_commit_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_get_cached_commit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.commit = type { i32 }
%struct.commit_buffer = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_cached_commit_buffer(%struct.repository* %0, %struct.commit* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.commit_buffer*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.repository*, %struct.repository** %5, align 8
  %10 = getelementptr inbounds %struct.repository, %struct.repository* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.commit*, %struct.commit** %6, align 8
  %15 = call %struct.commit_buffer* @buffer_slab_peek(i32 %13, %struct.commit* %14)
  store %struct.commit_buffer* %15, %struct.commit_buffer** %8, align 8
  %16 = load %struct.commit_buffer*, %struct.commit_buffer** %8, align 8
  %17 = icmp ne %struct.commit_buffer* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i64*, i64** %7, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64*, i64** %7, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  store i8* null, i8** %4, align 8
  br label %36

24:                                               ; preds = %3
  %25 = load i64*, i64** %7, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.commit_buffer*, %struct.commit_buffer** %8, align 8
  %29 = getelementptr inbounds %struct.commit_buffer, %struct.commit_buffer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.commit_buffer*, %struct.commit_buffer** %8, align 8
  %34 = getelementptr inbounds %struct.commit_buffer, %struct.commit_buffer* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i8*, i8** %4, align 8
  ret i8* %37
}

declare dso_local %struct.commit_buffer* @buffer_slab_peek(i32, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
