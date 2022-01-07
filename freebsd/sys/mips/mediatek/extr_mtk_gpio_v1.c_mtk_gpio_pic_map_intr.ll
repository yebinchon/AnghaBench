; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pic_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pic_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i32 }
%struct.intr_irqsrc = type { i32 }
%struct.mtk_gpio_softc = type { i32 }
%struct.intr_map_data_fdt = type { i32 }
%struct.intr_map_data_gpio = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid map type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @mtk_gpio_pic_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_pic_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %11)
  store %struct.mtk_gpio_softc* %12, %struct.mtk_gpio_softc** %10, align 8
  %13 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %14 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %26 [
    i32 129, label %16
    i32 128, label %21
  ]

16:                                               ; preds = %3
  %17 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %18 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %19 = bitcast %struct.intr_map_data* %18 to %struct.intr_map_data_fdt*
  %20 = call i32 @mtk_gpio_pic_map_fdt(%struct.mtk_gpio_softc* %17, %struct.intr_map_data_fdt* %19, i32* %9, i32* null)
  store i32 %20, i32* %8, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %23 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %24 = bitcast %struct.intr_map_data* %23 to %struct.intr_map_data_gpio*
  %25 = call i32 @mtk_gpio_pic_map_gpio(%struct.mtk_gpio_softc* %22, %struct.intr_map_data_gpio* %24, i32* %9, i32* null)
  store i32 %25, i32* %8, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %21, %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %28
  %36 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.intr_irqsrc* @PIC_INTR_ISRC(%struct.mtk_gpio_softc* %36, i32 %37)
  %39 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  store %struct.intr_irqsrc* %38, %struct.intr_irqsrc** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtk_gpio_pic_map_fdt(%struct.mtk_gpio_softc*, %struct.intr_map_data_fdt*, i32*, i32*) #1

declare dso_local i32 @mtk_gpio_pic_map_gpio(%struct.mtk_gpio_softc*, %struct.intr_map_data_gpio*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.intr_irqsrc* @PIC_INTR_ISRC(%struct.mtk_gpio_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
