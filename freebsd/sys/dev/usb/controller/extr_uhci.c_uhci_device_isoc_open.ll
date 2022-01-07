; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_device_isoc_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_device_isoc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, %struct.TYPE_2__* }

@UE_DIR_IN = common dso_local global i64 0, align 8
@UHCI_TD_IOS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @uhci_device_isoc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_device_isoc_open(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @UE_GET_DIR(i32 %8)
  %10 = load i64, i64* @UE_DIR_IN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @UHCI_TD_IN(i32 0, i32 %15, i32 %18, i32 0)
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %22 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %25 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @UHCI_TD_OUT(i32 0, i32 %23, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %20, %12
  %29 = phi i8* [ %19, %12 ], [ %27, %20 ]
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @htole32(i8* %30)
  store i8* %31, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %63, %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %66

35:                                               ; preds = %32
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %37 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %3, align 8
  br label %43

43:                                               ; preds = %58, %35
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i8*, i8** @UHCI_TD_IOS, align 8
  %48 = call i8* @htole32(i8* %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @usb_pc_cpu_flush(i32 %56)
  br label %58

58:                                               ; preds = %46
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  store %struct.TYPE_2__* %61, %struct.TYPE_2__** %3, align 8
  br label %43

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %32

66:                                               ; preds = %32
  ret void
}

declare dso_local i64 @UE_GET_DIR(i32) #1

declare dso_local i8* @UHCI_TD_IN(i32, i32, i32, i32) #1

declare dso_local i8* @UHCI_TD_OUT(i32, i32, i32, i32) #1

declare dso_local i8* @htole32(i8*) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
