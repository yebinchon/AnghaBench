; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aue_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AUE_FLAG_DUAL_PHY = common dso_local global i32 0, align 4
@AUE_PHY_ADDR = common dso_local global i32 0, align 4
@AUE_PHY_CTL = common dso_local global i32 0, align 4
@AUE_PHYCTL_READ = common dso_local global i32 0, align 4
@AUE_TIMEOUT = common dso_local global i32 0, align 4
@AUE_PHYCTL_DONE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MII read timed out\0A\00", align 1
@AUE_PHY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @aue_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aue_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aue_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.aue_softc* @device_get_softc(i32 %11)
  store %struct.aue_softc* %12, %struct.aue_softc** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %14 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %13, i32 0, i32 2
  %15 = call i32 @mtx_owned(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %20 = call i32 @AUE_LOCK(%struct.aue_softc* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %23 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AUE_FLAG_DUAL_PHY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %82

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %35 = load i32, i32* @AUE_PHY_ADDR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @aue_csr_write_1(%struct.aue_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %39 = load i32, i32* @AUE_PHY_CTL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @AUE_PHYCTL_READ, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @aue_csr_write_1(%struct.aue_softc* %38, i32 %39, i32 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %65, %33
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @AUE_TIMEOUT, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %50 = load i32, i32* @AUE_PHY_CTL, align 4
  %51 = call i32 @aue_csr_read_1(%struct.aue_softc* %49, i32 %50)
  %52 = load i32, i32* @AUE_PHYCTL_DONE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %68

56:                                               ; preds = %48
  %57 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %58 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %57, i32 0, i32 1
  %59 = load i32, i32* @hz, align 4
  %60 = sdiv i32 %59, 100
  %61 = call i64 @uether_pause(%struct.TYPE_2__* %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %68

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %44

68:                                               ; preds = %63, %55, %44
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @AUE_TIMEOUT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %74 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %72, %68
  %79 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %80 = load i32, i32* @AUE_PHY_DATA, align 4
  %81 = call i32 @aue_csr_read_2(%struct.aue_softc* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %31
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load %struct.aue_softc*, %struct.aue_softc** %7, align 8
  %87 = call i32 @AUE_UNLOCK(%struct.aue_softc* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local %struct.aue_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AUE_LOCK(%struct.aue_softc*) #1

declare dso_local i32 @aue_csr_write_1(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @aue_csr_read_1(%struct.aue_softc*, i32) #1

declare dso_local i64 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @aue_csr_read_2(%struct.aue_softc*, i32) #1

declare dso_local i32 @AUE_UNLOCK(%struct.aue_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
