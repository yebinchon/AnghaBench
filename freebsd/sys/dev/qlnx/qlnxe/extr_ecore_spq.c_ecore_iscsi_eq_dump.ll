; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_iscsi_eq_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_iscsi_eq_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.event_ring_entry = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MAX_ISCSI_EQE_OPCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown iSCSI EQ: %x\0A\00", align 1
@ECORE_MSG_STORAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"iSCSI EQE: Port %x, Op %x, echo %x, FWret %x, CID %x, ConnID %x, ERR %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.event_ring_entry*)* @ecore_iscsi_eq_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iscsi_eq_dump(%struct.ecore_hwfn* %0, %struct.event_ring_entry* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.event_ring_entry*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.event_ring_entry* %1, %struct.event_ring_entry** %4, align 8
  %5 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %6 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAX_ISCSI_EQE_OPCODE, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %13 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %11, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %18 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %56 [
    i32 133, label %20
    i32 134, label %20
    i32 131, label %21
    i32 129, label %21
    i32 128, label %55
    i32 135, label %55
    i32 142, label %55
    i32 136, label %55
    i32 144, label %55
    i32 143, label %55
    i32 137, label %55
    i32 138, label %55
    i32 139, label %55
    i32 140, label %55
    i32 141, label %55
    i32 132, label %55
    i32 130, label %55
  ]

20:                                               ; preds = %16, %16
  br label %57

21:                                               ; preds = %16, %16
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %23 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %28 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %31 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OSAL_LE16_TO_CPU(i32 %32)
  %34 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %35 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %38 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @OSAL_LE16_TO_CPU(i32 %41)
  %43 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %44 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @OSAL_LE16_TO_CPU(i32 %47)
  %49 = load %struct.event_ring_entry*, %struct.event_ring_entry** %4, align 8
  %50 = getelementptr inbounds %struct.event_ring_entry, %struct.event_ring_entry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %22, i32 %23, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i32 %33, i32 %36, i32 %42, i32 %48, i32 %53)
  br label %57

55:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  br label %56

56:                                               ; preds = %16, %55
  br label %57

57:                                               ; preds = %56, %21, %20
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OSAL_LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
