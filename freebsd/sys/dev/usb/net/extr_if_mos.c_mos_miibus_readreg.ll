; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mos_softc = type { i32 }

@MOS_PHY_DATA = common dso_local global i32 0, align 4
@MOS_PHY_CTL = common dso_local global i32 0, align 4
@MOS_PHYCTL_PHYADDR = common dso_local global i32 0, align 4
@MOS_PHYCTL_READ = common dso_local global i32 0, align 4
@MOS_PHY_STS = common dso_local global i32 0, align 4
@MOS_PHYSTS_PHYREG = common dso_local global i32 0, align 4
@MOS_PHYSTS_PENDING = common dso_local global i32 0, align 4
@MOS_TIMEOUT = common dso_local global i32 0, align 4
@MOS_PHYSTS_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MII read timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mos_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mos_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.mos_softc* @device_get_softc(i32 %12)
  store %struct.mos_softc* %13, %struct.mos_softc** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @USETW(i32 %14, i32 0)
  %16 = load %struct.mos_softc*, %struct.mos_softc** %7, align 8
  %17 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_owned(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.mos_softc*, %struct.mos_softc** %7, align 8
  %23 = call i32 @MOS_LOCK(%struct.mos_softc* %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.mos_softc*, %struct.mos_softc** %7, align 8
  %26 = load i32, i32* @MOS_PHY_DATA, align 4
  %27 = call i32 @mos_reg_write_2(%struct.mos_softc* %25, i32 %26, i32 0)
  %28 = load %struct.mos_softc*, %struct.mos_softc** %7, align 8
  %29 = load i32, i32* @MOS_PHY_CTL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MOS_PHYCTL_PHYADDR, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @MOS_PHYCTL_READ, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mos_reg_write_1(%struct.mos_softc* %28, i32 %29, i32 %34)
  %36 = load %struct.mos_softc*, %struct.mos_softc** %7, align 8
  %37 = load i32, i32* @MOS_PHY_STS, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MOS_PHYSTS_PHYREG, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @MOS_PHYSTS_PENDING, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mos_reg_write_1(%struct.mos_softc* %36, i32 %37, i32 %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %57, %24
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MOS_TIMEOUT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.mos_softc*, %struct.mos_softc** %7, align 8
  %50 = load i32, i32* @MOS_PHY_STS, align 4
  %51 = call i32 @mos_reg_read_1(%struct.mos_softc* %49, i32 %50)
  %52 = load i32, i32* @MOS_PHYSTS_READY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %60

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %44

60:                                               ; preds = %55, %44
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @MOS_TIMEOUT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.mos_softc*, %struct.mos_softc** %7, align 8
  %68 = load i32, i32* @MOS_PHY_DATA, align 4
  %69 = call i32 @mos_reg_read_2(%struct.mos_softc* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load %struct.mos_softc*, %struct.mos_softc** %7, align 8
  %74 = call i32 @MOS_UNLOCK(%struct.mos_softc* %73)
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local %struct.mos_softc* @device_get_softc(i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @MOS_LOCK(%struct.mos_softc*) #1

declare dso_local i32 @mos_reg_write_2(%struct.mos_softc*, i32, i32) #1

declare dso_local i32 @mos_reg_write_1(%struct.mos_softc*, i32, i32) #1

declare dso_local i32 @mos_reg_read_1(%struct.mos_softc*, i32) #1

declare dso_local i32 @MOS_DPRINTFN(i8*) #1

declare dso_local i32 @mos_reg_read_2(%struct.mos_softc*, i32) #1

declare dso_local i32 @MOS_UNLOCK(%struct.mos_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
