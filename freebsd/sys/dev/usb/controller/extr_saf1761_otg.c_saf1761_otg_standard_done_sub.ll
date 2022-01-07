; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_standard_done_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_standard_done_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i64*, %struct.saf1761_otg_td*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.saf1761_otg_td = type { i64, i32, %struct.saf1761_otg_td*, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ERR_STALLED = common dso_local global i64 0, align 8
@USB_ERR_IOERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_xfer*)* @saf1761_otg_standard_done_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @saf1761_otg_standard_done_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.saf1761_otg_td*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %8, align 8
  store %struct.saf1761_otg_td* %9, %struct.saf1761_otg_td** %3, align 8
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %12 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %15 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %18 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %22 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %25 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %10
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %34 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %29, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %41 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  br label %53

42:                                               ; preds = %28
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %48 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %43
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %42, %39
  br label %54

54:                                               ; preds = %53, %10
  %55 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %56 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %61 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i64, i64* @USB_ERR_STALLED, align 8
  br label %68

66:                                               ; preds = %59
  %67 = load i64, i64* @USB_ERR_IOERROR, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  store i64 %69, i64* %5, align 8
  store %struct.saf1761_otg_td* null, %struct.saf1761_otg_td** %3, align 8
  br label %102

70:                                               ; preds = %54
  %71 = load i64, i64* %4, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %75 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %81 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %79, %73
  %86 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %87 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %92 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %91, i32 0, i32 2
  %93 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %92, align 8
  store %struct.saf1761_otg_td* %93, %struct.saf1761_otg_td** %3, align 8
  br label %95

94:                                               ; preds = %85
  store %struct.saf1761_otg_td* null, %struct.saf1761_otg_td** %3, align 8
  br label %95

95:                                               ; preds = %94, %90
  br label %97

96:                                               ; preds = %79
  store %struct.saf1761_otg_td* null, %struct.saf1761_otg_td** %3, align 8
  br label %97

97:                                               ; preds = %96, %95
  store i64 0, i64* %5, align 8
  br label %102

98:                                               ; preds = %70
  %99 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %100 = getelementptr inbounds %struct.saf1761_otg_td, %struct.saf1761_otg_td* %99, i32 0, i32 2
  %101 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %100, align 8
  store %struct.saf1761_otg_td* %101, %struct.saf1761_otg_td** %3, align 8
  store i64 0, i64* %5, align 8
  br label %102

102:                                              ; preds = %98, %97, %68
  %103 = load %struct.saf1761_otg_td*, %struct.saf1761_otg_td** %3, align 8
  %104 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %105 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %104, i32 0, i32 3
  store %struct.saf1761_otg_td* %103, %struct.saf1761_otg_td** %105, align 8
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
