; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_pic.c_beri_pic_disable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_pic.c_beri_pic_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.beri_pic_isrc = type { i32 }
%struct.beripic_softc = type { i32* }

@BP_CFG = common dso_local global i64 0, align 8
@BP_CFG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @beri_pic_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beri_pic_disable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.beri_pic_isrc*, align 8
  %6 = alloca %struct.beripic_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.beripic_softc* @device_get_softc(i32 %8)
  store %struct.beripic_softc* %9, %struct.beripic_softc** %6, align 8
  %10 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %11 = bitcast %struct.intr_irqsrc* %10 to %struct.beri_pic_isrc*
  store %struct.beri_pic_isrc* %11, %struct.beri_pic_isrc** %5, align 8
  %12 = load %struct.beripic_softc*, %struct.beripic_softc** %6, align 8
  %13 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @BP_CFG, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.beri_pic_isrc*, %struct.beri_pic_isrc** %5, align 8
  %19 = getelementptr inbounds %struct.beri_pic_isrc, %struct.beri_pic_isrc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 8
  %22 = call i32 @bus_read_8(i32 %17, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @BP_CFG_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.beripic_softc*, %struct.beripic_softc** %6, align 8
  %28 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @BP_CFG, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.beri_pic_isrc*, %struct.beri_pic_isrc** %5, align 8
  %34 = getelementptr inbounds %struct.beri_pic_isrc, %struct.beri_pic_isrc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @bus_write_8(i32 %32, i32 %36, i32 %37)
  ret void
}

declare dso_local %struct.beripic_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_8(i32, i32) #1

declare dso_local i32 @bus_write_8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
