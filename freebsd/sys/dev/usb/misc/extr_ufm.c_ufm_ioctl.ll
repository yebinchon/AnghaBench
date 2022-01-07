; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.ufm_softc = type { i32 }

@FWRITE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32, i8*, i32)* @ufm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufm_ioctl(%struct.usb_fifo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_fifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ufm_softc*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_fifo* %0, %struct.usb_fifo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.usb_fifo*, %struct.usb_fifo** %6, align 8
  %13 = call %struct.ufm_softc* @usb_fifo_softc(%struct.usb_fifo* %12)
  store %struct.ufm_softc* %13, %struct.ufm_softc** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @FWRITE, align 4
  %16 = load i32, i32* @FREAD, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @FWRITE, align 4
  %20 = load i32, i32* @FREAD, align 4
  %21 = or i32 %19, %20
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EACCES, align 4
  store i32 %24, i32* %5, align 4
  br label %51

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %47 [
    i32 130, label %27
    i32 132, label %31
    i32 129, label %35
    i32 128, label %39
    i32 131, label %43
  ]

27:                                               ; preds = %25
  %28 = load %struct.ufm_softc*, %struct.ufm_softc** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @ufm_set_freq(%struct.ufm_softc* %28, i8* %29)
  store i32 %30, i32* %11, align 4
  br label %49

31:                                               ; preds = %25
  %32 = load %struct.ufm_softc*, %struct.ufm_softc** %10, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @ufm_get_freq(%struct.ufm_softc* %32, i8* %33)
  store i32 %34, i32* %11, align 4
  br label %49

35:                                               ; preds = %25
  %36 = load %struct.ufm_softc*, %struct.ufm_softc** %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @ufm_start(%struct.ufm_softc* %36, i8* %37)
  store i32 %38, i32* %11, align 4
  br label %49

39:                                               ; preds = %25
  %40 = load %struct.ufm_softc*, %struct.ufm_softc** %10, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @ufm_stop(%struct.ufm_softc* %40, i8* %41)
  store i32 %42, i32* %11, align 4
  br label %49

43:                                               ; preds = %25
  %44 = load %struct.ufm_softc*, %struct.ufm_softc** %10, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @ufm_get_stat(%struct.ufm_softc* %44, i8* %45)
  store i32 %46, i32* %11, align 4
  br label %49

47:                                               ; preds = %25
  %48 = load i32, i32* @ENOTTY, align 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %47, %43, %39, %35, %31, %27
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %23
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.ufm_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @ufm_set_freq(%struct.ufm_softc*, i8*) #1

declare dso_local i32 @ufm_get_freq(%struct.ufm_softc*, i8*) #1

declare dso_local i32 @ufm_start(%struct.ufm_softc*, i8*) #1

declare dso_local i32 @ufm_stop(%struct.ufm_softc*, i8*) #1

declare dso_local i32 @ufm_get_stat(%struct.ufm_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
