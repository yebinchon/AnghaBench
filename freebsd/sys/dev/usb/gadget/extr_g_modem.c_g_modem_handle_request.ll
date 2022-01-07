; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_modem_softc = type { i32, i32 }
%struct.usb_device_request = type { i64, i64, i32* }

@UT_WRITE_CLASS_INTERFACE = common dso_local global i64 0, align 8
@UCDC_SET_LINE_CODING = common dso_local global i64 0, align 8
@UCDC_SET_COMM_FEATURE = common dso_local global i64 0, align 8
@UCDC_SET_CONTROL_LINE_STATE = common dso_local global i64 0, align 8
@UCDC_SEND_BREAK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**, i64*, i64, i32*)* @g_modem_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_modem_handle_request(i32 %0, i8* %1, i8** %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.g_modem_softc*, align 8
  %15 = alloca %struct.usb_device_request*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.g_modem_softc* @device_get_softc(i32 %17)
  store %struct.g_modem_softc* %18, %struct.g_modem_softc** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.usb_device_request*
  store %struct.usb_device_request* %20, %struct.usb_device_request** %15, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %119, label %25

25:                                               ; preds = %6
  %26 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UCDC_SET_LINE_CODING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %39 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %46 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load i64, i64* %12, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i64*, i64** %11, align 8
  store i64 4, i64* %55, align 8
  %56 = load %struct.g_modem_softc*, %struct.g_modem_softc** %14, align 8
  %57 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %56, i32 0, i32 1
  %58 = bitcast i32* %57 to i8*
  %59 = load i8**, i8*** %10, align 8
  store i8* %58, i8** %59, align 8
  br label %62

60:                                               ; preds = %51
  %61 = load i64*, i64** %11, align 8
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %60, %54
  store i32 0, i32* %7, align 4
  br label %121

63:                                               ; preds = %44, %37, %31, %25
  %64 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %65 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %71 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UCDC_SET_COMM_FEATURE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i64, i64* %12, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i64*, i64** %11, align 8
  store i64 4, i64* %79, align 8
  %80 = load %struct.g_modem_softc*, %struct.g_modem_softc** %14, align 8
  %81 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %80, i32 0, i32 0
  %82 = bitcast i32* %81 to i8*
  %83 = load i8**, i8*** %10, align 8
  store i8* %82, i8** %83, align 8
  br label %86

84:                                               ; preds = %75
  %85 = load i64*, i64** %11, align 8
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %84, %78
  store i32 0, i32* %7, align 4
  br label %121

87:                                               ; preds = %69, %63
  %88 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %89 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %95 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @UCDC_SET_CONTROL_LINE_STATE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i64*, i64** %11, align 8
  store i64 0, i64* %100, align 8
  store i32 0, i32* %7, align 4
  br label %121

101:                                              ; preds = %93, %87
  %102 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %103 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @UT_WRITE_CLASS_INTERFACE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.usb_device_request*, %struct.usb_device_request** %15, align 8
  %109 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @UCDC_SEND_BREAK, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i64*, i64** %11, align 8
  store i64 0, i64* %114, align 8
  store i32 0, i32* %7, align 4
  br label %121

115:                                              ; preds = %107, %101
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %6
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %113, %99, %86, %62
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local %struct.g_modem_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
