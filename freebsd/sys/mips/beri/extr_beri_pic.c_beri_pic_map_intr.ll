; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_pic.c_beri_pic_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_pic.c_beri_pic_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.beripic_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intr_irqsrc }
%struct.intr_map_data_fdt = type { i32, i64* }

@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @beri_pic_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_pic_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca %struct.beripic_softc*, align 8
  %9 = alloca %struct.intr_map_data_fdt*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.beripic_softc* @device_get_softc(i32 %11)
  store %struct.beripic_softc* %12, %struct.beripic_softc** %8, align 8
  %13 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %14 = bitcast %struct.intr_map_data* %13 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %14, %struct.intr_map_data_fdt** %9, align 8
  %15 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %16 = icmp eq %struct.intr_map_data* %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %3
  %18 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %19 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %38, label %23

23:                                               ; preds = %17
  %24 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %25 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %30 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.beripic_softc*, %struct.beripic_softc** %8, align 8
  %35 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28, %23, %17, %3
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %28
  %41 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %42 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.beripic_softc*, %struct.beripic_softc** %8, align 8
  %47 = getelementptr inbounds %struct.beripic_softc, %struct.beripic_softc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  store %struct.intr_irqsrc* %51, %struct.intr_irqsrc** %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %40, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.beripic_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
