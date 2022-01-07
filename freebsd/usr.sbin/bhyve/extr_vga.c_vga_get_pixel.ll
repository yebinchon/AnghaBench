; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_get_pixel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_get_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_softc = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i32, i32*, i64, i64 }

@KB = common dso_local global i32 0, align 4
@ATC_MC_IPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_softc*, i32, i32)* @vga_get_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_get_pixel(%struct.vga_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vga_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vga_softc* %0, %struct.vga_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  %16 = sdiv i32 %15, 8
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 8
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = srem i32 %20, 8
  %22 = sub nsw i32 7, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %24 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @KB, align 4
  %28 = mul nsw i32 0, %27
  %29 = add nsw i32 %26, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = shl i32 %35, 0
  %37 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %38 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @KB, align 4
  %42 = mul nsw i32 64, %41
  %43 = add nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %46, %47
  %49 = and i32 %48, 1
  %50 = shl i32 %49, 1
  %51 = or i32 %36, %50
  %52 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %53 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @KB, align 4
  %57 = mul nsw i32 128, %56
  %58 = add nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %61, %62
  %64 = and i32 %63, 1
  %65 = shl i32 %64, 2
  %66 = or i32 %51, %65
  %67 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %68 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @KB, align 4
  %72 = mul nsw i32 192, %71
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %76, %77
  %79 = and i32 %78, 1
  %80 = shl i32 %79, 3
  %81 = or i32 %66, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %9, align 8
  %83 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %84 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = and i64 %87, %86
  store i64 %88, i64* %9, align 8
  %89 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %90 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ATC_MC_IPS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %3
  %97 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %98 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 15
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %10, align 8
  %106 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %107 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %10, align 8
  br label %121

112:                                              ; preds = %3
  %113 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %114 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %10, align 8
  br label %121

121:                                              ; preds = %112, %96
  %122 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %123 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %10, align 8
  %128 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %129 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
