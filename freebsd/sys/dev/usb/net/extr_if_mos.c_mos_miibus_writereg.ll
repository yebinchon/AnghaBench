; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mos_softc = type { i32 }

@MOS_PHY_DATA = common dso_local global i32 0, align 4
@MOS_PHY_CTL = common dso_local global i32 0, align 4
@MOS_PHYCTL_PHYADDR = common dso_local global i32 0, align 4
@MOS_PHYCTL_WRITE = common dso_local global i32 0, align 4
@MOS_PHY_STS = common dso_local global i32 0, align 4
@MOS_PHYSTS_PHYREG = common dso_local global i32 0, align 4
@MOS_PHYSTS_PENDING = common dso_local global i32 0, align 4
@MOS_TIMEOUT = common dso_local global i32 0, align 4
@MOS_PHYSTS_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MII write timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mos_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mos_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.mos_softc* @device_get_softc(i32 %12)
  store %struct.mos_softc* %13, %struct.mos_softc** %9, align 8
  %14 = load %struct.mos_softc*, %struct.mos_softc** %9, align 8
  %15 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_owned(i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.mos_softc*, %struct.mos_softc** %9, align 8
  %21 = call i32 @MOS_LOCK(%struct.mos_softc* %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.mos_softc*, %struct.mos_softc** %9, align 8
  %24 = load i32, i32* @MOS_PHY_DATA, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @mos_reg_write_2(%struct.mos_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.mos_softc*, %struct.mos_softc** %9, align 8
  %28 = load i32, i32* @MOS_PHY_CTL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MOS_PHYCTL_PHYADDR, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @MOS_PHYCTL_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @mos_reg_write_1(%struct.mos_softc* %27, i32 %28, i32 %33)
  %35 = load %struct.mos_softc*, %struct.mos_softc** %9, align 8
  %36 = load i32, i32* @MOS_PHY_STS, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MOS_PHYSTS_PHYREG, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @MOS_PHYSTS_PENDING, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @mos_reg_write_1(%struct.mos_softc* %35, i32 %36, i32 %41)
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %56, %22
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @MOS_TIMEOUT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.mos_softc*, %struct.mos_softc** %9, align 8
  %49 = load i32, i32* @MOS_PHY_STS, align 4
  %50 = call i32 @mos_reg_read_1(%struct.mos_softc* %48, i32 %49)
  %51 = load i32, i32* @MOS_PHYSTS_READY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %59

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %43

59:                                               ; preds = %54, %43
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @MOS_TIMEOUT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load %struct.mos_softc*, %struct.mos_softc** %9, align 8
  %70 = call i32 @MOS_UNLOCK(%struct.mos_softc* %69)
  br label %71

71:                                               ; preds = %68, %65
  ret i32 0
}

declare dso_local %struct.mos_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @MOS_LOCK(%struct.mos_softc*) #1

declare dso_local i32 @mos_reg_write_2(%struct.mos_softc*, i32, i32) #1

declare dso_local i32 @mos_reg_write_1(%struct.mos_softc*, i32, i32) #1

declare dso_local i32 @mos_reg_read_1(%struct.mos_softc*, i32) #1

declare dso_local i32 @MOS_DPRINTFN(i8*) #1

declare dso_local i32 @MOS_UNLOCK(%struct.mos_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
