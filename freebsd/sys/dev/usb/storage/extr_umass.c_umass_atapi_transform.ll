; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_atapi_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_atapi_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@UDMASS_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid command length: %d bytes\0A\00", align 1
@ATAPI_COMMAND_LENGTH = common dso_local global i32 0, align 4
@FORCE_SHORT_INQUIRY = common dso_local global i32 0, align 4
@SHORT_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@NO_TEST_UNIT_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Converted TEST_UNIT_READY to START_UNIT\0A\00", align 1
@SSS_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unsupported ATAPI command 0x%02x - trying anyway\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umass_softc*, i32*, i32)* @umass_atapi_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_atapi_transform(%struct.umass_softc* %0, i32* %1, i32 %2) #0 {
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
  br label %95

19:                                               ; preds = %10
  %20 = load i32, i32* @ATAPI_COMMAND_LENGTH, align 4
  %21 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %22 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %25 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @ATAPI_COMMAND_LENGTH, align 4
  %29 = call i32 @memset(i32* %27, i32 0, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %80 [
    i32 144, label %33
    i32 130, label %55
    i32 134, label %78
    i32 135, label %78
    i32 132, label %78
    i32 133, label %78
    i32 140, label %78
    i32 136, label %78
    i32 139, label %78
    i32 129, label %78
    i32 141, label %78
    i32 131, label %78
    i32 143, label %78
    i32 142, label %78
    i32 137, label %78
    i32 66, label %78
    i32 67, label %78
    i32 68, label %78
    i32 71, label %78
    i32 72, label %78
    i32 73, label %78
    i32 75, label %78
    i32 81, label %78
    i32 82, label %78
    i32 84, label %78
    i32 89, label %78
    i32 91, label %78
    i32 92, label %78
    i32 93, label %78
    i32 161, label %78
    i32 165, label %78
    i32 166, label %78
    i32 173, label %78
    i32 187, label %78
    i32 229, label %78
    i32 138, label %79
    i32 128, label %79
  ]

33:                                               ; preds = %19
  %34 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %35 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FORCE_SHORT_INQUIRY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %42 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @memcpy(i32* %44, i32* %45, i32 %46)
  %48 = load i32, i32* @SHORT_INQUIRY_LENGTH, align 4
  %49 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %50 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %48, i32* %53, align 4
  store i32 1, i32* %4, align 4
  br label %95

54:                                               ; preds = %33
  br label %87

55:                                               ; preds = %19
  %56 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %57 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NO_TEST_UNIT_READY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %64 = load i32, i32* @UDMASS_SCSI, align 4
  %65 = call i32 (%struct.umass_softc*, i32, i8*, ...) @DPRINTF(%struct.umass_softc* %63, i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %67 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 132, i32* %70, align 4
  %71 = load i32, i32* @SSS_START, align 4
  %72 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %73 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32 %71, i32* %76, align 4
  store i32 1, i32* %4, align 4
  br label %95

77:                                               ; preds = %55
  br label %87

78:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  br label %87

79:                                               ; preds = %19, %19
  br label %80

80:                                               ; preds = %19, %79
  %81 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %82 = load i32, i32* @UDMASS_SCSI, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.umass_softc*, i32, i8*, ...) @DPRINTF(%struct.umass_softc* %81, i32 %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %78, %77, %54
  %88 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %89 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @memcpy(i32* %91, i32* %92, i32 %93)
  store i32 1, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %62, %40, %14
  %96 = load i32, i32* %4, align 4
  ret i32 %96
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
