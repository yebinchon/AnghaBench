; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_eeprom_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_eeprom_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32 }

@STGE_TIMEOUT = common dso_local global i32 0, align 4
@STGE_EepromCtrl = common dso_local global i32 0, align 4
@EC_EepromBusy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stge_softc*)* @stge_eeprom_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_eeprom_wait(%struct.stge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @STGE_TIMEOUT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = call i32 @DELAY(i32 1000)
  %11 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %12 = load i32, i32* @STGE_EepromCtrl, align 4
  %13 = call i32 @CSR_READ_2(%struct.stge_softc* %11, i32 %12)
  %14 = load i32, i32* @EC_EepromBusy, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %23

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.stge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
