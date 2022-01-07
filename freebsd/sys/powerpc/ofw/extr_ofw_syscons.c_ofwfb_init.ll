; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ofwfb_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ofwfb\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"hw.syscons.fsize\00", align 1
@dflt_font_8 = common dso_local global i32 0, align 4
@dflt_font_14 = common dso_local global i32 0, align 4
@dflt_font_16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"hw.syscons.border\00", align 1
@COL = common dso_local global i32 0, align 4
@ROW = common dso_local global i32 0, align 4
@ofwfb_static_window = common dso_local global i64 0, align 8
@V_ADP_FONT = common dso_local global i32 0, align 4
@V_ADP_COLOR = common dso_local global i32 0, align 4
@V_ADP_MODECHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32)* @ofwfb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwfb_init(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ofwfb_softc*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = bitcast %struct.TYPE_6__* %11 to %struct.ofwfb_softc*
  store %struct.ofwfb_softc* %12, %struct.ofwfb_softc** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @vid_init_struct(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %16)
  store i32 16, i32* %10, align 4
  %18 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @dflt_font_8, align 4
  %23 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %26 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %25, i32 0, i32 0
  store i32 8, i32* %26, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 14
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* @dflt_font_14, align 4
  %32 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %33 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %35 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %34, i32 0, i32 0
  store i32 14, i32* %35, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load i32, i32* @dflt_font_16, align 4
  %38 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %39 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %41 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %40, i32 0, i32 0
  store i32 16, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %21
  store i32 1, i32* %9, align 4
  %44 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %45 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %46 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %51 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 8
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 2, %54
  %56 = sub nsw i32 %53, %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %60 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %63 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %61, %64
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 2, %66
  %68 = sub nsw i32 %65, %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32 8, i32* %72, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @COL, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %43
  %79 = load i32, i32* @COL, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %43
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ROW, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @ROW, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %94 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sub nsw i32 %95, %102
  %104 = sdiv i32 %103, 2
  %105 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %106 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %108 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %112, %115
  %117 = sub nsw i32 %109, %116
  %118 = sdiv i32 %117, 2
  %119 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %120 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load i64, i64* @ofwfb_static_window, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* @V_ADP_FONT, align 4
  %125 = load i32, i32* @V_ADP_COLOR, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @V_ADP_MODECHANGE, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %134 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %133, i32 0, i32 5
  %135 = call i32 @ofwfb_set_mode(i32* %134, i32 0)
  %136 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %7, align 8
  %137 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %136, i32 0, i32 5
  %138 = call i32 @vid_register(i32* %137)
  ret i32 0
}

declare dso_local i32 @vid_init_struct(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @ofwfb_set_mode(i32*, i32) #1

declare dso_local i32 @vid_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
