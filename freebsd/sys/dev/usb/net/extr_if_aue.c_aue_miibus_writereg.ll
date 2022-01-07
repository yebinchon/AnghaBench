; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aue_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AUE_PHY_DATA = common dso_local global i32 0, align 4
@AUE_PHY_ADDR = common dso_local global i32 0, align 4
@AUE_PHY_CTL = common dso_local global i32 0, align 4
@AUE_PHYCTL_WRITE = common dso_local global i32 0, align 4
@AUE_TIMEOUT = common dso_local global i32 0, align 4
@AUE_PHYCTL_DONE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MII write timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @aue_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aue_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aue_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.aue_softc* @device_get_softc(i32 %13)
  store %struct.aue_softc* %14, %struct.aue_softc** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %83

18:                                               ; preds = %4
  %19 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %20 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %19, i32 0, i32 1
  %21 = call i32 @mtx_owned(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %26 = call i32 @AUE_LOCK(%struct.aue_softc* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %29 = load i32, i32* @AUE_PHY_DATA, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @aue_csr_write_2(%struct.aue_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %33 = load i32, i32* @AUE_PHY_ADDR, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @aue_csr_write_1(%struct.aue_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %37 = load i32, i32* @AUE_PHY_CTL, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @AUE_PHYCTL_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @aue_csr_write_1(%struct.aue_softc* %36, i32 %37, i32 %40)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %63, %27
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @AUE_TIMEOUT, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %48 = load i32, i32* @AUE_PHY_CTL, align 4
  %49 = call i32 @aue_csr_read_1(%struct.aue_softc* %47, i32 %48)
  %50 = load i32, i32* @AUE_PHYCTL_DONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %66

54:                                               ; preds = %46
  %55 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %56 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %55, i32 0, i32 0
  %57 = load i32, i32* @hz, align 4
  %58 = sdiv i32 %57, 100
  %59 = call i64 @uether_pause(%struct.TYPE_2__* %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %66

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %42

66:                                               ; preds = %61, %53, %42
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @AUE_TIMEOUT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %72 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %66
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load %struct.aue_softc*, %struct.aue_softc** %10, align 8
  %81 = call i32 @AUE_UNLOCK(%struct.aue_softc* %80)
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %17
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.aue_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AUE_LOCK(%struct.aue_softc*) #1

declare dso_local i32 @aue_csr_write_2(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @aue_csr_write_1(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @aue_csr_read_1(%struct.aue_softc*, i32) #1

declare dso_local i64 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AUE_UNLOCK(%struct.aue_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
