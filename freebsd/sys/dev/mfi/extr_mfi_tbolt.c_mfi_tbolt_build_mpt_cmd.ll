; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_build_mpt_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_build_mpt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mfi_mpi2_request_descriptor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mfi_softc = type { i32 }
%struct.mfi_command = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Couldn't build MFI pass thru cmd\0A\00", align 1
@MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO = common dso_local global i32 0, align 4
@MFI_REQ_DESCRIPT_FLAGS_TYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.mfi_mpi2_request_descriptor* @mfi_tbolt_build_mpt_cmd(%struct.mfi_softc* %0, %struct.mfi_command* %1) #0 {
  %3 = alloca %union.mfi_mpi2_request_descriptor*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca %union.mfi_mpi2_request_descriptor*, align 8
  %7 = alloca i64, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %5, align 8
  store %union.mfi_mpi2_request_descriptor* null, %union.mfi_mpi2_request_descriptor** %6, align 8
  %8 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %9 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %10 = call i64 @mfi_build_mpt_pass_thru(%struct.mfi_softc* %8, %struct.mfi_command* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %union.mfi_mpi2_request_descriptor* null, %union.mfi_mpi2_request_descriptor** %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %19 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call %union.mfi_mpi2_request_descriptor* @mfi_tbolt_get_request_descriptor(%struct.mfi_softc* %21, i64 %23)
  store %union.mfi_mpi2_request_descriptor* %24, %union.mfi_mpi2_request_descriptor** %6, align 8
  %25 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %6, align 8
  %26 = icmp eq %union.mfi_mpi2_request_descriptor* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store %union.mfi_mpi2_request_descriptor* null, %union.mfi_mpi2_request_descriptor** %3, align 8
  br label %42

28:                                               ; preds = %17
  %29 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %6, align 8
  %30 = call i32 @bzero(%union.mfi_mpi2_request_descriptor* %29, i32 16)
  %31 = load i32, i32* @MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO, align 4
  %32 = load i32, i32* @MFI_REQ_DESCRIPT_FLAGS_TYPE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %6, align 8
  %35 = bitcast %union.mfi_mpi2_request_descriptor* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %6, align 8
  %39 = bitcast %union.mfi_mpi2_request_descriptor* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  %41 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %6, align 8
  store %union.mfi_mpi2_request_descriptor* %41, %union.mfi_mpi2_request_descriptor** %3, align 8
  br label %42

42:                                               ; preds = %28, %27, %12
  %43 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %3, align 8
  ret %union.mfi_mpi2_request_descriptor* %43
}

declare dso_local i64 @mfi_build_mpt_pass_thru(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %union.mfi_mpi2_request_descriptor* @mfi_tbolt_get_request_descriptor(%struct.mfi_softc*, i64) #1

declare dso_local i32 @bzero(%union.mfi_mpi2_request_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
