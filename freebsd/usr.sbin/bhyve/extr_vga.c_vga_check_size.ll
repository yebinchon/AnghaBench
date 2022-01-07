; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_check_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_vga.c_vga_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhyvegc = type { i32 }
%struct.vga_softc = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CRTC_OF_VDE8 = common dso_local global i32 0, align 4
@CRTC_OF_VDE8_SHIFT = common dso_local global i32 0, align 4
@CRTC_OF_VDE9 = common dso_local global i32 0, align 4
@CRTC_OF_VDE9_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bhyvegc*, %struct.vga_softc*)* @vga_check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_check_size(%struct.bhyvegc* %0, %struct.vga_softc* %1) #0 {
  %3 = alloca %struct.bhyvegc*, align 8
  %4 = alloca %struct.vga_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bhyvegc* %0, %struct.bhyvegc** %3, align 8
  store %struct.vga_softc* %1, %struct.vga_softc** %4, align 8
  %7 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %8 = call i64 @vga_in_reset(%struct.vga_softc* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %81

11:                                               ; preds = %2
  %12 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %18 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %23 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %28 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %26, %30
  %32 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %33 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %35 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %39 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CRTC_OF_VDE8, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @CRTC_OF_VDE8_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = shl i32 %45, 8
  %47 = or i32 %37, %46
  %48 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %49 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CRTC_OF_VDE9, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @CRTC_OF_VDE9_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = shl i32 %55, 9
  %57 = or i32 %47, %56
  %58 = add nsw i32 %57, 1
  %59 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %60 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %63 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %11
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %69 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66, %11
  %73 = load %struct.bhyvegc*, %struct.bhyvegc** %3, align 8
  %74 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %75 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %78 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bhyvegc_resize(%struct.bhyvegc* %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %10, %72, %66
  ret void
}

declare dso_local i64 @vga_in_reset(%struct.vga_softc*) #1

declare dso_local i32 @bhyvegc_resize(%struct.bhyvegc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
