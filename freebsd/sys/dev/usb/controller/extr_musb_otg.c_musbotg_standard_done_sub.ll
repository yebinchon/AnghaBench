; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_standard_done_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_standard_done_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i64*, %struct.musbotg_td*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.musbotg_td = type { i64, i32, %struct.musbotg_td*, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @musbotg_standard_done_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_standard_done_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = call i32 @DPRINTFN(i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.musbotg_td*, %struct.musbotg_td** %8, align 8
  store %struct.musbotg_td* %9, %struct.musbotg_td** %3, align 8
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %12 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %15 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %14, i32 0, i32 4
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
  %40 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %41 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %40, i32 0, i32 1
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
  %55 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %56 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  store %struct.musbotg_td* null, %struct.musbotg_td** %3, align 8
  br label %92

60:                                               ; preds = %54
  %61 = load i64, i64* %4, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %65 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %71 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69, %63
  %76 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %77 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %82 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %81, i32 0, i32 2
  %83 = load %struct.musbotg_td*, %struct.musbotg_td** %82, align 8
  store %struct.musbotg_td* %83, %struct.musbotg_td** %3, align 8
  br label %85

84:                                               ; preds = %75
  store %struct.musbotg_td* null, %struct.musbotg_td** %3, align 8
  br label %85

85:                                               ; preds = %84, %80
  br label %87

86:                                               ; preds = %69
  store %struct.musbotg_td* null, %struct.musbotg_td** %3, align 8
  br label %87

87:                                               ; preds = %86, %85
  store i32 0, i32* %5, align 4
  br label %92

88:                                               ; preds = %60
  %89 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %90 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %89, i32 0, i32 2
  %91 = load %struct.musbotg_td*, %struct.musbotg_td** %90, align 8
  store %struct.musbotg_td* %91, %struct.musbotg_td** %3, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %87, %59
  %93 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %95 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %94, i32 0, i32 3
  store %struct.musbotg_td* %93, %struct.musbotg_td** %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @USB_ERR_STALLED, align 4
  br label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  ret i32 %103
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
