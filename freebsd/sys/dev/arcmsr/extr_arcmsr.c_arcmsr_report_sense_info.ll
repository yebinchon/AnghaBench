; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_report_sense_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_report_sense_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { %struct.TYPE_4__, %union.ccb* }
%struct.TYPE_4__ = type { i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CommandControlBlock*)* @arcmsr_report_sense_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_report_sense_info(%struct.CommandControlBlock* %0) #0 {
  %2 = alloca %struct.CommandControlBlock*, align 8
  %3 = alloca %union.ccb*, align 8
  store %struct.CommandControlBlock* %0, %struct.CommandControlBlock** %2, align 8
  %4 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %5 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %4, i32 0, i32 1
  %6 = load %union.ccb*, %union.ccb** %5, align 8
  store %union.ccb* %6, %union.ccb** %3, align 8
  %7 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %8 = load %union.ccb*, %union.ccb** %3, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %7
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %14 = load %union.ccb*, %union.ccb** %3, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_5__*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load %union.ccb*, %union.ccb** %3, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %1
  %23 = load %union.ccb*, %union.ccb** %3, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 4)
  %27 = load %union.ccb*, %union.ccb** %3, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %31 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @get_min(i32 4, i32 4)
  %35 = call i32 @memcpy(i32* %29, i32 %33, i32 %34)
  %36 = load %union.ccb*, %union.ccb** %3, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 240, i32* %39, align 8
  %40 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %41 = load %union.ccb*, %union.ccb** %3, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @get_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
