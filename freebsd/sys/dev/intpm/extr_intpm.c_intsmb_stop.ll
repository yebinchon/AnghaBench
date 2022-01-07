; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32, i64, i32, i32, i64 }

@cold = common dso_local global i64 0, align 8
@PWAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SMBWAI\00", align 1
@hz = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTS = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_BUSY = common dso_local global i32 0, align 4
@PIIX4_SMBHSTSTAT_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown cause why?\0A\00", align 1
@PIIX4_SMBSLVCNT = common dso_local global i32 0, align 4
@PIIX4_SMBSLVCNT_ALTEN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SMB_ETIMEOUT = common dso_local global i32 0, align 4
@SMB_EABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsmb_softc*)* @intsmb_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_stop(%struct.intsmb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intsmb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intsmb_softc* %0, %struct.intsmb_softc** %3, align 8
  %6 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %7 = call i32 @INTSMB_LOCK_ASSERT(%struct.intsmb_softc* %6)
  %8 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @cold, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %17 = call i32 @intsmb_stop_poll(%struct.intsmb_softc* %16)
  store i32 %17, i32* %2, align 4
  br label %77

18:                                               ; preds = %12
  %19 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %20 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %20, i32 0, i32 3
  %22 = load i32, i32* @PWAIT, align 4
  %23 = load i32, i32* @PCATCH, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @hz, align 4
  %26 = sdiv i32 %25, 8
  %27 = call i32 @msleep(%struct.intsmb_softc* %19, i32* %21, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %18
  %31 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PIIX4_SMBHSTSTS, align 4
  %35 = call i32 @bus_read_1(i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PIIX4_SMBHSTSTAT_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %30
  %41 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %42 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @intsmb_error(i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @PIIX4_SMBHSTSTAT_INTR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %55 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48, %40
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %77

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %60, %18
  %62 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %63 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.intsmb_softc*, %struct.intsmb_softc** %3, align 8
  %65 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PIIX4_SMBSLVCNT, align 4
  %68 = load i32, i32* @PIIX4_SMBSLVCNT_ALTEN, align 4
  %69 = call i32 @bus_write_1(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @EWOULDBLOCK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @SMB_ETIMEOUT, align 4
  store i32 %74, i32* %2, align 4
  br label %77

75:                                               ; preds = %61
  %76 = load i32, i32* @SMB_EABORT, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %73, %58, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @INTSMB_LOCK_ASSERT(%struct.intsmb_softc*) #1

declare dso_local i32 @intsmb_stop_poll(%struct.intsmb_softc*) #1

declare dso_local i32 @msleep(%struct.intsmb_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @intsmb_error(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
