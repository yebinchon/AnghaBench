; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_parse_upc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_parse_upc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.acpi_uhub_softc = type { %struct.acpi_uhub_port* }
%struct.acpi_uhub_port = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_UPC\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"non\00", align 1
@ACPI_UPC_CONNECTABLE = common dso_local global i64 0, align 8
@usb_debug = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Port %u %sconnectable %s\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"upc\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@SYSCTL_NULL_U32_PTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"UPC value. MSB is visible flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.sysctl_oid_list*)* @acpi_uhub_parse_upc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_uhub_parse_upc(i32 %0, i32 %1, i32 %2, %struct.sysctl_oid_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.acpi_uhub_softc*, align 8
  %11 = alloca %struct.acpi_uhub_port*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sysctl_oid_list* %3, %struct.sysctl_oid_list** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.acpi_uhub_softc* @device_get_softc(i32 %16)
  store %struct.acpi_uhub_softc* %17, %struct.acpi_uhub_softc** %10, align 8
  %18 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %10, align 8
  %19 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %18, i32 0, i32 0
  %20 = load %struct.acpi_uhub_port*, %struct.acpi_uhub_port** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.acpi_uhub_port, %struct.acpi_uhub_port* %20, i64 %23
  store %struct.acpi_uhub_port* %24, %struct.acpi_uhub_port** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @AcpiEvaluateObject(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_3__* %9)
  %30 = load i64, i64* @AE_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @acpi_PkgInt(i32* %35, i32 0, i64* %14)
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @acpi_PkgInt(i32* %37, i32 1, i64* %13)
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  store i8* %42, i8** %15, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.acpi_uhub_port*, %struct.acpi_uhub_port** %11, align 8
  %45 = getelementptr inbounds %struct.acpi_uhub_port, %struct.acpi_uhub_port* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i64, i64* @ACPI_UPC_CONNECTABLE, align 8
  br label %51

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i64 [ %49, %48 ], [ 0, %50 ]
  %53 = load %struct.acpi_uhub_port*, %struct.acpi_uhub_port** %11, align 8
  %54 = getelementptr inbounds %struct.acpi_uhub_port, %struct.acpi_uhub_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* @usb_debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @acpi_uhub_upc_type(i64 %63)
  %65 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %61, i8* %62, i32 %64)
  br label %66

66:                                               ; preds = %59, %51
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @device_get_sysctl_ctx(i32 %67)
  %69 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %70 = load i32, i32* @OID_AUTO, align 4
  %71 = load i32, i32* @CTLFLAG_RD, align 4
  %72 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SYSCTL_NULL_U32_PTR, align 4
  %75 = load %struct.acpi_uhub_port*, %struct.acpi_uhub_port** %11, align 8
  %76 = getelementptr inbounds %struct.acpi_uhub_port, %struct.acpi_uhub_port* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @SYSCTL_ADD_U32(i32 %68, %struct.sysctl_oid_list* %69, i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %74, i64 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %66, %4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @AcpiOsFree(i32* %81)
  ret i32 0
}

declare dso_local %struct.acpi_uhub_softc* @device_get_softc(i32) #1

declare dso_local i64 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @acpi_PkgInt(i32*, i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @acpi_uhub_upc_type(i64) #1

declare dso_local i32 @SYSCTL_ADD_U32(i32, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i64, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
