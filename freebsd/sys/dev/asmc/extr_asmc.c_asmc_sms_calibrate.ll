; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_sms_calibrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_sms_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asmc_softc = type { i32, i32, i32 }

@ASMC_KEY_SMS_X = common dso_local global i32 0, align 4
@ASMC_KEY_SMS_Y = common dso_local global i32 0, align 4
@ASMC_KEY_SMS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @asmc_sms_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmc_sms_calibrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asmc_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.asmc_softc* @device_get_softc(i32 %4)
  store %struct.asmc_softc* %5, %struct.asmc_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @ASMC_KEY_SMS_X, align 4
  %8 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %8, i32 0, i32 2
  %10 = call i32 @asmc_sms_read(i32 %6, i32 %7, i32* %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @ASMC_KEY_SMS_Y, align 4
  %13 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %13, i32 0, i32 1
  %15 = call i32 @asmc_sms_read(i32 %11, i32 %12, i32* %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @ASMC_KEY_SMS_Z, align 4
  %18 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %18, i32 0, i32 0
  %20 = call i32 @asmc_sms_read(i32 %16, i32 %17, i32* %19)
  ret void
}

declare dso_local %struct.asmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @asmc_sms_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
