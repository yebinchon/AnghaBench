; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.mips_pic_softc = type { i64 }
%struct.intr_map_data_mips_pic = type { i64 }

@INTR_MAP_DATA_MIPS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @mips_pic_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_pic_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca %struct.mips_pic_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intr_map_data_mips_pic*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mips_pic_softc* @device_get_softc(i32 %11)
  store %struct.mips_pic_softc* %12, %struct.mips_pic_softc** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %14 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTR_MAP_DATA_MIPS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %20 = bitcast %struct.intr_map_data* %19 to %struct.intr_map_data_mips_pic*
  store %struct.intr_map_data_mips_pic* %20, %struct.intr_map_data_mips_pic** %10, align 8
  %21 = load %struct.intr_map_data_mips_pic*, %struct.intr_map_data_mips_pic** %10, align 8
  %22 = getelementptr inbounds %struct.intr_map_data_mips_pic, %struct.intr_map_data_mips_pic* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load %struct.intr_map_data_mips_pic*, %struct.intr_map_data_mips_pic** %10, align 8
  %27 = getelementptr inbounds %struct.intr_map_data_mips_pic, %struct.intr_map_data_mips_pic* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %8, align 8
  %30 = getelementptr inbounds %struct.mips_pic_softc, %struct.mips_pic_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25, %18
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %46

35:                                               ; preds = %25
  %36 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %8, align 8
  %37 = load %struct.intr_map_data_mips_pic*, %struct.intr_map_data_mips_pic** %10, align 8
  %38 = getelementptr inbounds %struct.intr_map_data_mips_pic, %struct.intr_map_data_mips_pic* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.intr_irqsrc* @PIC_INTR_ISRC(%struct.mips_pic_softc* %36, i64 %39)
  %41 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  store %struct.intr_irqsrc* %40, %struct.intr_irqsrc** %41, align 8
  br label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOTSUP, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.mips_pic_softc* @device_get_softc(i32) #1

declare dso_local %struct.intr_irqsrc* @PIC_INTR_ISRC(%struct.mips_pic_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
