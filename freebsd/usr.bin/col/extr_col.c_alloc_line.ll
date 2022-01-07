; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/col/extr_col.c_alloc_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/col/extr_col.c_alloc_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@line_freelist = common dso_local global %struct.TYPE_6__* null, align 8
@NALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @alloc_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @alloc_line() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @line_freelist, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @NALLOC, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 8, %7
  %9 = trunc i64 %8 to i32
  %10 = call %struct.TYPE_6__* @realloc(i32* null, i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %1, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = call i32 @err(i32 1, i32* null)
  br label %14

14:                                               ; preds = %12, %5
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** @line_freelist, align 8
  store i32 1, i32* %2, align 4
  br label %16

16:                                               ; preds = %25, %14
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @NALLOC, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 1
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %1, align 8
  br label %16

30:                                               ; preds = %16
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %32, align 8
  br label %33

33:                                               ; preds = %30, %0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @line_freelist, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %1, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** @line_freelist, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %39 = call i32 @memset(%struct.TYPE_6__* %38, i32 0, i32 8)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %40
}

declare dso_local %struct.TYPE_6__* @realloc(i32*, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
