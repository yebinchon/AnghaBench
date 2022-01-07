; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_slab_alloc_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_slab_alloc_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i8*, i32, %struct.TYPE_10__* }

@SLAB_SETSIZE = common dso_local global i32 0, align 4
@us_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, %struct.TYPE_9__*)* @slab_alloc_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slab_alloc_item(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp eq %struct.TYPE_10__* %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @MPASS(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call i32 @KEG_LOCK_ASSERT(%struct.TYPE_10__* %15)
  %17 = load i32, i32* @SLAB_SETSIZE, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = call i32 @BIT_FFS(i32 %17, i32* %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @SLAB_SETSIZE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = call i32 @BIT_CLR(i32 %22, i32 %23, i32* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %29, i64 %35
  store i8* %36, i8** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = load i32, i32* @us_link, align 4
  %52 = call i32 @LIST_REMOVE(%struct.TYPE_9__* %50, i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %58
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %5, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = load i32, i32* @us_link, align 4
  %64 = call i32 @LIST_INSERT_HEAD(i32* %61, %struct.TYPE_9__* %62, i32 %63)
  br label %65

65:                                               ; preds = %49, %2
  %66 = load i8*, i8** %6, align 8
  ret i8* %66
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @KEG_LOCK_ASSERT(%struct.TYPE_10__*) #1

declare dso_local i32 @BIT_FFS(i32, i32*) #1

declare dso_local i32 @BIT_CLR(i32, i32, i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
