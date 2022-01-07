; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfumass_softc = type { i32 }
%struct.usb_device_request = type { i64, i64 }

@cfumass_handle_request.max_lun_tmp = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"go\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UR_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"received Bulk-Only Mass Storage Reset\00", align 1
@CFUMASS_T_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Bulk-Only Mass Storage Reset done\00", align 1
@UT_READ_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UR_GET_MAX_LUN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"received Get Max LUN\00", align 1
@max_lun = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"invalid hw.usb.cfumass.max_lun, must be between 0 and 15; defaulting to 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**, i64*, i64, i32*)* @cfumass_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfumass_handle_request(i32 %0, i8* %1, i8** %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cfumass_softc*, align 8
  %15 = alloca %struct.usb_device_request*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.cfumass_softc* @device_get_softc(i32 %17)
  store %struct.cfumass_softc* %18, %struct.cfumass_softc** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.usb_device_request*
  store %struct.usb_device_request* %20, %struct.usb_device_request** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %24 = call i32 @CFUMASS_DEBUG(%struct.cfumass_softc* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %7, align 4
  br label %92

29:                                               ; preds = %6
  %30 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UR_RESET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %43 = call i32 @CFUMASS_WARN(%struct.cfumass_softc* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64*, i64** %11, align 8
  store i64 0, i64* %44, align 8
  %45 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %46 = call i32 @CFUMASS_LOCK(%struct.cfumass_softc* %45)
  %47 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %48 = call i32 @cfumass_terminate(%struct.cfumass_softc* %47)
  %49 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %50 = load i32, i32* @CFUMASS_T_COMMAND, align 4
  %51 = call i32 @cfumass_transfer_start(%struct.cfumass_softc* %49, i32 %50)
  %52 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %53 = call i32 @CFUMASS_UNLOCK(%struct.cfumass_softc* %52)
  %54 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %55 = call i32 @CFUMASS_DEBUG(%struct.cfumass_softc* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %92

56:                                               ; preds = %35, %29
  %57 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %58 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UT_READ_CLASS_INTERFACE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %56
  %63 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %64 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @UR_GET_MAX_LUN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %62
  %69 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %70 = call i32 @CFUMASS_DEBUG(%struct.cfumass_softc* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i64*, i64** %11, align 8
  store i64 1, i64* %74, align 8
  %75 = load i32, i32* @max_lun, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @max_lun, align 4
  %79 = icmp sgt i32 %78, 15
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %73
  %81 = load %struct.cfumass_softc*, %struct.cfumass_softc** %14, align 8
  %82 = call i32 @CFUMASS_WARN(%struct.cfumass_softc* %81, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* @cfumass_handle_request.max_lun_tmp, align 4
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @max_lun, align 4
  store i32 %84, i32* @cfumass_handle_request.max_lun_tmp, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i8**, i8*** %10, align 8
  store i8* bitcast (i32* @cfumass_handle_request.max_lun_tmp to i8*), i8** %86, align 8
  br label %89

87:                                               ; preds = %68
  %88 = load i64*, i64** %11, align 8
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %87, %85
  store i32 0, i32* %7, align 4
  br label %92

90:                                               ; preds = %62, %56
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %89, %41, %27
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local %struct.cfumass_softc* @device_get_softc(i32) #1

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*) #1

declare dso_local i32 @CFUMASS_WARN(%struct.cfumass_softc*, i8*) #1

declare dso_local i32 @CFUMASS_LOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @cfumass_terminate(%struct.cfumass_softc*) #1

declare dso_local i32 @cfumass_transfer_start(%struct.cfumass_softc*, i32) #1

declare dso_local i32 @CFUMASS_UNLOCK(%struct.cfumass_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
