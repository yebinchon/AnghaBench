; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_usb.c_ndisusb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_usb.c_ndisusb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drvdb_ent = type { %struct.ndis_usb_type*, i32, i32 }
%struct.ndis_usb_type = type { i64, i64, i32* }
%struct.ndisusb_softc = type { i32 }
%struct.usb_attach_arg = type { %struct.TYPE_2__, i32, %struct.drvdb_ent* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ndis_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"NDIS USB\00", align 1
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@PNPBus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"USB Bus\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ndisusb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisusb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.drvdb_ent*, align 8
  %5 = alloca %struct.ndisusb_softc*, align 8
  %6 = alloca %struct.usb_attach_arg*, align 8
  %7 = alloca %struct.ndis_softc*, align 8
  %8 = alloca %struct.ndis_usb_type*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ndisusb_softc* @device_get_softc(i32 %11)
  store %struct.ndisusb_softc* %12, %struct.ndisusb_softc** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.usb_attach_arg* @device_get_ivars(i32 %13)
  store %struct.usb_attach_arg* %14, %struct.usb_attach_arg** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_set_usb_desc(i32 %15)
  %17 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %18 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %17, i32 0, i32 2
  %19 = load %struct.drvdb_ent*, %struct.drvdb_ent** %18, align 8
  store %struct.drvdb_ent* %19, %struct.drvdb_ent** %4, align 8
  %20 = load %struct.ndisusb_softc*, %struct.ndisusb_softc** %5, align 8
  %21 = bitcast %struct.ndisusb_softc* %20 to %struct.ndis_softc*
  store %struct.ndis_softc* %21, %struct.ndis_softc** %7, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %26 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %25, i32 0, i32 5
  %27 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.drvdb_ent*, %struct.drvdb_ent** %4, align 8
  %31 = getelementptr inbounds %struct.drvdb_ent, %struct.drvdb_ent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %34 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drvdb_ent*, %struct.drvdb_ent** %4, align 8
  %36 = getelementptr inbounds %struct.drvdb_ent, %struct.drvdb_ent* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %39 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @PNPBus, align 4
  %41 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %42 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %44 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %47 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = call i32* @windrv_lookup(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @windrv_create_pdo(i32* %49, i32 %50)
  %52 = load %struct.drvdb_ent*, %struct.drvdb_ent** %4, align 8
  %53 = getelementptr inbounds %struct.drvdb_ent, %struct.drvdb_ent* %52, i32 0, i32 0
  %54 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %53, align 8
  store %struct.ndis_usb_type* %54, %struct.ndis_usb_type** %8, align 8
  br label %55

55:                                               ; preds = %82, %1
  %56 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %8, align 8
  %57 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %62 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %8, align 8
  %66 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %71 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %8, align 8
  %75 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %81 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %87

82:                                               ; preds = %69, %60
  %83 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %8, align 8
  %84 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %83, i32 1
  store %struct.ndis_usb_type* %84, %struct.ndis_usb_type** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %55

87:                                               ; preds = %78, %55
  %88 = load i32, i32* %3, align 4
  %89 = call i64 @ndis_attach(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @ENXIO, align 4
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %91
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.ndisusb_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32, i32) #1

declare dso_local i32* @windrv_lookup(i32, i8*) #1

declare dso_local i32 @windrv_create_pdo(i32*, i32) #1

declare dso_local i64 @ndis_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
