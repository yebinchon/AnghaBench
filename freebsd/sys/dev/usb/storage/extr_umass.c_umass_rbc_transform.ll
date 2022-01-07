; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_rbc_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_rbc_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@UDMASS_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid command length: %d bytes\0A\00", align 1
@RBC_PAD_TO_12 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported RBC command 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umass_softc*, i32*, i32)* @umass_rbc_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_rbc_transform(%struct.umass_softc* %0, i32* %1, i32 %2) #0 {
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
  %13 = icmp ugt i64 %12, 4
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %3
  %15 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %16 = load i32, i32* @UDMASS_SCSI, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @DPRINTF(%struct.umass_softc* %15, i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %4, align 4
  br label %62

19:                                               ; preds = %10
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %55 [
    i32 136, label %23
    i32 135, label %23
    i32 133, label %23
    i32 132, label %23
    i32 129, label %23
    i32 130, label %23
    i32 140, label %23
    i32 139, label %23
    i32 138, label %23
    i32 131, label %23
    i32 128, label %23
    i32 134, label %23
    i32 137, label %23
  ]

23:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %24 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %25 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @memcpy(i32 %27, i32* %28, i32 %29)
  %31 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %32 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RBC_PAD_TO_12, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 12
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %42 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 12, %47
  %49 = call i32 @memset(i32 %46, i32 0, i32 %48)
  store i32 12, i32* %7, align 4
  br label %50

50:                                               ; preds = %40, %37, %23
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %53 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  store i32 1, i32* %4, align 4
  br label %62

55:                                               ; preds = %19
  %56 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %57 = load i32, i32* @UDMASS_SCSI, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DPRINTF(%struct.umass_softc* %56, i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %50, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
