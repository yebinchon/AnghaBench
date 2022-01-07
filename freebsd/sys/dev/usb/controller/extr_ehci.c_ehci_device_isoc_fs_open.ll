; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_device_isoc_fs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_device_isoc_fs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_6__**, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@UE_DIR_IN = common dso_local global i64 0, align 8
@EHCI_SITD_SET_DIR_IN = common dso_local global i32 0, align 4
@EHCI_LINK_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @ehci_device_isoc_fs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_device_isoc_fs_open(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @EHCI_BUS2SC(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @EHCI_SITD_SET_ADDR(i32 %15)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %18 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @UE_GET_ADDR(i32 %19)
  %21 = call i32 @EHCI_SITD_SET_ENDPT(i32 %20)
  %22 = or i32 %16, %21
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @EHCI_SITD_SET_HUBA(i32 %29)
  %31 = or i32 %22, %30
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %33 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @EHCI_SITD_SET_PORT(i32 %38)
  %40 = or i32 %31, %39
  store i32 %40, i32* %5, align 4
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %42 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @UE_GET_DIR(i32 %43)
  %45 = load i64, i64* @UE_DIR_IN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load i32, i32* @EHCI_SITD_SET_DIR_IN, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %1
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i8* @htohc32(i32* %52, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %88, %51
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %91

59:                                               ; preds = %56
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %61 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %4, align 8
  br label %67

67:                                               ; preds = %83, %59
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @EHCI_LINK_TERMINATE, align 4
  %76 = call i8* @htohc32(i32* %74, i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @usb_pc_cpu_flush(i32 %81)
  br label %83

83:                                               ; preds = %70
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %4, align 8
  br label %67

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %56

91:                                               ; preds = %56
  ret void
}

declare dso_local i32* @EHCI_BUS2SC(i32) #1

declare dso_local i32 @EHCI_SITD_SET_ADDR(i32) #1

declare dso_local i32 @EHCI_SITD_SET_ENDPT(i32) #1

declare dso_local i32 @UE_GET_ADDR(i32) #1

declare dso_local i32 @EHCI_SITD_SET_HUBA(i32) #1

declare dso_local i32 @EHCI_SITD_SET_PORT(i32) #1

declare dso_local i64 @UE_GET_DIR(i32) #1

declare dso_local i8* @htohc32(i32*, i32) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
