; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pic_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pic_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.mtk_gpio_softc = type { i32 }
%struct.intr_map_data_fdt = type { i32 }
%struct.intr_map_data_gpio = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_BOTH = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_RISING = common dso_local global i64 0, align 8
@GPIO_PIORENA = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_FALLING = common dso_local global i64 0, align 8
@GPIO_PIOFENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @mtk_gpio_pic_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_pic_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.intr_map_data*, align 8
  %10 = alloca %struct.mtk_gpio_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %9, align 8
  %15 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %16 = icmp eq %struct.intr_map_data* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOTSUP, align 4
  store i32 %18, i32* %5, align 4
  br label %87

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %20)
  store %struct.mtk_gpio_softc* %21, %struct.mtk_gpio_softc** %10, align 8
  %22 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %23 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %35 [
    i32 129, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %19
  %26 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %27 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %28 = bitcast %struct.intr_map_data* %27 to %struct.intr_map_data_fdt*
  %29 = call i32 @mtk_gpio_pic_map_fdt(%struct.mtk_gpio_softc* %26, %struct.intr_map_data_fdt* %28, i32* %14, i64* %13)
  store i32 %29, i32* %12, align 4
  br label %37

30:                                               ; preds = %19
  %31 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %32 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %33 = bitcast %struct.intr_map_data* %32 to %struct.intr_map_data_gpio*
  %34 = call i32 @mtk_gpio_pic_map_gpio(%struct.mtk_gpio_softc* %31, %struct.intr_map_data_gpio* %33, i32* %14, i64* %13)
  store i32 %34, i32* %12, align 4
  br label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @ENOTSUP, align 4
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %35, %30, %25
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %87

42:                                               ; preds = %37
  %43 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %44 = call i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc* %43)
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @GPIO_INTR_EDGE_BOTH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* @GPIO_INTR_EDGE_RISING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48, %42
  %53 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %54 = load i32, i32* @GPIO_PIORENA, align 4
  %55 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %53, i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %61 = load i32, i32* @GPIO_PIORENA, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %60, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %52, %48
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @GPIO_INTR_EDGE_BOTH, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @GPIO_INTR_EDGE_FALLING, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68, %64
  %73 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %74 = load i32, i32* @GPIO_PIOFENA, align 4
  %75 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %73, i32 %74)
  %76 = load i32, i32* %14, align 4
  %77 = shl i32 1, %76
  %78 = or i32 %75, %77
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %11, align 8
  %80 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %81 = load i32, i32* @GPIO_PIOFENA, align 4
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %80, i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %72, %68
  %85 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %10, align 8
  %86 = call i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc* %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %40, %17
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtk_gpio_pic_map_fdt(%struct.mtk_gpio_softc*, %struct.intr_map_data_fdt*, i32*, i64*) #1

declare dso_local i32 @mtk_gpio_pic_map_gpio(%struct.mtk_gpio_softc*, %struct.intr_map_data_gpio*, i32*, i64*) #1

declare dso_local i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @MTK_WRITE_4(%struct.mtk_gpio_softc*, i32, i64) #1

declare dso_local i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
