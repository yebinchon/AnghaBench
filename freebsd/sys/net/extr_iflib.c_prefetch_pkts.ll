; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_prefetch_pkts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_prefetch_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32**, i32** }

@CACHE_PTR_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @prefetch_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefetch_pkts(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CACHE_PTR_INCREMENT, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = bitcast i32** %23 to i32*
  %25 = call i32 @prefetch(i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = bitcast i32** %32 to i32*
  %34 = call i32 @prefetch(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32* @calc_next_rxd(%struct.TYPE_6__* %35, i32 %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @prefetch(i32* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %43, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @prefetch(i32* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 2
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %56, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @prefetch(i32* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 3
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %69, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @prefetch(i32* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %82, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @prefetch(i32* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  %100 = and i32 %97, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %95, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @prefetch(i32* %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 2
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %110, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %108, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @prefetch(i32* %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 3
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 1
  %126 = and i32 %123, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %121, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @prefetch(i32* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 4
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 %137, 1
  %139 = and i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %134, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @prefetch(i32* %142)
  ret void
}

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32* @calc_next_rxd(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
