; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_usb_hub_port_probe_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_usb_hub_port_probe_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.acpi_uhub_softc = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@ACPI_VALID_ADR = common dso_local global i32 0, align 4
@__const.acpi_usb_hub_port_probe_cb.buf = private unnamed_addr constant [8 x i8] c"portXXX\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"port%ju\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"port nodes\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@acpi_uhub_port_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Port information\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @acpi_usb_hub_port_probe_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_usb_hub_port_probe_cb(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.acpi_uhub_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca %struct.sysctl_ctx_list*, align 8
  %15 = alloca %struct.sysctl_oid*, align 8
  %16 = alloca %struct.sysctl_oid_list*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call %struct.acpi_uhub_softc* @device_get_softc(i8* %18)
  store %struct.acpi_uhub_softc* %19, %struct.acpi_uhub_softc** %11, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @AcpiGetObjectInfo(i32 %20, %struct.TYPE_5__** %9)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @ACPI_SUCCESS(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %118

25:                                               ; preds = %4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ACPI_VALID_ADR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %115

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %115

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %11, align 8
  %42 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ule i64 %40, %43
  br i1 %44, label %45, label %115

45:                                               ; preds = %37
  %46 = bitcast [8 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.acpi_usb_hub_port_probe_cb.buf, i32 0, i32 0), i64 8, i1 false)
  %47 = load i8*, i8** %10, align 8
  %48 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i8* %47)
  store %struct.sysctl_ctx_list* %48, %struct.sysctl_ctx_list** %14, align 8
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @snprintf(i8* %49, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %14, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call %struct.sysctl_oid* @device_get_sysctl_tree(i8* %56)
  %58 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %57)
  %59 = load i32, i32* @OID_AUTO, align 4
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %61 = load i32, i32* @CTLFLAG_RD, align 4
  %62 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %55, %struct.sysctl_oid_list* %58, i32 %59, i8* %60, i32 %61, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %62, %struct.sysctl_oid** %15, align 8
  %63 = load %struct.sysctl_oid*, %struct.sysctl_oid** %15, align 8
  %64 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  store %struct.sysctl_oid_list* %64, %struct.sysctl_oid_list** %16, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %11, align 8
  %67 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %65, i32* %74, align 4
  %75 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %11, align 8
  %76 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %16, align 8
  %90 = call i32 @acpi_uhub_parse_upc(i8* %84, i64 %87, i32 %88, %struct.sysctl_oid_list* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %16, align 8
  %97 = call i32 @acpi_uhub_parse_pld(i8* %91, i64 %94, i32 %95, %struct.sysctl_oid_list* %96)
  %98 = load i8*, i8** %10, align 8
  %99 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i8* %98)
  %100 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %16, align 8
  %101 = load i32, i32* @OID_AUTO, align 4
  %102 = load i32, i32* @CTLTYPE_STRING, align 4
  %103 = load i32, i32* @CTLFLAG_RD, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %11, align 8
  %106 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %110, 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %111
  %113 = load i32, i32* @acpi_uhub_port_sysctl, align 4
  %114 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %99, %struct.sysctl_oid_list* %100, i32 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %104, %struct.TYPE_6__* %112, i32 0, i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %45, %37, %32, %25
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = call i32 @AcpiOsFree(%struct.TYPE_5__* %116)
  br label %118

118:                                              ; preds = %115, %4
  %119 = load i32, i32* @AE_OK, align 4
  ret i32 %119
}

declare dso_local %struct.acpi_uhub_softc* @device_get_softc(i8*) #1

declare dso_local i32 @AcpiGetObjectInfo(i32, %struct.TYPE_5__**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i8*) #1

declare dso_local i32 @acpi_uhub_parse_upc(i8*, i64, i32, %struct.sysctl_oid_list*) #1

declare dso_local i32 @acpi_uhub_parse_pld(i8*, i64, i32, %struct.sysctl_oid_list*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.TYPE_6__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
