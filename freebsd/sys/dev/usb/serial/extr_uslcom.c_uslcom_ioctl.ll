; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uslcom_softc* }
%struct.uslcom_softc = type { i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"cmd=0x%08x\0A\00", align 1
@USLCOM_PARTNUM_CP2103 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USLCOM_READ = common dso_local global i32 0, align 4
@USLCOM_VENDOR_SPECIFIC = common dso_local global i8* null, align 8
@USLCOM_READ_LATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Get LATCH failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@USLCOM_PARTNUM_CP2104 = common dso_local global i32 0, align 4
@USLCOM_WRITE = common dso_local global i32 0, align 4
@USLCOM_WRITE_LATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Set LATCH failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Unknown IOCTL\0A\00", align 1
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, i32, i64, i32, %struct.thread*)* @uslcom_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uslcom_ioctl(%struct.ucom_softc* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.ucom_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.uslcom_softc*, align 8
  %12 = alloca %struct.usb_device_request, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %15 = load %struct.ucom_softc*, %struct.ucom_softc** %6, align 8
  %16 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %15, i32 0, i32 0
  %17 = load %struct.uslcom_softc*, %struct.uslcom_softc** %16, align 8
  store %struct.uslcom_softc* %17, %struct.uslcom_softc** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %114 [
    i32 129, label %21
    i32 128, label %61
  ]

21:                                               ; preds = %5
  %22 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %23 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @USLCOM_PARTNUM_CP2103, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ENODEV, align 4
  store i32 %28, i32* %13, align 4
  br label %117

29:                                               ; preds = %21
  %30 = load i32, i32* @USLCOM_READ, align 4
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = load i8*, i8** @USLCOM_VENDOR_SPECIFIC, align 8
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @USLCOM_READ_LATCH, align 4
  %37 = call i32 @USETW(i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %41 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @USETW(i32 %39, i32 %42)
  %44 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @USETW(i32 %45, i32 4)
  %47 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %48 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %51 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %50, i32 0, i32 1
  %52 = call i32 @ucom_cfg_do_request(i32 %49, i32* %51, %struct.usb_device_request* %12, i32* %14, i32 0, i32 1000)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %29
  %55 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %54, %29
  %58 = load i32, i32* %14, align 4
  %59 = load i64, i64* %8, align 8
  %60 = inttoptr i64 %59 to i32*
  store i32 %58, i32* %60, align 4
  br label %117

61:                                               ; preds = %5
  %62 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %63 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @USLCOM_PARTNUM_CP2103, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @ENODEV, align 4
  store i32 %68, i32* %13, align 4
  br label %113

69:                                               ; preds = %61
  %70 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %71 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @USLCOM_PARTNUM_CP2103, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %77 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @USLCOM_PARTNUM_CP2104, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %75, %69
  %82 = load i32, i32* @USLCOM_WRITE, align 4
  %83 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 4
  store i32 %82, i32* %83, align 8
  %84 = load i8*, i8** @USLCOM_VENDOR_SPECIFIC, align 8
  %85 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 3
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @USLCOM_WRITE_LATCH, align 4
  %89 = call i32 @USETW(i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %8, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @USETW(i32 %91, i32 %94)
  %96 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @USETW(i32 %97, i32 0)
  %99 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %100 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.uslcom_softc*, %struct.uslcom_softc** %11, align 8
  %103 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %102, i32 0, i32 1
  %104 = call i32 @ucom_cfg_do_request(i32 %101, i32* %103, %struct.usb_device_request* %12, i32* null, i32 0, i32 1000)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %81
  %107 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* @EIO, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %81
  br label %112

110:                                              ; preds = %75
  %111 = load i32, i32* @ENODEV, align 4
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %110, %109
  br label %113

113:                                              ; preds = %112, %67
  br label %117

114:                                              ; preds = %5
  %115 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @ENOIOCTL, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %114, %113, %57, %27
  %118 = load i32, i32* %13, align 4
  ret i32 %118
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @ucom_cfg_do_request(i32, i32*, %struct.usb_device_request*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
