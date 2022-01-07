; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mii_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mii_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32 }

@HME_MIFI_CFG = common dso_local global i32 0, align 4
@HME_PHYAD_EXTERNAL = common dso_local global i32 0, align 4
@HME_MIF_CFG_PHY = common dso_local global i32 0, align 4
@MII_COMMAND_START = common dso_local global i32 0, align 4
@HME_MIF_FO_ST_SHIFT = common dso_local global i32 0, align 4
@HME_MIF_FO_TAMSB = common dso_local global i32 0, align 4
@MII_COMMAND_READ = common dso_local global i32 0, align 4
@HME_MIF_FO_OPC_SHIFT = common dso_local global i32 0, align 4
@HME_MIF_FO_PHYAD_SHIFT = common dso_local global i32 0, align 4
@HME_MIF_FO_REGAD_SHIFT = common dso_local global i32 0, align 4
@HME_MIFI_FO = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@HME_MIF_FO_TALSB = common dso_local global i32 0, align 4
@HME_MIF_FO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mii_read timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hme_mii_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hme_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.hme_softc* @device_get_softc(i32 %11)
  store %struct.hme_softc* %12, %struct.hme_softc** %8, align 8
  %13 = load %struct.hme_softc*, %struct.hme_softc** %8, align 8
  %14 = load i32, i32* @HME_MIFI_CFG, align 4
  %15 = call i32 @HME_MIF_READ_4(%struct.hme_softc* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @HME_PHYAD_EXTERNAL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @HME_MIF_CFG_PHY, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @HME_MIF_CFG_PHY, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.hme_softc*, %struct.hme_softc** %8, align 8
  %30 = load i32, i32* @HME_MIFI_CFG, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @HME_MIF_WRITE_4(%struct.hme_softc* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @MII_COMMAND_START, align 4
  %34 = load i32, i32* @HME_MIF_FO_ST_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @HME_MIF_FO_TAMSB, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MII_COMMAND_READ, align 4
  %39 = load i32, i32* @HME_MIF_FO_OPC_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HME_MIF_FO_PHYAD_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @HME_MIF_FO_REGAD_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.hme_softc*, %struct.hme_softc** %8, align 8
  %51 = load i32, i32* @HME_MIFI_FO, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @HME_MIF_WRITE_4(%struct.hme_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.hme_softc*, %struct.hme_softc** %8, align 8
  %55 = load i32, i32* @HME_MIFI_FO, align 4
  %56 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %57 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @HME_MIF_BARRIER(%struct.hme_softc* %54, i32 %55, i32 4, i32 %58)
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %77, %28
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 100
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = call i32 @DELAY(i32 1)
  %65 = load %struct.hme_softc*, %struct.hme_softc** %8, align 8
  %66 = load i32, i32* @HME_MIFI_FO, align 4
  %67 = call i32 @HME_MIF_READ_4(%struct.hme_softc* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @HME_MIF_FO_TALSB, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @HME_MIF_FO_DATA, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %4, align 4
  br label %85

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %60

80:                                               ; preds = %60
  %81 = load %struct.hme_softc*, %struct.hme_softc** %8, align 8
  %82 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %72
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.hme_softc* @device_get_softc(i32) #1

declare dso_local i32 @HME_MIF_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @HME_MIF_WRITE_4(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @HME_MIF_BARRIER(%struct.hme_softc*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
