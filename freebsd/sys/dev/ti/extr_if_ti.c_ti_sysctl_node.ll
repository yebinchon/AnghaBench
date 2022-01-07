; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"dev.ti.%d.dac\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"rx_coal_ticks\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Receive coalcesced ticks\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"rx_max_coal_bds\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Receive max coalcesced BDs\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"tx_coal_ticks\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Send coalcesced ticks\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"tx_max_coal_bds\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Send max coalcesced BDs\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"tx_buf_ratio\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Ratio of NIC memory devoted to TX buffer\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"stat_ticks\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Number of clock ticks for statistics update interval\00", align 1
@TI_TICKS_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sysctl_node(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca [32 x i8], align 16
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %6 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_get_sysctl_tree(i32 %12)
  %14 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %13)
  store %struct.sysctl_oid_list* %14, %struct.sysctl_oid_list** %4, align 8
  %15 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %18 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_get_unit(i32 %20)
  %22 = call i32 @snprintf(i8* %17, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %24 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %24, i32 0, i32 0
  %26 = call i32 @TUNABLE_INT_FETCH(i8* %23, i32* %25)
  %27 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %28 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %29 = load i32, i32* @OID_AUTO, align 4
  %30 = load i32, i32* @CTLFLAG_RW, align 4
  %31 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %31, i32 0, i32 1
  %33 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %27, %struct.sysctl_oid_list* %28, i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32* %32, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %35 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RW, align 4
  %38 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %38, i32 0, i32 2
  %40 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %34, %struct.sysctl_oid_list* %35, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32* %39, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %42 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %43 = load i32, i32* @OID_AUTO, align 4
  %44 = load i32, i32* @CTLFLAG_RW, align 4
  %45 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %45, i32 0, i32 3
  %47 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %41, %struct.sysctl_oid_list* %42, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %44, i32* %46, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %48 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %49 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %50 = load i32, i32* @OID_AUTO, align 4
  %51 = load i32, i32* @CTLFLAG_RW, align 4
  %52 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %52, i32 0, i32 4
  %54 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %48, %struct.sysctl_oid_list* %49, i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %51, i32* %53, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %55 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %56 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLFLAG_RW, align 4
  %59 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %59, i32 0, i32 5
  %61 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %55, %struct.sysctl_oid_list* %56, i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %58, i32* %60, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %62 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %63 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLFLAG_RW, align 4
  %66 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %67 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %66, i32 0, i32 6
  %68 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %62, %struct.sysctl_oid_list* %63, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %65, i32* %67, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  %69 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %69, i32 0, i32 1
  store i32 170, i32* %70, align 4
  %71 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %72 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @device_get_name(i32 %73)
  %75 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_get_unit(i32 %77)
  %79 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %80 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %79, i32 0, i32 1
  %81 = call i32 @resource_int_value(i32 %74, i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %80)
  %82 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %83 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %82, i32 0, i32 2
  store i32 64, i32* %83, align 4
  %84 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @device_get_name(i32 %86)
  %88 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %89 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @device_get_unit(i32 %90)
  %92 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %93 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %92, i32 0, i32 2
  %94 = call i32 @resource_int_value(i32 %87, i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %93)
  %95 = load i32, i32* @TI_TICKS_PER_SEC, align 4
  %96 = sdiv i32 %95, 500
  %97 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %100 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @device_get_name(i32 %101)
  %103 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @device_get_unit(i32 %105)
  %107 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %108 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %107, i32 0, i32 3
  %109 = call i32 @resource_int_value(i32 %102, i32 %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %108)
  %110 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %111 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %110, i32 0, i32 4
  store i32 32, i32* %111, align 4
  %112 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %113 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @device_get_name(i32 %114)
  %116 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %117 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @device_get_unit(i32 %118)
  %120 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %121 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %120, i32 0, i32 4
  %122 = call i32 @resource_int_value(i32 %115, i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* %121)
  %123 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %123, i32 0, i32 5
  store i32 21, i32* %124, align 4
  %125 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @device_get_name(i32 %127)
  %129 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %130 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @device_get_unit(i32 %131)
  %133 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %134 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %133, i32 0, i32 5
  %135 = call i32 @resource_int_value(i32 %128, i32 %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %134)
  %136 = load i32, i32* @TI_TICKS_PER_SEC, align 4
  %137 = mul nsw i32 2, %136
  %138 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %139 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %141 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @device_get_name(i32 %142)
  %144 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %145 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @device_get_unit(i32 %146)
  %148 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %149 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %148, i32 0, i32 6
  %150 = call i32 @resource_int_value(i32 %143, i32 %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* %149)
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
