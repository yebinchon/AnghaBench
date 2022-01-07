; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c__bus_dmamap_addseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c__bus_dmamap_addseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_6__*, i32*)* @_bus_dmamap_addseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_addseg(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_6__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = xor i32 %20, -1
  store i32 %21, i32* %15, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load i32, i32* %15, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %26
  br label %44

44:                                               ; preds = %43, %6
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  br label %140

62:                                               ; preds = %44
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %69, %75
  %77 = icmp eq i32 %63, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %62
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %86, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %78
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %15, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %15, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %96, %91
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %110
  store i32 %117, i32* %115, align 4
  br label %139

118:                                              ; preds = %96, %78, %62
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp sge i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %144

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %127, i32* %132, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i32 %133, i32* %138, align 4
  br label %139

139:                                              ; preds = %126, %109
  br label %140

140:                                              ; preds = %139, %49
  %141 = load i32, i32* %16, align 4
  %142 = load i32*, i32** %13, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %125
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
