; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_standard_done_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_standard_done_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i64*, %struct.octusb_td*, %struct.TYPE_2__ }
%struct.octusb_td = type { i64, i32, %struct.octusb_td*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ERR_STALLED = common dso_local global i64 0, align 8
@USB_ERR_IOERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_xfer*)* @octusb_standard_done_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @octusb_standard_done_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.octusb_td*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = call i32 @DPRINTFN(i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.octusb_td*, %struct.octusb_td** %8, align 8
  store %struct.octusb_td* %9, %struct.octusb_td** %3, align 8
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %12 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %18 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %10
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %22, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %34 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  br label %46

35:                                               ; preds = %21
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %41 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %36
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %35, %32
  br label %47

47:                                               ; preds = %46, %10
  %48 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %49 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %54 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @USB_ERR_STALLED, align 8
  br label %61

59:                                               ; preds = %52
  %60 = load i64, i64* @USB_ERR_IOERROR, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %60, %59 ]
  store i64 %62, i64* %5, align 8
  store %struct.octusb_td* null, %struct.octusb_td** %3, align 8
  br label %89

63:                                               ; preds = %47
  %64 = load i64, i64* %4, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %68 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %74 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %79 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %78, i32 0, i32 2
  %80 = load %struct.octusb_td*, %struct.octusb_td** %79, align 8
  store %struct.octusb_td* %80, %struct.octusb_td** %3, align 8
  br label %82

81:                                               ; preds = %72
  store %struct.octusb_td* null, %struct.octusb_td** %3, align 8
  br label %82

82:                                               ; preds = %81, %77
  br label %84

83:                                               ; preds = %66
  store %struct.octusb_td* null, %struct.octusb_td** %3, align 8
  br label %84

84:                                               ; preds = %83, %82
  store i64 0, i64* %5, align 8
  br label %89

85:                                               ; preds = %63
  %86 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %87 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %86, i32 0, i32 2
  %88 = load %struct.octusb_td*, %struct.octusb_td** %87, align 8
  store %struct.octusb_td* %88, %struct.octusb_td** %3, align 8
  store i64 0, i64* %5, align 8
  br label %89

89:                                               ; preds = %85, %84, %61
  %90 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %92 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %91, i32 0, i32 3
  store %struct.octusb_td* %90, %struct.octusb_td** %92, align 8
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
