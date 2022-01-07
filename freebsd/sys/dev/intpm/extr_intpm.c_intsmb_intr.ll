; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i64, i32 }

@PIIX4_SMBHSTSTS = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_BUSY = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_INTR = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_ERR = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_BUSC = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_FAIL = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_INTREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsmb_softc*)* @intsmb_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_intr(%struct.intsmb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intsmb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intsmb_softc* %0, %struct.intsmb_softc** %3, align 8
  %6 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %7 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PIIX4_SMBHSTSTS, align 4
  %10 = call i32 @bus_read_1(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PIIX4_SMBHSTSTAT_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PIIX4_SMBHSTSTAT_INTR, align 4
  %19 = load i32, i32* @PIIX4_SMBHSTSTAT_ERR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PIIX4_SMBHSTSTAT_BUSC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PIIX4_SMBHSTSTAT_FAIL, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %17, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %16
  %28 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PIIX4_SMBHSTCNT, align 4
  %32 = call i32 @bus_read_1(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PIIX4_SMBHSTCNT, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PIIX4_SMBHSTCNT_INTREN, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @bus_write_1(i32 %35, i32 %36, i32 %40)
  %42 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %27
  %47 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %48 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %50 = call i32 @wakeup(%struct.intsmb_softc* %49)
  br label %51

51:                                               ; preds = %46, %27
  store i32 0, i32* %2, align 4
  br label %53

52:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %51, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @wakeup(%struct.intsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
