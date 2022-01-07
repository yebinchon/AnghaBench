; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_aggregate_xferflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_aggregate_xferflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@USBPF_FLAG_FORCE_SHORT_XFER = common dso_local global i32 0, align 4
@USBPF_FLAG_SHORT_XFER_OK = common dso_local global i32 0, align 4
@USBPF_FLAG_SHORT_FRAMES_OK = common dso_local global i32 0, align 4
@USBPF_FLAG_PIPE_BOF = common dso_local global i32 0, align 4
@USBPF_FLAG_PROXY_BUFFER = common dso_local global i32 0, align 4
@USBPF_FLAG_EXT_BUFFER = common dso_local global i32 0, align 4
@USBPF_FLAG_MANUAL_STATUS = common dso_local global i32 0, align 4
@USBPF_FLAG_NO_PIPE_OK = common dso_local global i32 0, align 4
@USBPF_FLAG_STALL_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer_flags*)* @usbpf_aggregate_xferflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbpf_aggregate_xferflags(%struct.usb_xfer_flags* %0) #0 {
  %2 = alloca %struct.usb_xfer_flags*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_xfer_flags* %0, %struct.usb_xfer_flags** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %5 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @USBPF_FLAG_FORCE_SHORT_XFER, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @USBPF_FLAG_SHORT_XFER_OK, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %23 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @USBPF_FLAG_SHORT_FRAMES_OK, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %32 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @USBPF_FLAG_PIPE_BOF, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %41 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @USBPF_FLAG_PROXY_BUFFER, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %50 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @USBPF_FLAG_EXT_BUFFER, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %59 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @USBPF_FLAG_MANUAL_STATUS, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %68 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @USBPF_FLAG_NO_PIPE_OK, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.usb_xfer_flags*, %struct.usb_xfer_flags** %2, align 8
  %77 = getelementptr inbounds %struct.usb_xfer_flags, %struct.usb_xfer_flags* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @USBPF_FLAG_STALL_PIPE, align 4
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
