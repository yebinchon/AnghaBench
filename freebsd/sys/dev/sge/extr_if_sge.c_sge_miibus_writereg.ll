; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32 }

@GMIIControl = common dso_local global i32 0, align 4
@GMI_PHY_SHIFT = common dso_local global i32 0, align 4
@GMI_REG_SHIFT = common dso_local global i32 0, align 4
@GMI_DATA_SHIFT = common dso_local global i32 0, align 4
@GMI_OP_WR = common dso_local global i32 0, align 4
@GMI_REQ = common dso_local global i32 0, align 4
@SGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PHY write timeout : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @sge_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sge_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.sge_softc* @device_get_softc(i32 %12)
  store %struct.sge_softc* %13, %struct.sge_softc** %9, align 8
  %14 = load %struct.sge_softc*, %struct.sge_softc** %9, align 8
  %15 = load i32, i32* @GMIIControl, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GMI_PHY_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GMI_REG_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GMI_DATA_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* @GMI_OP_WR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GMI_REQ, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @CSR_WRITE_4(%struct.sge_softc* %14, i32 %15, i32 %30)
  %32 = call i32 @DELAY(i32 10)
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %48, %4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @SGE_TIMEOUT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.sge_softc*, %struct.sge_softc** %9, align 8
  %39 = load i32, i32* @GMIIControl, align 4
  %40 = call i32 @CSR_READ_4(%struct.sge_softc* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @GMI_REQ, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %51

46:                                               ; preds = %37
  %47 = call i32 @DELAY(i32 10)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %33

51:                                               ; preds = %45, %33
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @SGE_TIMEOUT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.sge_softc*, %struct.sge_softc** %9, align 8
  %57 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %51
  ret i32 0
}

declare dso_local %struct.sge_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
