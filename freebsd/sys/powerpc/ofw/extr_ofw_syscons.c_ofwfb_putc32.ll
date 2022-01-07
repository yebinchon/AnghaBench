; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_putc32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_putc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ofwfb_softc = type { i32*, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @ofwfb_putc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwfb_putc32(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ofwfb_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = bitcast %struct.TYPE_5__* %19 to %struct.ofwfb_softc*
  store %struct.ofwfb_softc* %20, %struct.ofwfb_softc** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %21, %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %26, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %32, %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %37, %41
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %44 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %48 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  store i32* %52, i32** %18, align 8
  %53 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %54 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %59 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %63 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %64, 4
  %66 = mul nsw i32 %61, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %56, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %73 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32* %76, i32** %15, align 8
  %77 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ofwfb_foreground(i32 %78)
  %80 = call i32 @ofwfb_pix32(%struct.ofwfb_softc* %77, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ofwfb_background(i32 %82)
  %84 = call i32 @ofwfb_pix32(%struct.ofwfb_softc* %81, i32 %83)
  store i32 %84, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %131, %4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %88 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %134

91:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  store i32 7, i32* %14, align 4
  br label %92

92:                                               ; preds = %118, %91
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %123

95:                                               ; preds = %92
  %96 = load i32*, i32** %18, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %14, align 4
  %102 = shl i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load i32, i32* %17, align 4
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  br label %117

111:                                              ; preds = %95
  %112 = load i32, i32* %16, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %105
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %14, align 4
  br label %92

123:                                              ; preds = %92
  %124 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  %125 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %126, 4
  %128 = load i32*, i32** %15, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %15, align 8
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %85

134:                                              ; preds = %85
  ret i32 0
}

declare dso_local i32 @ofwfb_pix32(%struct.ofwfb_softc*, i32) #1

declare dso_local i32 @ofwfb_foreground(i32) #1

declare dso_local i32 @ofwfb_background(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
