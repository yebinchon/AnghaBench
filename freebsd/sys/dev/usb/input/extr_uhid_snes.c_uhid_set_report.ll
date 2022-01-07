; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_set_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uhid_snes.c_uhid_set_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_snes_softc = type { i32, i32 }

@M_USBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhid_snes_softc*, i32, i32, i8*, i8*, i32)* @uhid_set_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_set_report(%struct.uhid_snes_softc* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.uhid_snes_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uhid_snes_softc* %0, %struct.uhid_snes_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %6
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @M_USBDEV, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = call i8* @malloc(i32 %18, i32 %19, i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %13, align 4
  br label %52

26:                                               ; preds = %17
  store i32 1, i32* %14, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @copyin(i8* %27, i8* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %52

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %6
  %36 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %7, align 8
  %37 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.uhid_snes_softc*, %struct.uhid_snes_softc** %7, align 8
  %42 = getelementptr inbounds %struct.uhid_snes_softc, %struct.uhid_snes_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @usbd_req_set_report(i32 %38, i32* null, i8* %39, i32 %40, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %13, align 4
  br label %52

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %49, %33, %24
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @M_USBDEV, align 4
  %58 = call i32 @free(i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %13, align 4
  ret i32 %60
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i8*, i8*, i32) #1

declare dso_local i32 @usbd_req_set_report(i32, i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
