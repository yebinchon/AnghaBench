; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_putm32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_putm32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwfb_softc = type { i32, i32, i32, i32, i32, i64 }

@SC_NORM_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i64, i32, i32)* @ofwfb_putm32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwfb_putm32(i32* %0, i32 %1, i32 %2, i32* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ofwfb_softc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = bitcast i32* %22 to %struct.ofwfb_softc*
  store %struct.ofwfb_softc* %23, %struct.ofwfb_softc** %15, align 8
  %24 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %25 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %30 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  %33 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %34 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 4
  %37 = mul nsw i32 %32, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %27, i64 %38
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %44 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  store i64* %47, i64** %21, align 8
  %48 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %49 = load i32, i32* @SC_NORM_ATTR, align 4
  %50 = call i32 @ofwfb_foreground(i32 %49)
  %51 = call i64 @ofwfb_pix32(%struct.ofwfb_softc* %48, i32 %50)
  store i64 %51, i64* %19, align 8
  %52 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %53 = load i32, i32* @SC_NORM_ATTR, align 4
  %54 = call i32 @ofwfb_background(i32 %53)
  %55 = call i64 @ofwfb_pix32(%struct.ofwfb_softc* %52, i32 %54)
  store i64 %55, i64* %20, align 8
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %136, %7
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %65 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %68 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 2, %69
  %71 = sub nsw i32 %66, %70
  %72 = icmp slt i32 %63, %71
  br label %73

73:                                               ; preds = %60, %56
  %74 = phi i1 [ false, %56 ], [ %72, %60 ]
  br i1 %74, label %75, label %139

75:                                               ; preds = %73
  store i32 0, i32* %17, align 4
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %123, %75
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %128

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %85 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %88 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 2, %89
  %91 = sub nsw i32 %86, %90
  %92 = icmp sge i32 %83, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %123

94:                                               ; preds = %80
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %18, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %94
  %105 = load i64*, i64** %21, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %19, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i64, i64* %20, align 8
  br label %116

114:                                              ; preds = %104
  %115 = load i64, i64* %19, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i64 [ %113, %112 ], [ %115, %114 ]
  %118 = load i64*, i64** %21, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %117, i64* %121, align 8
  br label %122

122:                                              ; preds = %116, %94
  br label %123

123:                                              ; preds = %122, %93
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %18, align 4
  br label %77

128:                                              ; preds = %77
  %129 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %15, align 8
  %130 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 4
  %133 = load i64*, i64** %21, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64* %135, i64** %21, align 8
  br label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %56

139:                                              ; preds = %73
  ret i32 0
}

declare dso_local i64 @ofwfb_pix32(%struct.ofwfb_softc*, i32) #1

declare dso_local i32 @ofwfb_foreground(i32) #1

declare dso_local i32 @ofwfb_background(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
