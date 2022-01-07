; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_keg_free_slab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_keg_free_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 (i32*, i32, i32)*, i32, i32, i32 (i32*, i32)*, i32 }
%struct.TYPE_9__ = type { i32*, i32 }

@KTR_UMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"keg_free_slab keg %s(%p) slab %p, returning %d bytes\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@UMA_ZONE_OFFPAGE = common dso_local global i32 0, align 4
@SKIP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @keg_free_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keg_free_slab(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @KTR_UMA, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = call i32 @CTR4(i32 %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.TYPE_10__* %14, %struct.TYPE_9__* %15, i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 6
  %31 = load i32 (i32*, i32)*, i32 (i32*, i32)** %30, align 8
  %32 = icmp ne i32 (i32*, i32)* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %57, %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 6
  %42 = load i32 (i32*, i32)*, i32 (i32*, i32)** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %42(i32* %52, i32 %55)
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %8, align 4
  br label %36

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60, %3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @UMA_ZONE_OFFPAGE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = load i32, i32* @SKIP_NONE, align 4
  %74 = call i32 @zone_free_item(i32 %71, %struct.TYPE_9__* %72, i32* null, i32 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %77, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = load i32, i32* %9, align 4
  %86 = call i32 %78(i32* %79, i32 %84, i32 %85)
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  %92 = call i32 @uma_total_dec(i32 %91)
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @zone_free_item(i32, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @uma_total_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
