; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_valid_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_valid_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@QLOGIC_PCI_DEVICE_ID_1634 = common dso_local global i64 0, align 8
@QLOGIC_PCI_DEVICE_ID_1644 = common dso_local global i64 0, align 8
@QLOGIC_PCI_DEVICE_ID_1656 = common dso_local global i64 0, align 8
@QLOGIC_PCI_DEVICE_ID_1654 = common dso_local global i64 0, align 8
@QLOGIC_PCI_DEVICE_ID_8070 = common dso_local global i64 0, align 8
@QLOGIC_PCI_DEVICE_ID_8090 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @qlnx_valid_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_valid_device(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @QLOGIC_PCI_DEVICE_ID_1634, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @QLOGIC_PCI_DEVICE_ID_1644, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @QLOGIC_PCI_DEVICE_ID_1656, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @QLOGIC_PCI_DEVICE_ID_1654, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @QLOGIC_PCI_DEVICE_ID_8070, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %11, %1
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
