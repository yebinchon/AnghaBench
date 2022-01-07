; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_handle_virtual_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_handle_virtual_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@T_PROCESSOR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"Areca   \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"RAID controller \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"R001\00", align 1
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, %union.ccb*)* @arcmsr_handle_virtual_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_handle_virtual_command(%struct.AdapterControlBlock* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca [36 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %union.ccb*, %union.ccb** %4, align 8
  %8 = bitcast %union.ccb* %7 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 8
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = call i32 @xpt_done(%union.ccb* %19)
  br label %80

21:                                               ; preds = %2
  %22 = load i32, i32* @CAM_REQ_CMP, align 4
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load %union.ccb*, %union.ccb** %4, align 8
  %29 = bitcast %union.ccb* %28 to %struct.TYPE_4__*
  %30 = call i32* @scsiio_cdb_ptr(%struct.TYPE_4__* %29)
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %77 [
    i32 130, label %33
    i32 128, label %58
    i32 129, label %58
  ]

33:                                               ; preds = %21
  %34 = load %union.ccb*, %union.ccb** %4, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %6, align 8
  %38 = load i8, i8* @T_PROCESSOR, align 1
  %39 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 0
  store i8 %38, i8* %39, align 16
  %40 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 2
  store i8 0, i8* %41, align 2
  %42 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 3
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 4
  store i8 31, i8* %43, align 4
  %44 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 5
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 6
  store i8 0, i8* %45, align 2
  %46 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 7
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 8
  %48 = call i32 @strncpy(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %49 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 16
  %50 = call i32 @strncpy(i8* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %51 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 32
  %52 = call i32 @strncpy(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 0
  %55 = call i32 @memcpy(i8* %53, i8* %54, i32 36)
  %56 = load %union.ccb*, %union.ccb** %4, align 8
  %57 = call i32 @xpt_done(%union.ccb* %56)
  br label %80

58:                                               ; preds = %21, %21
  %59 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %60 = load %union.ccb*, %union.ccb** %4, align 8
  %61 = call i32 @arcmsr_iop_message_xfer(%struct.AdapterControlBlock* %59, %union.ccb* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %65 = load %union.ccb*, %union.ccb** %4, align 8
  %66 = bitcast %union.ccb* %65 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %71 = load %union.ccb*, %union.ccb** %4, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %63, %58
  %75 = load %union.ccb*, %union.ccb** %4, align 8
  %76 = call i32 @xpt_done(%union.ccb* %75)
  br label %80

77:                                               ; preds = %21
  %78 = load %union.ccb*, %union.ccb** %4, align 8
  %79 = call i32 @xpt_done(%union.ccb* %78)
  br label %80

80:                                               ; preds = %12, %77, %74, %33
  ret void
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32* @scsiio_cdb_ptr(%struct.TYPE_4__*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @arcmsr_iop_message_xfer(%struct.AdapterControlBlock*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
