; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_eeprom_channel_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_eeprom_channel_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_eeprom_chan = type { i32 }

@WPI_EEPROM_CHAN_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE = common dso_local global i32 0, align 4
@WPI_EEPROM_CHAN_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NOADHOC = common dso_local global i32 0, align 4
@WPI_EEPROM_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DFS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NOHOSTAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpi_eeprom_chan*)* @wpi_eeprom_channel_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_eeprom_channel_flags(%struct.wpi_eeprom_chan* %0) #0 {
  %2 = alloca %struct.wpi_eeprom_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.wpi_eeprom_chan* %0, %struct.wpi_eeprom_chan** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wpi_eeprom_chan*, %struct.wpi_eeprom_chan** %2, align 8
  %5 = getelementptr inbounds %struct.wpi_eeprom_chan, %struct.wpi_eeprom_chan* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WPI_EEPROM_CHAN_ACTIVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @IEEE80211_CHAN_PASSIVE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.wpi_eeprom_chan*, %struct.wpi_eeprom_chan** %2, align 8
  %16 = getelementptr inbounds %struct.wpi_eeprom_chan, %struct.wpi_eeprom_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WPI_EEPROM_CHAN_IBSS, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @IEEE80211_CHAN_NOADHOC, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.wpi_eeprom_chan*, %struct.wpi_eeprom_chan** %2, align 8
  %27 = getelementptr inbounds %struct.wpi_eeprom_chan, %struct.wpi_eeprom_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WPI_EEPROM_CHAN_RADAR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @IEEE80211_CHAN_DFS, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @IEEE80211_CHAN_NOADHOC, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @IEEE80211_CHAN_NOADHOC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @IEEE80211_CHAN_NOHOSTAP, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
