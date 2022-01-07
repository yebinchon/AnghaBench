; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mii_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_mii_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32 }

@HME_MIFI_CFG = common dso_local global i32 0, align 4
@HME_PHYAD_EXTERNAL = common dso_local global i32 0, align 4
@HME_MIF_CFG_PHY = common dso_local global i32 0, align 4
@MII_COMMAND_START = common dso_local global i32 0, align 4
@HME_MIF_FO_ST_SHIFT = common dso_local global i32 0, align 4
@HME_MIF_FO_TAMSB = common dso_local global i32 0, align 4
@MII_COMMAND_WRITE = common dso_local global i32 0, align 4
@HME_MIF_FO_OPC_SHIFT = common dso_local global i32 0, align 4
@HME_MIF_FO_PHYAD_SHIFT = common dso_local global i32 0, align 4
@HME_MIF_FO_REGAD_SHIFT = common dso_local global i32 0, align 4
@HME_MIF_FO_DATA = common dso_local global i32 0, align 4
@HME_MIFI_FO = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@HME_MIF_FO_TALSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mii_write timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hme_mii_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hme_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.hme_softc* @device_get_softc(i32 %13)
  store %struct.hme_softc* %14, %struct.hme_softc** %10, align 8
  %15 = load %struct.hme_softc*, %struct.hme_softc** %10, align 8
  %16 = load i32, i32* @HME_MIFI_CFG, align 4
  %17 = call i32 @HME_MIF_READ_4(%struct.hme_softc* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HME_PHYAD_EXTERNAL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @HME_MIF_CFG_PHY, align 4
  %23 = load i32, i32* %12, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %12, align 4
  br label %30

25:                                               ; preds = %4
  %26 = load i32, i32* @HME_MIF_CFG_PHY, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.hme_softc*, %struct.hme_softc** %10, align 8
  %32 = load i32, i32* @HME_MIFI_CFG, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @HME_MIF_WRITE_4(%struct.hme_softc* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @MII_COMMAND_START, align 4
  %36 = load i32, i32* @HME_MIF_FO_ST_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @HME_MIF_FO_TAMSB, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MII_COMMAND_WRITE, align 4
  %41 = load i32, i32* @HME_MIF_FO_OPC_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @HME_MIF_FO_PHYAD_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @HME_MIF_FO_REGAD_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @HME_MIF_FO_DATA, align 4
  %54 = and i32 %52, %53
  %55 = or i32 %51, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.hme_softc*, %struct.hme_softc** %10, align 8
  %57 = load i32, i32* @HME_MIFI_FO, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @HME_MIF_WRITE_4(%struct.hme_softc* %56, i32 %57, i32 %58)
  %60 = load %struct.hme_softc*, %struct.hme_softc** %10, align 8
  %61 = load i32, i32* @HME_MIFI_FO, align 4
  %62 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %63 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @HME_MIF_BARRIER(%struct.hme_softc* %60, i32 %61, i32 4, i32 %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %80, %30
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 100
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = call i32 @DELAY(i32 1)
  %71 = load %struct.hme_softc*, %struct.hme_softc** %10, align 8
  %72 = load i32, i32* @HME_MIFI_FO, align 4
  %73 = call i32 @HME_MIF_READ_4(%struct.hme_softc* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @HME_MIF_FO_TALSB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %88

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %66

83:                                               ; preds = %66
  %84 = load %struct.hme_softc*, %struct.hme_softc** %10, align 8
  %85 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %5, align 4
  ret i32 %89
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
