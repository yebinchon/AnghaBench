; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uftdi_softc* }
%struct.uftdi_softc = type { i32 }
%struct.thread = type { i32 }
%struct.uftdi_bitmode = type { i32, i32 }
%struct.uftdi_eeio = type { i32 }

@FTDI_SIO_RESET_SIO = common dso_local global i32 0, align 4
@FTDI_SIO_RESET_PURGE_RX = common dso_local global i32 0, align 4
@FTDI_SIO_RESET_PURGE_TX = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, i32, i64, i32, %struct.thread*)* @uftdi_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_ioctl(%struct.ucom_softc* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucom_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.uftdi_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.uftdi_bitmode*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %16 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %15, i32 0, i32 0
  %17 = load %struct.uftdi_softc*, %struct.uftdi_softc** %16, align 8
  store %struct.uftdi_softc* %17, %struct.uftdi_softc** %12, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %102 [
    i32 135, label %19
    i32 134, label %19
    i32 133, label %19
    i32 132, label %37
    i32 139, label %48
    i32 129, label %57
    i32 137, label %63
    i32 131, label %68
    i32 130, label %74
    i32 138, label %80
    i32 136, label %86
    i32 128, label %91
    i32 140, label %96
  ]

19:                                               ; preds = %5, %5, %5
  %20 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 135
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @FTDI_SIO_RESET_SIO, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 134
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @FTDI_SIO_RESET_PURGE_RX, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @FTDI_SIO_RESET_PURGE_TX, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  br label %34

34:                                               ; preds = %32, %23
  %35 = phi i32 [ %24, %23 ], [ %33, %32 ]
  %36 = call i32 @uftdi_reset(%struct.ucom_softc* %20, i32 %35)
  store i32 %36, i32* %13, align 4
  br label %104

37:                                               ; preds = %5
  %38 = load i64, i64* %9, align 8
  %39 = inttoptr i64 %38 to %struct.uftdi_bitmode*
  store %struct.uftdi_bitmode* %39, %struct.uftdi_bitmode** %14, align 8
  %40 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %41 = load %struct.uftdi_bitmode*, %struct.uftdi_bitmode** %14, align 8
  %42 = getelementptr inbounds %struct.uftdi_bitmode, %struct.uftdi_bitmode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.uftdi_bitmode*, %struct.uftdi_bitmode** %14, align 8
  %45 = getelementptr inbounds %struct.uftdi_bitmode, %struct.uftdi_bitmode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @uftdi_set_bitmode(%struct.ucom_softc* %40, i32 %43, i32 %46)
  store i32 %47, i32* %13, align 4
  br label %104

48:                                               ; preds = %5
  %49 = load i64, i64* %9, align 8
  %50 = inttoptr i64 %49 to %struct.uftdi_bitmode*
  store %struct.uftdi_bitmode* %50, %struct.uftdi_bitmode** %14, align 8
  %51 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %52 = load %struct.uftdi_bitmode*, %struct.uftdi_bitmode** %14, align 8
  %53 = getelementptr inbounds %struct.uftdi_bitmode, %struct.uftdi_bitmode* %52, i32 0, i32 1
  %54 = load %struct.uftdi_bitmode*, %struct.uftdi_bitmode** %14, align 8
  %55 = getelementptr inbounds %struct.uftdi_bitmode, %struct.uftdi_bitmode* %54, i32 0, i32 0
  %56 = call i32 @uftdi_get_bitmode(%struct.ucom_softc* %51, i32* %53, i32* %55)
  store i32 %56, i32* %13, align 4
  br label %104

57:                                               ; preds = %5
  %58 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @uftdi_set_latency(%struct.ucom_softc* %58, i32 %61)
  store i32 %62, i32* %13, align 4
  br label %104

63:                                               ; preds = %5
  %64 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @uftdi_get_latency(%struct.ucom_softc* %64, i32* %66)
  store i32 %67, i32* %13, align 4
  br label %104

68:                                               ; preds = %5
  %69 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @uftdi_set_error_char(%struct.ucom_softc* %69, i32 %72)
  store i32 %73, i32* %13, align 4
  br label %104

74:                                               ; preds = %5
  %75 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @uftdi_set_event_char(%struct.ucom_softc* %75, i32 %78)
  store i32 %79, i32* %13, align 4
  br label %104

80:                                               ; preds = %5
  %81 = load %struct.uftdi_softc*, %struct.uftdi_softc** %12, align 8
  %82 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %9, align 8
  %85 = inttoptr i64 %84 to i32*
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %13, align 4
  br label %104

86:                                               ; preds = %5
  %87 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %88 = load i64, i64* %9, align 8
  %89 = inttoptr i64 %88 to %struct.uftdi_eeio*
  %90 = call i32 @uftdi_read_eeprom(%struct.ucom_softc* %87, %struct.uftdi_eeio* %89)
  store i32 %90, i32* %13, align 4
  br label %104

91:                                               ; preds = %5
  %92 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %93 = load i64, i64* %9, align 8
  %94 = inttoptr i64 %93 to %struct.uftdi_eeio*
  %95 = call i32 @uftdi_write_eeprom(%struct.ucom_softc* %92, %struct.uftdi_eeio* %94)
  store i32 %95, i32* %13, align 4
  br label %104

96:                                               ; preds = %5
  %97 = load %struct.ucom_softc*, %struct.ucom_softc** %7, align 8
  %98 = load i64, i64* %9, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @uftdi_erase_eeprom(%struct.ucom_softc* %97, i32 %100)
  store i32 %101, i32* %13, align 4
  br label %104

102:                                              ; preds = %5
  %103 = load i32, i32* @ENOIOCTL, align 4
  store i32 %103, i32* %6, align 4
  br label %111

104:                                              ; preds = %96, %91, %86, %80, %74, %68, %63, %57, %48, %37, %34
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @EIO, align 4
  store i32 %109, i32* %6, align 4
  br label %111

110:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %108, %102
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @uftdi_reset(%struct.ucom_softc*, i32) #1

declare dso_local i32 @uftdi_set_bitmode(%struct.ucom_softc*, i32, i32) #1

declare dso_local i32 @uftdi_get_bitmode(%struct.ucom_softc*, i32*, i32*) #1

declare dso_local i32 @uftdi_set_latency(%struct.ucom_softc*, i32) #1

declare dso_local i32 @uftdi_get_latency(%struct.ucom_softc*, i32*) #1

declare dso_local i32 @uftdi_set_error_char(%struct.ucom_softc*, i32) #1

declare dso_local i32 @uftdi_set_event_char(%struct.ucom_softc*, i32) #1

declare dso_local i32 @uftdi_read_eeprom(%struct.ucom_softc*, %struct.uftdi_eeio*) #1

declare dso_local i32 @uftdi_write_eeprom(%struct.ucom_softc*, %struct.uftdi_eeio*) #1

declare dso_local i32 @uftdi_erase_eeprom(%struct.ucom_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
