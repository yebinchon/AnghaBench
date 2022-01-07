; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32, i32 }

@PIIX4_SMBHSTSTS = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_BUSY = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@PIIX4_SMBSLVCNT = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_INTR = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_ERR = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_BUSC = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_FAIL = common dso_local global i32 0, align 4
@PIIX4_SMBSLVSTS = common dso_local global i32 0, align 4
@PIIX4_SMBSLVSTS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsmb_softc*)* @intsmb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_free(%struct.intsmb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intsmb_softc*, align 8
  store %struct.intsmb_softc* %0, %struct.intsmb_softc** %3, align 8
  %4 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %5 = call i32 @INTSMB_LOCK_ASSERT(%struct.intsmb_softc* %4)
  %6 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %7 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PIIX4_SMBHSTSTS, align 4
  %10 = call i32 @bus_read_1(i32 %8, i32 %9)
  %11 = load i32, i32* @PIIX4_SMBHSTSTAT_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %16 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %14
  %22 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PIIX4_SMBSLVCNT, align 4
  %28 = call i32 @bus_write_1(i32 %26, i32 %27, i32 0)
  %29 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %30 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PIIX4_SMBHSTSTS, align 4
  %33 = load i32, i32* @PIIX4_SMBHSTSTAT_INTR, align 4
  %34 = load i32, i32* @PIIX4_SMBHSTSTAT_ERR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PIIX4_SMBHSTSTAT_BUSC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PIIX4_SMBHSTSTAT_FAIL, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @bus_write_1(i32 %31, i32 %32, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %21, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @INTSMB_LOCK_ASSERT(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
