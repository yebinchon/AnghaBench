; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_handle_lqiphase_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_handle_lqiphase_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@CLRLQIINT1 = common dso_local global i32 0, align 4
@SCSISIGO = common dso_local global i32 0, align 4
@ATNO = common dso_local global i32 0, align 4
@MDFFSTAT = common dso_local global i32 0, align 4
@DLZERO = common dso_local global i32 0, align 4
@LQIPHASE_LQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"LQIRETRY for LQIPHASE_LQ\0A\00", align 1
@LQCTL2 = common dso_local global i32 0, align 4
@LQIRETRY = common dso_local global i32 0, align 4
@LQIPHASE_NLQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"LQIRETRY for LQIPHASE_NLQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ahd_handle_lqiphase_error: No phase errors\0A\00", align 1
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Reseting Channel for LQI Phase error\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32)* @ahd_handle_lqiphase_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_lqiphase_error(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %6 = load i32, i32* @AHD_MODE_SCSI, align 4
  %7 = load i32, i32* @AHD_MODE_SCSI, align 4
  %8 = call i32 @ahd_set_modes(%struct.ahd_softc* %5, i32 %6, i32 %7)
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = load i32, i32* @CLRLQIINT1, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ahd_outb(%struct.ahd_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = call i32 @ahd_set_active_fifo(%struct.ahd_softc* %13)
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = load i32, i32* @SCSISIGO, align 4
  %17 = call i32 @ahd_inb(%struct.ahd_softc* %15, i32 %16)
  %18 = load i32, i32* @ATNO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %2
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %23 = load i32, i32* @MDFFSTAT, align 4
  %24 = call i32 @ahd_inb(%struct.ahd_softc* %22, i32 %23)
  %25 = load i32, i32* @DLZERO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @LQIPHASE_LQ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %36 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %35)
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %38 = load i32, i32* @LQCTL2, align 4
  %39 = load i32, i32* @LQIRETRY, align 4
  %40 = call i32 @ahd_outb(%struct.ahd_softc* %37, i32 %38, i32 %39)
  br label %57

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @LQIPHASE_NLQ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %48)
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %51 = load i32, i32* @LQCTL2, align 4
  %52 = load i32, i32* @LQIRETRY, align 4
  %53 = call i32 @ahd_outb(%struct.ahd_softc* %50, i32 %51, i32 %52)
  br label %56

54:                                               ; preds = %41
  %55 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %46
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %59 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %58)
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = load i32, i32* @CLRINT, align 4
  %62 = load i32, i32* @CLRSCSIINT, align 4
  %63 = call i32 @ahd_outb(%struct.ahd_softc* %60, i32 %61, i32 %62)
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %65 = call i32 @ahd_unpause(%struct.ahd_softc* %64)
  br label %75

66:                                               ; preds = %21, %2
  %67 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %69 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %68)
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %71 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %70)
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i32 @ahd_reset_channel(%struct.ahd_softc* %72, i8 signext 65, i32 %73)
  br label %75

75:                                               ; preds = %66, %57
  ret void
}

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_set_active_fifo(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
