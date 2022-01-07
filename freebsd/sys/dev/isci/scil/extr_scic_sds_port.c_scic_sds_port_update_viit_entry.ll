; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_update_viit_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_update_viit_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@initiator_sas_address_hi = common dso_local global i32 0, align 4
@initiator_sas_address_lo = common dso_local global i32 0, align 4
@reserved = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@SCU_VIIT_ENTRY_ID_VIIT = common dso_local global i64 0, align 8
@SCU_VIIT_IPPT_INITIATOR = common dso_local global i64 0, align 8
@SCU_VIIT_ENTRY_LPVIE_SHIFT = common dso_local global i64 0, align 8
@SCU_VIIT_STATUS_ALL_VALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_port_update_viit_entry(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call i32 @scic_sds_port_get_sas_address(%struct.TYPE_8__* %4, %struct.TYPE_7__* %3)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = load i32, i32* @initiator_sas_address_hi, align 4
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @scu_port_viit_register_write(%struct.TYPE_8__* %6, i32 %7, i64 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = load i32, i32* @initiator_sas_address_lo, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @scu_port_viit_register_write(%struct.TYPE_8__* %11, i32 %12, i64 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = load i32, i32* @reserved, align 4
  %18 = call i32 @scu_port_viit_register_write(%struct.TYPE_8__* %16, i32 %17, i64 0)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load i32, i32* @status, align 4
  %21 = load i64, i64* @SCU_VIIT_ENTRY_ID_VIIT, align 8
  %22 = load i64, i64* @SCU_VIIT_IPPT_INITIATOR, align 8
  %23 = or i64 %21, %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = shl i64 1, %26
  %28 = load i64, i64* @SCU_VIIT_ENTRY_LPVIE_SHIFT, align 8
  %29 = shl i64 %27, %28
  %30 = or i64 %23, %29
  %31 = load i64, i64* @SCU_VIIT_STATUS_ALL_VALID, align 8
  %32 = or i64 %30, %31
  %33 = call i32 @scu_port_viit_register_write(%struct.TYPE_8__* %19, i32 %20, i64 %32)
  ret void
}

declare dso_local i32 @scic_sds_port_get_sas_address(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @scu_port_viit_register_write(%struct.TYPE_8__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
