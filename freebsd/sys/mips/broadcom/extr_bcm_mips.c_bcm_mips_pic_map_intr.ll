; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_pic_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_mips.c_bcm_mips_pic_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.bcm_mips_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intr_irqsrc }
%struct.bcm_mips_intr_map_data = type { i64 }

@INTR_MAP_DATA_BCM_MIPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"type=%d\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"type=%d, ivec=%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @bcm_mips_pic_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mips_pic_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca %struct.bcm_mips_softc*, align 8
  %9 = alloca %struct.bcm_mips_intr_map_data*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.bcm_mips_softc* @device_get_softc(i32 %10)
  store %struct.bcm_mips_softc* %11, %struct.bcm_mips_softc** %8, align 8
  %12 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %13 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTR_MAP_DATA_BCM_MIPS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %20 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, i64, ...) @DENTRY(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @ENOTSUP, align 4
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %26 = bitcast %struct.intr_map_data* %25 to %struct.bcm_mips_intr_map_data*
  store %struct.bcm_mips_intr_map_data* %26, %struct.bcm_mips_intr_map_data** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %29 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bcm_mips_intr_map_data*, %struct.bcm_mips_intr_map_data** %9, align 8
  %32 = getelementptr inbounds %struct.bcm_mips_intr_map_data, %struct.bcm_mips_intr_map_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, i64, ...) @DENTRY(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load %struct.bcm_mips_intr_map_data*, %struct.bcm_mips_intr_map_data** %9, align 8
  %36 = getelementptr inbounds %struct.bcm_mips_intr_map_data, %struct.bcm_mips_intr_map_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %24
  %40 = load %struct.bcm_mips_intr_map_data*, %struct.bcm_mips_intr_map_data** %9, align 8
  %41 = getelementptr inbounds %struct.bcm_mips_intr_map_data, %struct.bcm_mips_intr_map_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %8, align 8
  %44 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i64 @nitems(%struct.TYPE_2__* %45)
  %47 = icmp uge i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39, %24
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %60

50:                                               ; preds = %39
  %51 = load %struct.bcm_mips_softc*, %struct.bcm_mips_softc** %8, align 8
  %52 = getelementptr inbounds %struct.bcm_mips_softc, %struct.bcm_mips_softc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.bcm_mips_intr_map_data*, %struct.bcm_mips_intr_map_data** %9, align 8
  %55 = getelementptr inbounds %struct.bcm_mips_intr_map_data, %struct.bcm_mips_intr_map_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  store %struct.intr_irqsrc* %58, %struct.intr_irqsrc** %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %50, %48, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.bcm_mips_softc* @device_get_softc(i32) #1

declare dso_local i32 @DENTRY(i32, i8*, i64, ...) #1

declare dso_local i64 @nitems(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
