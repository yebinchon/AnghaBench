; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/ofwfb/extr_ofwfb.c_ofwfb_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/ofwfb/extr_ofwfb.c_ofwfb_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.ofwfb_softc* }
%struct.ofwfb_softc = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i64 }

@FB_FLAG_NOWRITE = common dso_local global i32 0, align 4
@COLOR_FORMAT_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"color!\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown color space depth %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*)* @ofwfb_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofwfb_initialize(%struct.vt_device* %0) #0 {
  %2 = alloca %struct.vt_device*, align 8
  %3 = alloca %struct.ofwfb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %2, align 8
  %8 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %9 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %8, i32 0, i32 0
  %10 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %9, align 8
  store %struct.ofwfb_softc* %10, %struct.ofwfb_softc** %3, align 8
  %11 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 16, i32* %13, align 8
  %14 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FB_FLAG_NOWRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %143

22:                                               ; preds = %1
  %23 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %137 [
    i32 8, label %29
    i32 32, label %89
  ]

29:                                               ; preds = %22
  %30 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @COLOR_FORMAT_RGB, align 4
  %35 = call i32 @vt_generate_cons_palette(i32* %33, i32 %34, i32 255, i32 16, i32 255, i32 8, i32 255, i32 0)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %79, %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 16
  br i1 %38, label %39, label %82

39:                                               ; preds = %36
  %40 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 255
  %63 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 0
  %72 = and i32 %71, 255
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @OF_call_method(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %42, i32 4, i32 1, i32 %52, i32 %62, i32 %72, i32 %73, i32* %6)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %39
  br label %82

78:                                               ; preds = %39
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %36

82:                                               ; preds = %77, %36
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 16
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  br label %143

89:                                               ; preds = %22
  %90 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @bus_space_read_4(i32 %92, i64 %96, i32 0)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %102 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @bus_space_write_4(i32 %100, i64 %104, i32 0, i32 -16777216)
  %106 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 255
  br i1 %112, label %113, label %120

113:                                              ; preds = %89
  %114 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @COLOR_FORMAT_RGB, align 4
  %119 = call i32 @vt_generate_cons_palette(i32* %117, i32 %118, i32 255, i32 0, i32 255, i32 8, i32 255, i32 16)
  br label %127

120:                                              ; preds = %89
  %121 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %122 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @COLOR_FORMAT_RGB, align 4
  %126 = call i32 @vt_generate_cons_palette(i32* %124, i32 %125, i32 255, i32 16, i32 255, i32 8, i32 255, i32 0)
  br label %127

127:                                              ; preds = %120, %113
  %128 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %129 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %132 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @bus_space_write_4(i32 %130, i64 %134, i32 0, i32 %135)
  br label %143

137:                                              ; preds = %22
  %138 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %21, %137, %127, %88
  ret void
}

declare dso_local i32 @vt_generate_cons_palette(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OF_call_method(i8*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_read_4(i32, i64, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i64, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
