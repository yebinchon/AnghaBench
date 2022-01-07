; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_c45_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_c45_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_mdio_softc = type { i32 }

@MODE_IEEE_C45 = common dso_local global i32 0, align 4
@SMI_WR_DAT = common dso_local global i32 0, align 4
@SMI_WR_DAT_DAT_MASK = common dso_local global i32 0, align 4
@SMI_CMD_PHY_OP_C45_WRITE = common dso_local global i32 0, align 4
@SMI_CMD_PHY_ADR_SHIFT = common dso_local global i32 0, align 4
@SMI_CMD_PHY_ADR_MASK = common dso_local global i32 0, align 4
@SMI_CMD_PHY_REG_ADR_SHIFT = common dso_local global i32 0, align 4
@SMI_CMD_PHY_REG_ADR_MASK = common dso_local global i32 0, align 4
@SMI_CMD = common dso_local global i32 0, align 4
@SMI_WR_DAT_PENDING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thunder_mdio_softc*, i32, i32)* @thunder_mdio_c45_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_mdio_c45_addr(%struct.thunder_mdio_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thunder_mdio_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thunder_mdio_softc* %0, %struct.thunder_mdio_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %5, align 8
  %12 = load i32, i32* @MODE_IEEE_C45, align 4
  %13 = call i32 @thunder_mdio_set_mode(%struct.thunder_mdio_softc* %11, i32 %12)
  %14 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %5, align 8
  %15 = load i32, i32* @SMI_WR_DAT, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SMI_WR_DAT_DAT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @mdio_reg_write(%struct.thunder_mdio_softc* %14, i32 %15, i32 %18)
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* @SMI_CMD_PHY_OP_C45_WRITE, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SMI_CMD_PHY_ADR_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @SMI_CMD_PHY_ADR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SMI_CMD_PHY_REG_ADR_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @SMI_CMD_PHY_REG_ADR_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %5, align 8
  %38 = load i32, i32* @SMI_CMD, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mdio_reg_write(%struct.thunder_mdio_softc* %37, i32 %38, i32 %39)
  store i32 1000, i32* %10, align 4
  br label %41

41:                                               ; preds = %56, %3
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %5, align 8
  %46 = load i32, i32* @SMI_WR_DAT, align 4
  %47 = call i32 @mdio_reg_read(%struct.thunder_mdio_softc* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SMI_WR_DAT_PENDING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @DELAY(i32 1000)
  br label %55

54:                                               ; preds = %44
  br label %59

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  br label %41

59:                                               ; preds = %54, %41
  %60 = load i32, i32* %10, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @EIO, align 4
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @thunder_mdio_set_mode(%struct.thunder_mdio_softc*, i32) #1

declare dso_local i32 @mdio_reg_write(%struct.thunder_mdio_softc*, i32, i32) #1

declare dso_local i32 @mdio_reg_read(%struct.thunder_mdio_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
