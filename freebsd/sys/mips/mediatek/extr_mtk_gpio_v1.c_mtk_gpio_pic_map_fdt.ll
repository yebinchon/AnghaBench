; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pic_map_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pic_map_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { i64, i32 }
%struct.intr_map_data_fdt = type { i32, i64* }

@.str = private unnamed_addr constant [26 x i8] c"Invalid #interrupt-cells\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid interrupt number %u\0A\00", align 1
@GPIO_INTR_EDGE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_gpio_softc*, %struct.intr_map_data_fdt*, i64*, i32*)* @mtk_gpio_pic_map_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_pic_map_fdt(%struct.mtk_gpio_softc* %0, %struct.intr_map_data_fdt* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_gpio_softc*, align 8
  %7 = alloca %struct.intr_map_data_fdt*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.mtk_gpio_softc* %0, %struct.mtk_gpio_softc** %6, align 8
  store %struct.intr_map_data_fdt* %1, %struct.intr_map_data_fdt** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %12 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %23 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %34 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %48

39:                                               ; preds = %21
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @GPIO_INTR_EDGE_BOTH, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %32, %15
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
