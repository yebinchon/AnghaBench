; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl.c_terasic_mtl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl.c_terasic_mtl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terasic_mtl_softc = type { i32 }

@TERASIC_MTL_COLOR_BLACK = common dso_local global i32 0, align 4
@BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTE_ORDER = common dso_local global i64 0, align 8
@TERASIC_MTL_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@TERASIC_MTL_ALPHA_TRANSPARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @terasic_mtl_attach(%struct.terasic_mtl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.terasic_mtl_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.terasic_mtl_softc* %0, %struct.terasic_mtl_softc** %3, align 8
  %5 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %6 = call i32 @terasic_mtl_reg_attach(%struct.terasic_mtl_softc* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %12 = call i32 @terasic_mtl_pixel_attach(%struct.terasic_mtl_softc* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %26

16:                                               ; preds = %10
  %17 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %18 = call i32 @terasic_mtl_text_attach(%struct.terasic_mtl_softc* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %26

22:                                               ; preds = %16
  %23 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %24 = load i32, i32* @TERASIC_MTL_COLOR_BLACK, align 4
  %25 = call i32 @terasic_mtl_blend_default_set(%struct.terasic_mtl_softc* %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %34

26:                                               ; preds = %21, %15, %9
  %27 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %28 = call i32 @terasic_mtl_text_detach(%struct.terasic_mtl_softc* %27)
  %29 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %30 = call i32 @terasic_mtl_pixel_detach(%struct.terasic_mtl_softc* %29)
  %31 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %32 = call i32 @terasic_mtl_reg_detach(%struct.terasic_mtl_softc* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @terasic_mtl_reg_attach(%struct.terasic_mtl_softc*) #1

declare dso_local i32 @terasic_mtl_pixel_attach(%struct.terasic_mtl_softc*) #1

declare dso_local i32 @terasic_mtl_text_attach(%struct.terasic_mtl_softc*) #1

declare dso_local i32 @terasic_mtl_blend_default_set(%struct.terasic_mtl_softc*, i32) #1

declare dso_local i32 @terasic_mtl_text_detach(%struct.terasic_mtl_softc*) #1

declare dso_local i32 @terasic_mtl_pixel_detach(%struct.terasic_mtl_softc*) #1

declare dso_local i32 @terasic_mtl_reg_detach(%struct.terasic_mtl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
