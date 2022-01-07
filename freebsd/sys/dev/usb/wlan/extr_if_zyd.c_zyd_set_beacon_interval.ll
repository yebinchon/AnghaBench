; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_set_beacon_interval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_set_beacon_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32, i32, i32 }

@ZYD_CR_ATIM_WND_PERIOD = common dso_local global i32 0, align 4
@ZYD_CR_PRE_TBTT = common dso_local global i32 0, align 4
@ZYD_CR_BCN_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*, i32)* @zyd_set_beacon_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_set_beacon_interval(%struct.zyd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.zyd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.zyd_softc* %0, %struct.zyd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %8 = load i32, i32* @ZYD_CR_ATIM_WND_PERIOD, align 4
  %9 = call i32 @zyd_read32_m(%struct.zyd_softc* %7, i32 %8, i8** %6)
  %10 = load i8*, i8** %6, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %13 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %15 = load i32, i32* @ZYD_CR_PRE_TBTT, align 4
  %16 = call i32 @zyd_read32_m(%struct.zyd_softc* %14, i32 %15, i8** %6)
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %25 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 5
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %29, i32 0, i32 2
  store i32 5, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %33 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %38 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %41 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36, %31
  %45 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %46 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %50 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %36
  %52 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %53 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %56 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %61 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %65 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %51
  %67 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %68 = load i32, i32* @ZYD_CR_ATIM_WND_PERIOD, align 4
  %69 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %70 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @zyd_write32_m(%struct.zyd_softc* %67, i32 %68, i32 %71)
  %73 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %74 = load i32, i32* @ZYD_CR_PRE_TBTT, align 4
  %75 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %76 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @zyd_write32_m(%struct.zyd_softc* %73, i32 %74, i32 %77)
  %79 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %80 = load i32, i32* @ZYD_CR_BCN_INTERVAL, align 4
  %81 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %82 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @zyd_write32_m(%struct.zyd_softc* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @zyd_read32_m(%struct.zyd_softc*, i32, i8**) #1

declare dso_local i32 @zyd_write32_m(%struct.zyd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
