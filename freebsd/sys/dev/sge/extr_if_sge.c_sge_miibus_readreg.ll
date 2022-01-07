; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32 }

@GMIIControl = common dso_local global i32 0, align 4
@GMI_PHY_SHIFT = common dso_local global i32 0, align 4
@GMI_REG_SHIFT = common dso_local global i32 0, align 4
@GMI_OP_RD = common dso_local global i32 0, align 4
@GMI_REQ = common dso_local global i32 0, align 4
@SGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PHY read timeout : %d\0A\00", align 1
@GMI_DATA = common dso_local global i32 0, align 4
@GMI_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sge_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sge_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.sge_softc* @device_get_softc(i32 %11)
  store %struct.sge_softc* %12, %struct.sge_softc** %8, align 8
  %13 = load %struct.sge_softc*, %struct.sge_softc** %8, align 8
  %14 = load i32, i32* @GMIIControl, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GMI_PHY_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GMI_REG_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32, i32* @GMI_OP_RD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GMI_REQ, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @CSR_WRITE_4(%struct.sge_softc* %13, i32 %14, i32 %25)
  %27 = call i32 @DELAY(i32 10)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %43, %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SGE_TIMEOUT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.sge_softc*, %struct.sge_softc** %8, align 8
  %34 = load i32, i32* @GMIIControl, align 4
  %35 = call i32 @CSR_READ_4(%struct.sge_softc* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @GMI_REQ, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %46

41:                                               ; preds = %32
  %42 = call i32 @DELAY(i32 10)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %28

46:                                               ; preds = %40, %28
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @SGE_TIMEOUT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.sge_softc*, %struct.sge_softc** %8, align 8
  %52 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 0, i32* %4, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @GMI_DATA, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @GMI_DATA_SHIFT, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %4, align 4
  ret i32 %63
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
