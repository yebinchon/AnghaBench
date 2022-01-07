; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_getword_pnic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_getword_pnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@DC_PN_SIOCTL = common dso_local global i32 0, align 4
@DC_PN_EEOPCODE_READ = common dso_local global i32 0, align 4
@DC_TIMEOUT = common dso_local global i32 0, align 4
@DC_SIO = common dso_local global i32 0, align 4
@DC_PN_SIOCTL_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*, i32, i64*)* @dc_eeprom_getword_pnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_eeprom_getword_pnic(%struct.dc_softc* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.dc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %10 = load i32, i32* @DC_PN_SIOCTL, align 4
  %11 = load i32, i32* @DC_PN_EEOPCODE_READ, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @CSR_WRITE_4(%struct.dc_softc* %9, i32 %10, i32 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @DC_TIMEOUT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = call i32 @DELAY(i32 1)
  %21 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %22 = load i32, i32* @DC_SIO, align 4
  %23 = call i32 @CSR_READ_4(%struct.dc_softc* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @DC_PN_SIOCTL_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 65535
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %37

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %15

37:                                               ; preds = %28, %15
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
