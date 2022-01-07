; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_request = type { i64, i64 }

@UT_WRITE_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UR_BBB_RESET = common dso_local global i64 0, align 8
@USTORAGE_FS_T_BBB_COMMAND = common dso_local global i32 0, align 4
@UT_READ_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UR_BBB_GET_MAX_LUN = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**, i64*, i64, i32*)* @ustorage_fs_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustorage_fs_handle_request(i32 %0, i8* %1, i8** %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ustorage_fs_softc*, align 8
  %15 = alloca %struct.usb_device_request*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.ustorage_fs_softc* @device_get_softc(i32 %17)
  store %struct.ustorage_fs_softc* %18, %struct.ustorage_fs_softc** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.usb_device_request*
  store %struct.usb_device_request* %20, %struct.usb_device_request** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %79, label %25

25:                                               ; preds = %6
  %26 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UR_BBB_RESET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i64*, i64** %11, align 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %14, align 8
  %40 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %39, i32 0, i32 1
  %41 = call i32 @mtx_lock(i32* %40)
  %42 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %14, align 8
  %43 = call i32 @ustorage_fs_transfer_stop(%struct.ustorage_fs_softc* %42)
  %44 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %14, align 8
  %45 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %14, align 8
  %48 = load i32, i32* @USTORAGE_FS_T_BBB_COMMAND, align 4
  %49 = call i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc* %47, i32 %48)
  %50 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %14, align 8
  %51 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %50, i32 0, i32 1
  %52 = call i32 @mtx_unlock(i32* %51)
  store i32 0, i32* %7, align 4
  br label %81

53:                                               ; preds = %31, %25
  %54 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %55 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UT_READ_CLASS_INTERFACE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %61 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UR_BBB_GET_MAX_LUN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load i64, i64* %12, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i64*, i64** %11, align 8
  store i64 1, i64* %69, align 8
  %70 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %14, align 8
  %71 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %70, i32 0, i32 0
  %72 = bitcast i32* %71 to i8*
  %73 = load i8**, i8*** %10, align 8
  store i8* %72, i8** %73, align 8
  br label %76

74:                                               ; preds = %65
  %75 = load i64*, i64** %11, align 8
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %74, %68
  store i32 0, i32* %7, align 4
  br label %81

77:                                               ; preds = %59, %53
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %6
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %76, %37
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.ustorage_fs_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ustorage_fs_transfer_stop(%struct.ustorage_fs_softc*) #1

declare dso_local i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
