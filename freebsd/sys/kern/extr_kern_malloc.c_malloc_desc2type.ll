; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_desc2type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_desc2type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malloc_type = type { i32, %struct.malloc_type* }

@malloc_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@kmemstatistics = common dso_local global %struct.malloc_type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.malloc_type* @malloc_desc2type(i8* %0) #0 {
  %2 = alloca %struct.malloc_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.malloc_type*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* @malloc_mtx, i32 %5)
  %7 = load %struct.malloc_type*, %struct.malloc_type** @kmemstatistics, align 8
  store %struct.malloc_type* %7, %struct.malloc_type** %4, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %10 = icmp ne %struct.malloc_type* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %13 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i32 %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  store %struct.malloc_type* %19, %struct.malloc_type** %2, align 8
  br label %26

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %23 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %22, i32 0, i32 1
  %24 = load %struct.malloc_type*, %struct.malloc_type** %23, align 8
  store %struct.malloc_type* %24, %struct.malloc_type** %4, align 8
  br label %8

25:                                               ; preds = %8
  store %struct.malloc_type* null, %struct.malloc_type** %2, align 8
  br label %26

26:                                               ; preds = %25, %18
  %27 = load %struct.malloc_type*, %struct.malloc_type** %2, align 8
  ret %struct.malloc_type* %27
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
