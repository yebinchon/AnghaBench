; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_init_top.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_init_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@PINUSE_BIT = common dso_local global i64 0, align 8
@TOP_FOOT_SIZE = common dso_local global i32 0, align 4
@mparams = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i64)* @init_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_top(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = call i32 @chunk2mem(%struct.TYPE_10__* %8)
  %10 = call i64 @align_offset(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = bitcast %struct.TYPE_10__* %11 to i8*
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %17, %16
  store i64 %18, i64* %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @PINUSE_BIT, align 8
  %27 = or i64 %25, %26
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @TOP_FOOT_SIZE, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.TYPE_12__* @chunk_plus_offset(%struct.TYPE_10__* %31, i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mparams, i32 0, i32 0), align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  ret void
}

declare dso_local i64 @align_offset(i32) #1

declare dso_local i32 @chunk2mem(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @chunk_plus_offset(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
