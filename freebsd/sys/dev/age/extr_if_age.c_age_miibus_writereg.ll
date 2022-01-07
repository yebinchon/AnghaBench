; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32 }

@AGE_MDIO = common dso_local global i32 0, align 4
@MDIO_OP_EXECUTE = common dso_local global i32 0, align 4
@MDIO_OP_WRITE = common dso_local global i32 0, align 4
@MDIO_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@AGE_PHY_TIMEOUT = common dso_local global i32 0, align 4
@MDIO_OP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy write timeout : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @age_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.age_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.age_softc* @device_get_softc(i32 %12)
  store %struct.age_softc* %13, %struct.age_softc** %9, align 8
  %14 = load %struct.age_softc*, %struct.age_softc** %9, align 8
  %15 = load i32, i32* @AGE_MDIO, align 4
  %16 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %17 = load i32, i32* @MDIO_OP_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MDIO_DATA_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @MDIO_DATA_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %18, %23
  %25 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MDIO_CLK_25_4, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @MDIO_REG_ADDR(i32 %29)
  %31 = or i32 %28, %30
  %32 = call i32 @CSR_WRITE_4(%struct.age_softc* %14, i32 %15, i32 %31)
  %33 = load i32, i32* @AGE_PHY_TIMEOUT, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %50, %4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = call i32 @DELAY(i32 1)
  %39 = load %struct.age_softc*, %struct.age_softc** %9, align 8
  %40 = load i32, i32* @AGE_MDIO, align 4
  %41 = call i32 @CSR_READ_4(%struct.age_softc* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MDIO_OP_EXECUTE, align 4
  %44 = load i32, i32* @MDIO_OP_BUSY, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  br label %34

53:                                               ; preds = %48, %34
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.age_softc*, %struct.age_softc** %9, align 8
  %58 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  ret i32 0
}

declare dso_local %struct.age_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

declare dso_local i32 @MDIO_REG_ADDR(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
