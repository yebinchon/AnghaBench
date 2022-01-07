; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_ufi_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_ufi_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@UDMASS_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid command length: %d bytes\0A\00", align 1
@UFI_COMMAND_LENGTH = common dso_local global i32 0, align 4
@NO_TEST_UNIT_READY = common dso_local global i32 0, align 4
@UDMASS_UFI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Converted TEST_UNIT_READY to START_UNIT\0A\00", align 1
@SSS_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unsupported UFI command 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umass_softc*, i32*, i32)* @umass_ufi_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_ufi_transform(%struct.umass_softc* %0, i32* %1, i32 %2) #0 {
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
  br label %73

19:                                               ; preds = %10
  %20 = load i32, i32* @UFI_COMMAND_LENGTH, align 4
  %21 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %22 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %25 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @UFI_COMMAND_LENGTH, align 4
  %29 = call i32 @memset(i32* %27, i32 0, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %58 [
    i32 132, label %33
    i32 136, label %56
    i32 137, label %56
    i32 147, label %56
    i32 146, label %56
    i32 134, label %56
    i32 135, label %56
    i32 142, label %56
    i32 139, label %56
    i32 141, label %56
    i32 130, label %56
    i32 143, label %56
    i32 128, label %56
    i32 131, label %56
    i32 145, label %56
    i32 144, label %56
    i32 140, label %56
    i32 129, label %56
    i32 138, label %56
    i32 133, label %57
  ]

33:                                               ; preds = %19
  %34 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %35 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NO_TEST_UNIT_READY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %42 = load i32, i32* @UDMASS_UFI, align 4
  %43 = call i32 (%struct.umass_softc*, i32, i8*, ...) @DPRINTF(%struct.umass_softc* %41, i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %45 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 134, i32* %48, align 4
  %49 = load i32, i32* @SSS_START, align 4
  %50 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %51 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 %49, i32* %54, align 4
  store i32 1, i32* %4, align 4
  br label %73

55:                                               ; preds = %33
  br label %65

56:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  br label %65

57:                                               ; preds = %19
  store i32 2, i32* %4, align 4
  br label %73

58:                                               ; preds = %19
  %59 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %60 = load i32, i32* @UDMASS_SCSI, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.umass_softc*, i32, i8*, ...) @DPRINTF(%struct.umass_softc* %59, i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 0, i32* %4, align 4
  br label %73

65:                                               ; preds = %56, %55
  %66 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %67 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @memcpy(i32* %69, i32* %70, i32 %71)
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %58, %57, %40, %14
  %74 = load i32, i32* %4, align 4
  ret i32 %74
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
