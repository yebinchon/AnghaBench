; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_sysctlattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_sysctlattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_usb_softc = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Rx buffer size, 512-byte units [%d...%d]\00", align 1
@RTWN_USB_RXBUFSZ_MIN = common dso_local global i32 0, align 4
@RTWN_USB_RXBUFSZ_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ret (%d) <= 0!\0A\00", align 1
@RTWN_USB_RXBUFSZ_DEF = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"rx_buf_size\00", align 1
@CTLFLAG_RDTUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_usb_sysctlattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_usb_sysctlattach(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.rtwn_usb_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %9 = call %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc* %8)
  store %struct.rtwn_usb_softc* %9, %struct.rtwn_usb_softc** %3, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %4, align 8
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %16)
  store %struct.sysctl_oid* %17, %struct.sysctl_oid** %5, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %19 = load i32, i32* @RTWN_USB_RXBUFSZ_MIN, align 4
  %20 = load i32, i32* @RTWN_USB_RXBUFSZ_MAX, align 4
  %21 = call i32 @snprintf(i8* %18, i32 64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %24, i8* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RTWN_USB_RXBUFSZ_DEF, align 4
  %31 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %34 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %35 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %34)
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %38 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %39 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %38, i32 0, i32 0
  %40 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %44 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %33, i32 %35, i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32* %39, i32 %42, i8* %43)
  %45 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %46 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RTWN_USB_RXBUFSZ_MIN, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load i32, i32* @RTWN_USB_RXBUFSZ_MIN, align 4
  %52 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %1
  %55 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %56 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RTWN_USB_RXBUFSZ_MAX, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @RTWN_USB_RXBUFSZ_MAX, align 4
  %62 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %63 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %54
  ret void
}

declare dso_local %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
