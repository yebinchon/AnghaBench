; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_fetch_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_fetch_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ahd_devinfo = type { i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@TARGET = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i64 0, align 8
@ROLE_INITIATOR = common dso_local global i64 0, align 8
@SEQ_FLAGS = common dso_local global i32 0, align 4
@CMDPHASE_PENDING = common dso_local global i32 0, align 4
@TARGIDIN = common dso_local global i32 0, align 4
@OID = common dso_local global i32 0, align 4
@TOWNID = common dso_local global i32 0, align 4
@IOWNID = common dso_local global i32 0, align 4
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*)* @ahd_fetch_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_fetch_devinfo(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.ahd_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %4, align 8
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = call i32 @ahd_save_modes(%struct.ahd_softc* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = load i32, i32* @AHD_MODE_SCSI, align 4
  %13 = load i32, i32* @AHD_MODE_SCSI, align 4
  %14 = call i32 @ahd_set_modes(%struct.ahd_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = load i32, i32* @SSTAT0, align 4
  %17 = call i32 @ahd_inb(%struct.ahd_softc* %15, i32 %16)
  %18 = load i32, i32* @TARGET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @ROLE_TARGET, align 8
  store i64 %22, i64* %7, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @ROLE_INITIATOR, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @ROLE_TARGET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = load i32, i32* @SEQ_FLAGS, align 4
  %32 = call i32 @ahd_inb(%struct.ahd_softc* %30, i32 %31)
  %33 = load i32, i32* @CMDPHASE_PENDING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %38 = load i32, i32* @TARGIDIN, align 4
  %39 = call i32 @ahd_inb(%struct.ahd_softc* %37, i32 %38)
  %40 = load i32, i32* @OID, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %55

42:                                               ; preds = %29, %25
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @ROLE_TARGET, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %48 = load i32, i32* @TOWNID, align 4
  %49 = call i32 @ahd_inb(%struct.ahd_softc* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %52 = load i32, i32* @IOWNID, align 4
  %53 = call i32 @ahd_inb(%struct.ahd_softc* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = load i32, i32* @SAVED_SCSIID, align 4
  %58 = call i32 @ahd_inb(%struct.ahd_softc* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @SCSIID_TARGET(%struct.ahd_softc* %61, i32 %62)
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %65 = load i32, i32* @SAVED_LUN, align 4
  %66 = call i32 @ahd_inb(%struct.ahd_softc* %64, i32 %65)
  %67 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @SCSIID_CHANNEL(%struct.ahd_softc* %67, i32 %68)
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %59, i32 %60, i32 %63, i32 %66, i32 %69, i64 %70)
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ahd_restore_modes(%struct.ahd_softc* %72, i32 %73)
  ret void
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @SCSIID_TARGET(%struct.ahd_softc*, i32) #1

declare dso_local i32 @SCSIID_CHANNEL(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
