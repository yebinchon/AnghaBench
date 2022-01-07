; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_devreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_devreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.ahc_tmode_tstate** }
%struct.ahc_tmode_tstate = type { %struct.ahc_tmode_lstate** }
%struct.ahc_tmode_lstate = type { i32 }
%struct.ahc_devinfo = type { i32, i32, i64, i32 }

@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHC_TRANS_CUR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i64 0, align 8
@AC_SENT_BDR = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: %s on %c:%d. %d SCBs aborted\0A\00", align 1
@AHC_NUM_LUNS = common dso_local global i64 0, align 8
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*, i64, i8*, i32)* @ahc_handle_devreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_handle_devreset(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.ahc_devinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %6, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %13 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %14 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %17 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %20 = load i32, i32* @SCB_LIST_NULL, align 4
  %21 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %22 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @ahc_abort_scbs(%struct.ahc_softc* %12, i32 %15, i32 %18, i32 %19, i32 %20, i32 %23, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %27 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %28 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %29 = load i32, i32* @AHC_TRANS_CUR, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @ahc_set_width(%struct.ahc_softc* %26, %struct.ahc_devinfo* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %33 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %34 = load i32, i32* @AHC_TRANS_CUR, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %32, %struct.ahc_devinfo* %33, i32* null, i32 0, i32 0, i32 0, i32 %34, i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @CAM_SEL_TIMEOUT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %5
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %42 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %43 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %46 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %49 = load i32, i32* @AC_SENT_BDR, align 4
  %50 = call i32 @ahc_send_async(%struct.ahc_softc* %41, i32 %44, i32 %47, i32 %48, i32 %49, i32* null)
  br label %51

51:                                               ; preds = %40, %5
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @bootverbose, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %60 = call i8* @ahc_name(%struct.ahc_softc* %59)
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %63 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %7, align 8
  %66 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %61, i32 %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %54, %51
  ret void
}

declare dso_local i32 @ahc_abort_scbs(%struct.ahc_softc*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @ahc_set_width(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_send_async(%struct.ahc_softc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
