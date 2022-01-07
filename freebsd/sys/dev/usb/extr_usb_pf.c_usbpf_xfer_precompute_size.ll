; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_xfer_precompute_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_xfer_precompute_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i32* }

@USBPF_XFERTAP_SUBMIT = common dso_local global i32 0, align 4
@USBPF_HDR_LEN = common dso_local global i64 0, align 8
@USBPF_FRAME_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_xfer*, i32)* @usbpf_xfer_precompute_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usbpf_xfer_precompute_size(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @USBPF_XFERTAP_SUBMIT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i64, i64* @USBPF_HDR_LEN, align 8
  %21 = load i64, i64* @USBPF_FRAME_HDR_LEN, align 8
  %22 = load i64, i64* %7, align 8
  %23 = mul i64 %21, %22
  %24 = add i64 %20, %23
  store i64 %24, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %65, %19
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @usbpf_xfer_frame_is_read(%struct.usb_xfer* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @USBPF_XFERTAP_SUBMIT, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @USBPF_FRAME_ALIGN(i32 %44)
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %38, %34
  br label %64

49:                                               ; preds = %29
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @USBPF_XFERTAP_SUBMIT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @USBPF_FRAME_ALIGN(i32 %59)
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %53, %49
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %25

68:                                               ; preds = %25
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i64 @usbpf_xfer_frame_is_read(%struct.usb_xfer*, i64) #1

declare dso_local i64 @USBPF_FRAME_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
