; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_standard_done_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_standard_done_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i64*, %struct.atmegadci_td*, %struct.TYPE_2__ }
%struct.atmegadci_td = type { i64, i32, %struct.atmegadci_td*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @atmegadci_standard_done_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmegadci_standard_done_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.atmegadci_td*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.atmegadci_td*, %struct.atmegadci_td** %8, align 8
  store %struct.atmegadci_td* %9, %struct.atmegadci_td** %3, align 8
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %12 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %11, i32 0, i32 0
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
  %33 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %34 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %33, i32 0, i32 1
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
  %48 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %49 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  store %struct.atmegadci_td* null, %struct.atmegadci_td** %3, align 8
  br label %85

53:                                               ; preds = %47
  %54 = load i64, i64* %4, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %58 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %64 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62, %56
  %69 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %70 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %75 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %74, i32 0, i32 2
  %76 = load %struct.atmegadci_td*, %struct.atmegadci_td** %75, align 8
  store %struct.atmegadci_td* %76, %struct.atmegadci_td** %3, align 8
  br label %78

77:                                               ; preds = %68
  store %struct.atmegadci_td* null, %struct.atmegadci_td** %3, align 8
  br label %78

78:                                               ; preds = %77, %73
  br label %80

79:                                               ; preds = %62
  store %struct.atmegadci_td* null, %struct.atmegadci_td** %3, align 8
  br label %80

80:                                               ; preds = %79, %78
  store i32 0, i32* %5, align 4
  br label %85

81:                                               ; preds = %53
  %82 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %83 = getelementptr inbounds %struct.atmegadci_td, %struct.atmegadci_td* %82, i32 0, i32 2
  %84 = load %struct.atmegadci_td*, %struct.atmegadci_td** %83, align 8
  store %struct.atmegadci_td* %84, %struct.atmegadci_td** %3, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %80, %52
  %86 = load %struct.atmegadci_td*, %struct.atmegadci_td** %3, align 8
  %87 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %88 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %87, i32 0, i32 3
  store %struct.atmegadci_td* %86, %struct.atmegadci_td** %88, align 8
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @USB_ERR_STALLED, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  ret i32 %96
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
