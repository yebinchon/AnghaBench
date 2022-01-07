; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_putm8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_putm8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwfb_softc = type { i32, i32, i64, i32, i32, i64 }

@SC_NORM_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32, i32, i32)* @ofwfb_putm8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwfb_putm8(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ofwfb_softc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = bitcast i32* %22 to %struct.ofwfb_softc*
  store %struct.ofwfb_softc* %23, %struct.ofwfb_softc** %15, align 8
  %24 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %25 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %29 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %27, %30
  %32 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %33 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = add i64 %26, %36
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %42 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %19, align 8
  %46 = load i32, i32* @SC_NORM_ATTR, align 4
  %47 = call i32 @ofwfb_foreground(i32 %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* @SC_NORM_ATTR, align 4
  %49 = call i32 @ofwfb_background(i32 %48)
  store i32 %49, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %132, %7
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  %58 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %59 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %62 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 2, %63
  %65 = sub nsw i32 %60, %64
  %66 = icmp slt i32 %57, %65
  br label %67

67:                                               ; preds = %54, %50
  %68 = phi i1 [ false, %50 ], [ %66, %54 ]
  br i1 %68, label %69, label %135

69:                                               ; preds = %67
  store i32 0, i32* %17, align 4
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %119, %69
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %124

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %80 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %84 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 2, %85
  %87 = sub i64 %82, %86
  %88 = icmp uge i64 %78, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %119

90:                                               ; preds = %74
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %18, align 4
  %97 = shl i32 1, %96
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %90
  %101 = load i32*, i32** %19, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %21, align 4
  br label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %20, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = load i32*, i32** %19, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %90
  br label %119

119:                                              ; preds = %118, %89
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %18, align 4
  br label %71

124:                                              ; preds = %71
  %125 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %126 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = udiv i64 %128, 4
  %130 = load i32*, i32** %19, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 %129
  store i32* %131, i32** %19, align 8
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %50

135:                                              ; preds = %67
  ret i32 0
}

declare dso_local i32 @ofwfb_foreground(i32) #1

declare dso_local i32 @ofwfb_background(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
