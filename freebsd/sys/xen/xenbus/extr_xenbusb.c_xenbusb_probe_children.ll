; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_probe_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_probe_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device_ivars = type { i32, i32 }
%struct.xenbusb_softc = type { i32 }

@DS_NOTPRESENT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@XenbusStateClosed = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xenbusb_probe_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenbusb_probe_children(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xenbus_device_ivars*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xenbusb_softc*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @device_get_children(i32 %9, i32** %3, i32* %6)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %101

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %94, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %97

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @device_get_state(i32 %22)
  %24 = load i64, i64* @DS_NOTPRESENT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load i32, i32* %2, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xenbusb_verify_device(i32 %27, i32 %32)
  br label %94

34:                                               ; preds = %17
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_probe_and_attach(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ENXIO, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = load i32, i32* %2, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xenbusb_delete_child(i32 %45, i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call %struct.xenbusb_softc* @device_get_softc(i32 %52)
  store %struct.xenbusb_softc* %53, %struct.xenbusb_softc** %8, align 8
  %54 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %8, align 8
  %55 = call i32 @xenbusb_release_confighook(%struct.xenbusb_softc* %54)
  br label %94

56:                                               ; preds = %34
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @XenbusStateClosed, align 4
  %66 = call i32 @xenbus_set_state(i32 %64, i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @xenbusb_delete_child(i32 %67, i32 %72)
  br label %94

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @xenbusb_device_sysctl_init(i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.xenbus_device_ivars* @device_get_ivars(i32 %86)
  store %struct.xenbus_device_ivars* %87, %struct.xenbus_device_ivars** %4, align 8
  %88 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %89 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %88, i32 0, i32 1
  %90 = call i32 @xs_register_watch(i32* %89)
  %91 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %4, align 8
  %92 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %91, i32 0, i32 0
  %93 = call i32 @xs_register_watch(i32* %92)
  br label %94

94:                                               ; preds = %75, %59, %44, %26
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %13

97:                                               ; preds = %13
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* @M_TEMP, align 4
  %100 = call i32 @free(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %1
  ret i32 0
}

declare dso_local i64 @device_get_children(i32, i32**, i32*) #1

declare dso_local i64 @device_get_state(i32) #1

declare dso_local i32 @xenbusb_verify_device(i32, i32) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @xenbusb_delete_child(i32, i32) #1

declare dso_local %struct.xenbusb_softc* @device_get_softc(i32) #1

declare dso_local i32 @xenbusb_release_confighook(%struct.xenbusb_softc*) #1

declare dso_local i32 @xenbus_set_state(i32, i32) #1

declare dso_local i32 @xenbusb_device_sysctl_init(i32) #1

declare dso_local %struct.xenbus_device_ivars* @device_get_ivars(i32) #1

declare dso_local i32 @xs_register_watch(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
