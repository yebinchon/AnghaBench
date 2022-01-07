; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_reg.c_terasic_mtl_reg_pixel_endian_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_reg.c_terasic_mtl_reg_pixel_endian_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terasic_mtl_softc = type { i32 }

@TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terasic_mtl_reg_pixel_endian_set(%struct.terasic_mtl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.terasic_mtl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.terasic_mtl_softc* %0, %struct.terasic_mtl_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %7 = call i32 @TERASIC_MTL_LOCK(%struct.terasic_mtl_softc* %6)
  %8 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %9 = call i32 @terasic_mtl_reg_blend_get(%struct.terasic_mtl_softc* %8, i32* %5)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @terasic_mtl_reg_blend_set(%struct.terasic_mtl_softc* %22, i32 %23)
  %25 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %3, align 8
  %26 = call i32 @TERASIC_MTL_UNLOCK(%struct.terasic_mtl_softc* %25)
  ret void
}

declare dso_local i32 @TERASIC_MTL_LOCK(%struct.terasic_mtl_softc*) #1

declare dso_local i32 @terasic_mtl_reg_blend_get(%struct.terasic_mtl_softc*, i32*) #1

declare dso_local i32 @terasic_mtl_reg_blend_set(%struct.terasic_mtl_softc*, i32) #1

declare dso_local i32 @TERASIC_MTL_UNLOCK(%struct.terasic_mtl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
