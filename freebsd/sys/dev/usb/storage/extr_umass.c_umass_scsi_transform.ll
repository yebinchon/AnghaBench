; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_scsi_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_scsi_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@UDMASS_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid command length: %d bytes\0A\00", align 1
@NO_TEST_UNIT_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Converted TEST_UNIT_READY to START_UNIT\0A\00", align 1
@START_STOP_UNIT = common dso_local global i32 0, align 4
@SSS_START = common dso_local global i32 0, align 4
@FORCE_SHORT_INQUIRY = common dso_local global i32 0, align 4
@SHORT_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umass_softc*, i32*, i32)* @umass_scsi_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_scsi_transform(%struct.umass_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.umass_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.umass_softc* %0, %struct.umass_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ugt i64 %12, 8
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %3
  %15 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %16 = load i32, i32* @UDMASS_SCSI, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (%struct.umass_softc*, i32, i8*, ...) @DPRINTF(%struct.umass_softc* %15, i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %4, align 4
  br label %87

19:                                               ; preds = %10
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %22 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %79 [
    i32 128, label %27
    i32 129, label %57
  ]

27:                                               ; preds = %19
  %28 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %29 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NO_TEST_UNIT_READY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %27
  %35 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %36 = load i32, i32* @UDMASS_SCSI, align 4
  %37 = call i32 (%struct.umass_softc*, i32, i8*, ...) @DPRINTF(%struct.umass_softc* %35, i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %39 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memset(i32* %41, i32 0, i32 %42)
  %44 = load i32, i32* @START_STOP_UNIT, align 4
  %45 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %46 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @SSS_START, align 4
  %51 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %52 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %50, i32* %55, align 4
  store i32 1, i32* %4, align 4
  br label %87

56:                                               ; preds = %27
  br label %79

57:                                               ; preds = %19
  %58 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %59 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FORCE_SHORT_INQUIRY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %66 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @memcpy(i32* %68, i32* %69, i32 %70)
  %72 = load i32, i32* @SHORT_INQUIRY_LENGTH, align 4
  %73 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %74 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %72, i32* %77, align 4
  store i32 1, i32* %4, align 4
  br label %87

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %19, %78, %56
  %80 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %81 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @memcpy(i32* %83, i32* %84, i32 %85)
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %79, %64, %34, %14
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
