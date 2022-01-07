; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { i32 (%struct.bwn_mac.0*)*, i32 (%struct.bwn_mac.1*, i32)*, i32 (%struct.bwn_mac.2*)*, i32 (%struct.bwn_mac.3*)*, i32 }
%struct.bwn_mac.0 = type opaque
%struct.bwn_mac.1 = type opaque
%struct.bwn_mac.2 = type opaque
%struct.bwn_mac.3 = type opaque
%struct.bwn_softc = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"PHY init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to switch default channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 1
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  store %struct.bwn_softc* %8, %struct.bwn_softc** %4, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32 (%struct.bwn_mac.3*)*, i32 (%struct.bwn_mac.3*)** %11, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = bitcast %struct.bwn_mac* %13 to %struct.bwn_mac.3*
  %15 = call i32 %12(%struct.bwn_mac.3* %14)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %17 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %20 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.bwn_mac.1*, i32)*, i32 (%struct.bwn_mac.1*, i32)** %21, align 8
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %24 = bitcast %struct.bwn_mac* %23 to %struct.bwn_mac.1*
  %25 = call i32 %22(%struct.bwn_mac.1* %24, i32 1)
  %26 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %27 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.bwn_mac.0*)*, i32 (%struct.bwn_mac.0*)** %28, align 8
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %31 = bitcast %struct.bwn_mac* %30 to %struct.bwn_mac.0*
  %32 = call i32 %29(%struct.bwn_mac.0* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %73

40:                                               ; preds = %1
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %43 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32 (%struct.bwn_mac.3*)*, i32 (%struct.bwn_mac.3*)** %44, align 8
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = bitcast %struct.bwn_mac* %46 to %struct.bwn_mac.3*
  %48 = call i32 %45(%struct.bwn_mac.3* %47)
  %49 = call i32 @bwn_switch_channel(%struct.bwn_mac* %41, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %54 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %58

57:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %82

58:                                               ; preds = %52
  %59 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %60 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32 (%struct.bwn_mac.2*)*, i32 (%struct.bwn_mac.2*)** %61, align 8
  %63 = icmp ne i32 (%struct.bwn_mac.2*)* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %66 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32 (%struct.bwn_mac.2*)*, i32 (%struct.bwn_mac.2*)** %67, align 8
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %70 = bitcast %struct.bwn_mac* %69 to %struct.bwn_mac.2*
  %71 = call i32 %68(%struct.bwn_mac.2* %70)
  br label %72

72:                                               ; preds = %64, %58
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %75 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (%struct.bwn_mac.1*, i32)*, i32 (%struct.bwn_mac.1*, i32)** %76, align 8
  %78 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %79 = bitcast %struct.bwn_mac* %78 to %struct.bwn_mac.1*
  %80 = call i32 %77(%struct.bwn_mac.1* %79, i32 0)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %73, %57
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bwn_switch_channel(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
