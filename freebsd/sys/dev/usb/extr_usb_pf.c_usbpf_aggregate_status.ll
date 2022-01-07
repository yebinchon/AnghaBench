; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_aggregate_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_aggregate_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer_flags_int = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@USBPF_STATUS_OPEN = common dso_local global i32 0, align 4
@USBPF_STATUS_TRANSFERRING = common dso_local global i32 0, align 4
@USBPF_STATUS_DID_DMA_DELAY = common dso_local global i32 0, align 4
@USBPF_STATUS_DID_CLOSE = common dso_local global i32 0, align 4
@USBPF_STATUS_DRAINING = common dso_local global i32 0, align 4
@USBPF_STATUS_STARTED = common dso_local global i32 0, align 4
@USBPF_STATUS_BW_RECLAIMED = common dso_local global i32 0, align 4
@USBPF_STATUS_CONTROL_XFR = common dso_local global i32 0, align 4
@USBPF_STATUS_CONTROL_HDR = common dso_local global i32 0, align 4
@USBPF_STATUS_CONTROL_ACT = common dso_local global i32 0, align 4
@USBPF_STATUS_CONTROL_STALL = common dso_local global i32 0, align 4
@USBPF_STATUS_SHORT_FRAMES_OK = common dso_local global i32 0, align 4
@USBPF_STATUS_SHORT_XFER_OK = common dso_local global i32 0, align 4
@USBPF_STATUS_ISOCHRONOUS_XFR = common dso_local global i32 0, align 4
@USBPF_STATUS_CURR_DMA_SET = common dso_local global i32 0, align 4
@USBPF_STATUS_CAN_CANCEL_IMMED = common dso_local global i32 0, align 4
@USBPF_STATUS_DOING_CALLBACK = common dso_local global i32 0, align 4
@USBPF_STATUS_BDMA_ENABLE = common dso_local global i32 0, align 4
@USBPF_STATUS_BDMA_NO_POST_SYNC = common dso_local global i32 0, align 4
@USBPF_STATUS_BDMA_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer_flags_int*)* @usbpf_aggregate_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbpf_aggregate_status(%struct.usb_xfer_flags_int* %0) #0 {
  %2 = alloca %struct.usb_xfer_flags_int*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_xfer_flags_int* %0, %struct.usb_xfer_flags_int** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %5 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @USBPF_STATUS_OPEN, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @USBPF_STATUS_TRANSFERRING, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %23 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @USBPF_STATUS_DID_DMA_DELAY, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %32 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @USBPF_STATUS_DID_CLOSE, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %41 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @USBPF_STATUS_DRAINING, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %50 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @USBPF_STATUS_STARTED, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %59 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @USBPF_STATUS_BW_RECLAIMED, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %68 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @USBPF_STATUS_CONTROL_XFR, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %77 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @USBPF_STATUS_CONTROL_HDR, align 4
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %86 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @USBPF_STATUS_CONTROL_ACT, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %95 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @USBPF_STATUS_CONTROL_STALL, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %104 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @USBPF_STATUS_SHORT_FRAMES_OK, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %113 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @USBPF_STATUS_SHORT_XFER_OK, align 4
  %118 = load i32, i32* %3, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %122 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %121, i32 0, i32 16
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @USBPF_STATUS_ISOCHRONOUS_XFR, align 4
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %131 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %130, i32 0, i32 17
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @USBPF_STATUS_CURR_DMA_SET, align 4
  %136 = load i32, i32* %3, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %134, %129
  %139 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %140 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %139, i32 0, i32 18
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @USBPF_STATUS_CAN_CANCEL_IMMED, align 4
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.usb_xfer_flags_int*, %struct.usb_xfer_flags_int** %2, align 8
  %149 = getelementptr inbounds %struct.usb_xfer_flags_int, %struct.usb_xfer_flags_int* %148, i32 0, i32 19
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @USBPF_STATUS_DOING_CALLBACK, align 4
  %154 = load i32, i32* %3, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %147
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
