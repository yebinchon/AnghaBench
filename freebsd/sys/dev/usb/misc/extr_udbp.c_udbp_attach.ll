; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.udbp_softc = type { i8*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"udbp lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@udbp_config = common dso_local global i32 0, align 4
@UDBP_T_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@UDBP_Q_MAXLEN = common dso_local global i32 0, align 4
@ng_udbp_typestruct = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: Could not create Netgraph node\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: Could not name node\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @udbp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.udbp_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.usb_attach_arg* @device_get_ivars(i32 %7)
  store %struct.usb_attach_arg* %8, %struct.usb_attach_arg** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.udbp_softc* @device_get_softc(i32 %9)
  store %struct.udbp_softc* %10, %struct.udbp_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_set_usb_desc(i32 %11)
  %13 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %14 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @device_get_nameunit(i32 %16)
  %18 = call i32 @snprintf(i8* %15, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %20 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %19, i32 0, i32 4
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = load i32, i32* @MTX_RECURSE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %23)
  %25 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %26 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %29 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %32 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @udbp_config, align 4
  %35 = load i32, i32* @UDBP_T_MAX, align 4
  %36 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %37 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %38 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %37, i32 0, i32 4
  %39 = call i32 @usbd_transfer_setup(i32 %27, i32* %30, i32 %33, i32 %34, i32 %35, %struct.udbp_softc* %36, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @usbd_errstr(i32 %43)
  %45 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %92

46:                                               ; preds = %1
  %47 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %48 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %47, i32 0, i32 3
  %49 = load i32, i32* @UDBP_Q_MAXLEN, align 4
  %50 = call i32 @NG_BT_MBUFQ_INIT(i32* %48, i32 %49)
  %51 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %52 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %51, i32 0, i32 2
  %53 = load i32, i32* @UDBP_Q_MAXLEN, align 4
  %54 = call i32 @NG_BT_MBUFQ_INIT(i32* %52, i32 %53)
  %55 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %56 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %55, i32 0, i32 1
  %57 = call i64 @ng_make_node_common(i32* @ng_udbp_typestruct, i32** %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %61 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %65 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %92

66:                                               ; preds = %46
  %67 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %68 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %71 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @ng_name_node(i32* %69, i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %77 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  %80 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %81 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @NG_NODE_UNREF(i32* %82)
  %84 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %85 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %92

86:                                               ; preds = %66
  %87 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %88 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %91 = call i32 @NG_NODE_SET_PRIVATE(i32* %89, %struct.udbp_softc* %90)
  store i32 0, i32* %2, align 4
  br label %96

92:                                               ; preds = %75, %59, %42
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @udbp_detach(i32 %93)
  %95 = load i32, i32* @ENOMEM, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.udbp_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.udbp_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @NG_BT_MBUFQ_INIT(i32*, i32) #1

declare dso_local i64 @ng_make_node_common(i32*, i32**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @ng_name_node(i32*, i8*) #1

declare dso_local i32 @NG_NODE_UNREF(i32*) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32*, %struct.udbp_softc*) #1

declare dso_local i32 @udbp_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
