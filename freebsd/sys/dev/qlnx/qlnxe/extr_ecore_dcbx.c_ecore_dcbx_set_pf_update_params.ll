; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_pf_update_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_pf_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dcbx_results = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.pf_update_ramrod_data = type { %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, %struct.protocol_dcb_data, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.protocol_dcb_data = type { i32 }

@DCBX_PROTOCOL_FCOE = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ROCE = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ROCE_V2 = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ISCSI = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ETH = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_IWARP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_dcbx_set_pf_update_params(%struct.ecore_dcbx_results* %0, %struct.pf_update_ramrod_data* %1) #0 {
  %3 = alloca %struct.ecore_dcbx_results*, align 8
  %4 = alloca %struct.pf_update_ramrod_data*, align 8
  %5 = alloca %struct.protocol_dcb_data*, align 8
  %6 = alloca i8*, align 8
  store %struct.ecore_dcbx_results* %0, %struct.ecore_dcbx_results** %3, align 8
  store %struct.pf_update_ramrod_data* %1, %struct.pf_update_ramrod_data** %4, align 8
  %7 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* @DCBX_PROTOCOL_FCOE, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %16 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %15, i32 0, i32 11
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @DCBX_PROTOCOL_ROCE, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %26 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %28 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @DCBX_PROTOCOL_ROCE_V2, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %36 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %38 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* @DCBX_PROTOCOL_ISCSI, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %46 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %48 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* @DCBX_PROTOCOL_ETH, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %56 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %58 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* @DCBX_PROTOCOL_IWARP, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %66 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %68 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %67, i32 0, i32 5
  store %struct.protocol_dcb_data* %68, %struct.protocol_dcb_data** %5, align 8
  %69 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %5, align 8
  %70 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %71 = load i64, i64* @DCBX_PROTOCOL_FCOE, align 8
  %72 = call i32 @ecore_dcbx_update_protocol_data(%struct.protocol_dcb_data* %69, %struct.ecore_dcbx_results* %70, i64 %71)
  %73 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %74 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %73, i32 0, i32 4
  store %struct.protocol_dcb_data* %74, %struct.protocol_dcb_data** %5, align 8
  %75 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %5, align 8
  %76 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %77 = load i64, i64* @DCBX_PROTOCOL_ROCE, align 8
  %78 = call i32 @ecore_dcbx_update_protocol_data(%struct.protocol_dcb_data* %75, %struct.ecore_dcbx_results* %76, i64 %77)
  %79 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %80 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %79, i32 0, i32 3
  store %struct.protocol_dcb_data* %80, %struct.protocol_dcb_data** %5, align 8
  %81 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %5, align 8
  %82 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %83 = load i64, i64* @DCBX_PROTOCOL_ROCE_V2, align 8
  %84 = call i32 @ecore_dcbx_update_protocol_data(%struct.protocol_dcb_data* %81, %struct.ecore_dcbx_results* %82, i64 %83)
  %85 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %86 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %85, i32 0, i32 2
  store %struct.protocol_dcb_data* %86, %struct.protocol_dcb_data** %5, align 8
  %87 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %5, align 8
  %88 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %89 = load i64, i64* @DCBX_PROTOCOL_ISCSI, align 8
  %90 = call i32 @ecore_dcbx_update_protocol_data(%struct.protocol_dcb_data* %87, %struct.ecore_dcbx_results* %88, i64 %89)
  %91 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %92 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %91, i32 0, i32 1
  store %struct.protocol_dcb_data* %92, %struct.protocol_dcb_data** %5, align 8
  %93 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %5, align 8
  %94 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %95 = load i64, i64* @DCBX_PROTOCOL_ETH, align 8
  %96 = call i32 @ecore_dcbx_update_protocol_data(%struct.protocol_dcb_data* %93, %struct.ecore_dcbx_results* %94, i64 %95)
  %97 = load %struct.pf_update_ramrod_data*, %struct.pf_update_ramrod_data** %4, align 8
  %98 = getelementptr inbounds %struct.pf_update_ramrod_data, %struct.pf_update_ramrod_data* %97, i32 0, i32 0
  store %struct.protocol_dcb_data* %98, %struct.protocol_dcb_data** %5, align 8
  %99 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %5, align 8
  %100 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %3, align 8
  %101 = load i64, i64* @DCBX_PROTOCOL_IWARP, align 8
  %102 = call i32 @ecore_dcbx_update_protocol_data(%struct.protocol_dcb_data* %99, %struct.ecore_dcbx_results* %100, i64 %101)
  ret void
}

declare dso_local i32 @ecore_dcbx_update_protocol_data(%struct.protocol_dcb_data*, %struct.ecore_dcbx_results*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
