; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_quirk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfumass_softc = type { i32 }
%struct.scsi_start_stop_unit = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"received START STOP UNIT with bCDBLength %d, should be %zd\00", align 1
@SSS_PC_MASK = common dso_local global i32 0, align 4
@SSS_START = common dso_local global i32 0, align 4
@SSS_LOEJ = common dso_local global i32 0, align 4
@ignore_stop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ignoring START STOP UNIT request\00", align 1
@CFUMASS_T_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfumass_softc*, i8*, i32)* @cfumass_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfumass_quirk(%struct.cfumass_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfumass_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_start_stop_unit*, align 8
  store %struct.cfumass_softc* %0, %struct.cfumass_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %67 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %19, i64 4)
  br label %68

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.scsi_start_stop_unit*
  store %struct.scsi_start_stop_unit* %23, %struct.scsi_start_stop_unit** %8, align 8
  %24 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %8, align 8
  %25 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SSS_PC_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %68

31:                                               ; preds = %21
  %32 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %8, align 8
  %33 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SSS_START, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %68

39:                                               ; preds = %31
  %40 = load %struct.scsi_start_stop_unit*, %struct.scsi_start_stop_unit** %8, align 8
  %41 = getelementptr inbounds %struct.scsi_start_stop_unit, %struct.scsi_start_stop_unit* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SSS_LOEJ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %68

47:                                               ; preds = %39
  %48 = load i32, i32* @ignore_stop, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %68

51:                                               ; preds = %47
  %52 = load i32, i32* @ignore_stop, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %56 = call i32 @CFUMASS_WARN(%struct.cfumass_softc* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %59 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %63 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %65 = load i32, i32* @CFUMASS_T_STATUS, align 4
  %66 = call i32 @cfumass_transfer_start(%struct.cfumass_softc* %64, i32 %65)
  store i32 1, i32* %4, align 4
  br label %69

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %67, %50, %46, %38, %30, %17
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*, ...) #1

declare dso_local i32 @CFUMASS_WARN(%struct.cfumass_softc*, i8*) #1

declare dso_local i32 @cfumass_transfer_start(%struct.cfumass_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
