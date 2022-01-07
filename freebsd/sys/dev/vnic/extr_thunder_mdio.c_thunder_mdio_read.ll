; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_mdio_softc = type { i64 }

@MODE_IEEE_C22 = common dso_local global i64 0, align 8
@SMI_CMD_PHY_OP_C22_READ = common dso_local global i32 0, align 4
@SMI_CMD_PHY_OP_C45_READ = common dso_local global i32 0, align 4
@SMI_CMD_PHY_ADR_SHIFT = common dso_local global i32 0, align 4
@SMI_CMD_PHY_ADR_MASK = common dso_local global i32 0, align 4
@SMI_CMD_PHY_REG_ADR_SHIFT = common dso_local global i32 0, align 4
@SMI_CMD_PHY_REG_ADR_MASK = common dso_local global i32 0, align 4
@SMI_CMD = common dso_local global i32 0, align 4
@SMI_RD_DAT = common dso_local global i32 0, align 4
@SMI_RD_DAT_PENDING = common dso_local global i32 0, align 4
@SMI_RD_DAT_VAL = common dso_local global i32 0, align 4
@SMI_RD_DAT_DAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @thunder_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_mdio_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thunder_mdio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.thunder_mdio_softc* @device_get_softc(i32 %13)
  store %struct.thunder_mdio_softc* %14, %struct.thunder_mdio_softc** %8, align 8
  %15 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %16 = load i64, i64* @MODE_IEEE_C22, align 8
  %17 = call i32 @thunder_mdio_set_mode(%struct.thunder_mdio_softc* %15, i64 %16)
  store i32 0, i32* %9, align 4
  %18 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %19 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MODE_IEEE_C22, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @SMI_CMD_PHY_OP_C22_READ, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load i32, i32* @SMI_CMD_PHY_OP_C45_READ, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @thunder_mdio_c45_addr(%struct.thunder_mdio_softc* %31, i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 31
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %23
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SMI_CMD_PHY_ADR_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @SMI_CMD_PHY_ADR_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SMI_CMD_PHY_REG_ADR_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @SMI_CMD_PHY_REG_ADR_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %59 = load i32, i32* @SMI_CMD, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @mdio_reg_write(%struct.thunder_mdio_softc* %58, i32 %59, i32 %60)
  store i32 1000, i32* %11, align 4
  br label %62

62:                                               ; preds = %77, %43
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %8, align 8
  %67 = load i32, i32* @SMI_RD_DAT, align 4
  %68 = call i32 @mdio_reg_read(%struct.thunder_mdio_softc* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @SMI_RD_DAT_PENDING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i32 @DELAY(i32 1000)
  br label %76

75:                                               ; preds = %65
  br label %80

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %11, align 4
  br label %62

80:                                               ; preds = %75, %62
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @SMI_RD_DAT_VAL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @SMI_RD_DAT_DAT_MASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %85, %37
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.thunder_mdio_softc* @device_get_softc(i32) #1

declare dso_local i32 @thunder_mdio_set_mode(%struct.thunder_mdio_softc*, i64) #1

declare dso_local i32 @thunder_mdio_c45_addr(%struct.thunder_mdio_softc*, i32, i32) #1

declare dso_local i32 @mdio_reg_write(%struct.thunder_mdio_softc*, i32, i32) #1

declare dso_local i32 @mdio_reg_read(%struct.thunder_mdio_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
