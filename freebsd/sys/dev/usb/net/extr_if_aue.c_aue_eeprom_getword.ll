; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_eeprom_getword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_eeprom_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aue_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AUE_EE_REG = common dso_local global i32 0, align 4
@AUE_EE_CTL = common dso_local global i32 0, align 4
@AUE_EECTL_READ = common dso_local global i32 0, align 4
@AUE_TIMEOUT = common dso_local global i32 0, align 4
@AUE_EECTL_DONE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EEPROM read timed out\0A\00", align 1
@AUE_EE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aue_softc*, i32)* @aue_eeprom_getword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aue_eeprom_getword(%struct.aue_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aue_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aue_softc* %0, %struct.aue_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %7 = load i32, i32* @AUE_EE_REG, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @aue_csr_write_1(%struct.aue_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %11 = load i32, i32* @AUE_EE_CTL, align 4
  %12 = load i32, i32* @AUE_EECTL_READ, align 4
  %13 = call i32 @aue_csr_write_1(%struct.aue_softc* %10, i32 %11, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %35, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AUE_TIMEOUT, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %20 = load i32, i32* @AUE_EE_CTL, align 4
  %21 = call i32 @aue_csr_read_1(%struct.aue_softc* %19, i32 %20)
  %22 = load i32, i32* @AUE_EECTL_DONE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %38

26:                                               ; preds = %18
  %27 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %28 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %27, i32 0, i32 0
  %29 = load i32, i32* @hz, align 4
  %30 = sdiv i32 %29, 100
  %31 = call i64 @uether_pause(%struct.TYPE_2__* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %14

38:                                               ; preds = %33, %25, %14
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @AUE_TIMEOUT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %44 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %50 = load i32, i32* @AUE_EE_DATA, align 4
  %51 = call i32 @aue_csr_read_2(%struct.aue_softc* %49, i32 %50)
  ret i32 %51
}

declare dso_local i32 @aue_csr_write_1(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @aue_csr_read_1(%struct.aue_softc*, i32) #1

declare dso_local i64 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @aue_csr_read_2(%struct.aue_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
