; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_plic.c_plic_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_plic.c_plic_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.intr_map_data_fdt = type { i32, i64* }
%struct.plic_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intr_irqsrc }

@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @plic_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plic_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca %struct.intr_map_data_fdt*, align 8
  %9 = alloca %struct.plic_softc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.plic_softc* @device_get_softc(i32 %10)
  store %struct.plic_softc* %11, %struct.plic_softc** %9, align 8
  %12 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %13 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOTSUP, align 4
  store i32 %18, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %21 = bitcast %struct.intr_map_data* %20 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %21, %struct.intr_map_data_fdt** %8, align 8
  %22 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %8, align 8
  %23 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %36, label %26

26:                                               ; preds = %19
  %27 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %8, align 8
  %28 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.plic_softc*, %struct.plic_softc** %9, align 8
  %33 = getelementptr inbounds %struct.plic_softc, %struct.plic_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26, %19
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %50

38:                                               ; preds = %26
  %39 = load %struct.plic_softc*, %struct.plic_softc** %9, align 8
  %40 = getelementptr inbounds %struct.plic_softc, %struct.plic_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %8, align 8
  %43 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  store %struct.intr_irqsrc* %48, %struct.intr_irqsrc** %49, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %38, %36, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.plic_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
