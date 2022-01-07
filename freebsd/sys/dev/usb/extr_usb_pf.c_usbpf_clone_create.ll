; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }
%struct.ifnet = type { i32, i32, i32, i32, %struct.usb_bus*, i32 }
%struct.usb_bus = type { i32, %struct.ifnet* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"usbpf: Could not allocate instance\0A\00", align 1
@IFT_USB = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@usbusname = common dso_local global i32 0, align 4
@usbpf_ioctl = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@DLT_USB = common dso_local global i32 0, align 4
@USBPF_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i8*, i64, i32)* @usbpf_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbpf_clone_create(%struct.if_clone* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_clone*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ifnet*, align 8
  %13 = alloca %struct.usb_bus*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @ifc_name2unit(i8* %14, i32* %11)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %95

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %95

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = call %struct.usb_bus* @usbpf_ifname2ubus(i8* %26)
  store %struct.usb_bus* %27, %struct.usb_bus** %13, align 8
  %28 = load %struct.usb_bus*, %struct.usb_bus** %13, align 8
  %29 = icmp eq %struct.usb_bus* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %95

31:                                               ; preds = %25
  %32 = load %struct.usb_bus*, %struct.usb_bus** %13, align 8
  %33 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %32, i32 0, i32 1
  %34 = load %struct.ifnet*, %struct.ifnet** %33, align 8
  %35 = icmp ne %struct.ifnet* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %95

37:                                               ; preds = %31
  %38 = load %struct.if_clone*, %struct.if_clone** %6, align 8
  %39 = call i32 @ifc_alloc_unit(%struct.if_clone* %38, i32* %11)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.usb_bus*, %struct.usb_bus** %13, align 8
  %44 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %95

48:                                               ; preds = %37
  %49 = load i32, i32* @IFT_USB, align 4
  %50 = call %struct.ifnet* @if_alloc(i32 %49)
  %51 = load %struct.usb_bus*, %struct.usb_bus** %13, align 8
  %52 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %51, i32 0, i32 1
  store %struct.ifnet* %50, %struct.ifnet** %52, align 8
  store %struct.ifnet* %50, %struct.ifnet** %12, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %54 = icmp eq %struct.ifnet* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.if_clone*, %struct.if_clone** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ifc_free_unit(%struct.if_clone* %56, i32 %57)
  %59 = load %struct.usb_bus*, %struct.usb_bus** %13, align 8
  %60 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ENOSPC, align 4
  store i32 %63, i32* %5, align 4
  br label %95

64:                                               ; preds = %48
  %65 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strlcpy(i32 %67, i8* %68, i32 4)
  %70 = load %struct.usb_bus*, %struct.usb_bus** %13, align 8
  %71 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 4
  store %struct.usb_bus* %70, %struct.usb_bus** %72, align 8
  %73 = load i32, i32* @usbusname, align 4
  %74 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @usbpf_ioctl, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %83 = call i32 @if_attach(%struct.ifnet* %82)
  %84 = load i32, i32* @IFF_UP, align 4
  %85 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %90 = call i32 @rt_ifmsg(%struct.ifnet* %89)
  %91 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %92 = load i32, i32* @DLT_USB, align 4
  %93 = load i32, i32* @USBPF_HDR_LEN, align 4
  %94 = call i32 @bpfattach(%struct.ifnet* %91, i32 %92, i32 %93)
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %64, %55, %42, %36, %30, %23, %18
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @ifc_name2unit(i8*, i32*) #1

declare dso_local %struct.usb_bus* @usbpf_ifname2ubus(i8*) #1

declare dso_local i32 @ifc_alloc_unit(%struct.if_clone*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @ifc_free_unit(%struct.if_clone*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @rt_ifmsg(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
