; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_cursor_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_cursor_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.machfb_softc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@CUR_OFFSET = common dso_local global i32 0, align 4
@SC_NORM_ATTR = common dso_local global i32 0, align 4
@CUR_CLR0 = common dso_local global i32 0, align 4
@machfb_default_cmap = common dso_local global %struct.TYPE_4__* null, align 8
@machfb_mouse_pointer_lut = common dso_local global i32* null, align 8
@machfb_mouse_pointer_bits = common dso_local global i32** null, align 8
@MACHFB_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machfb_softc*)* @machfb_cursor_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_cursor_install(%struct.machfb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.machfb_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.machfb_softc* %0, %struct.machfb_softc** %3, align 8
  %9 = load %struct.machfb_softc*, %struct.machfb_softc** %3, align 8
  %10 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  store i32 %14, i32* %2, align 4
  br label %123

15:                                               ; preds = %1
  %16 = load %struct.machfb_softc*, %struct.machfb_softc** %3, align 8
  %17 = call i32 @machfb_cursor_enable(%struct.machfb_softc* %16, i32 0)
  %18 = load %struct.machfb_softc*, %struct.machfb_softc** %3, align 8
  %19 = load i32, i32* @CUR_OFFSET, align 4
  %20 = load %struct.machfb_softc*, %struct.machfb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 3
  %24 = call i32 @regw(%struct.machfb_softc* %18, i32 %19, i32 %23)
  %25 = load i32, i32* @SC_NORM_ATTR, align 4
  %26 = and i32 %25, 15
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load %struct.machfb_softc*, %struct.machfb_softc** %3, align 8
  %29 = load i32, i32* @CUR_CLR0, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @machfb_default_cmap, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 24
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @machfb_default_cmap, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = or i32 %35, %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @machfb_default_cmap, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %42, %48
  %50 = call i32 @regw(%struct.machfb_softc* %28, i32 %29, i32 %49)
  %51 = load %struct.machfb_softc*, %struct.machfb_softc** %3, align 8
  %52 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.machfb_softc*, %struct.machfb_softc** %3, align 8
  %56 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %119, %15
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 64
  br i1 %63, label %64, label %122

64:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %115, %64
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %118

68:                                               ; preds = %65
  %69 = load i32*, i32** @machfb_mouse_pointer_lut, align 8
  %70 = load i32**, i32*** @machfb_mouse_pointer_bits, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %69, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load i32*, i32** @machfb_mouse_pointer_lut, align 8
  %85 = load i32**, i32*** @machfb_mouse_pointer_bits, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 15
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %84, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %83, %97
  store i32 %98, i32* %5, align 4
  %99 = load %struct.machfb_softc*, %struct.machfb_softc** %3, align 8
  %100 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MACHFB_SWAP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %68
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @bswap16(i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %4, align 8
  store i32 %107, i32* %108, align 4
  br label %114

110:                                              ; preds = %68
  %111 = load i32, i32* %5, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %4, align 8
  store i32 %111, i32* %112, align 4
  br label %114

114:                                              ; preds = %110, %105
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %65

118:                                              ; preds = %65
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %61

122:                                              ; preds = %61
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %13
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @machfb_cursor_enable(%struct.machfb_softc*, i32) #1

declare dso_local i32 @regw(%struct.machfb_softc*, i32, i32) #1

declare dso_local i32 @bswap16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
