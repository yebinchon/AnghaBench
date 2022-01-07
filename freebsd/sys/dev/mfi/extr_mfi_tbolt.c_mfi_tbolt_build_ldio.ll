; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_build_ldio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_build_ldio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32 }
%struct.mfi_command = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.mfi_cmd_tbolt = type { %struct.TYPE_10__*, %struct.mfi_mpi2_request_raid_scsi_io* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mfi_mpi2_request_raid_scsi_io = type { i32, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i64, i64 }
%struct.IO_REQUEST_INFO = type { i32, i64, i32, i32 }

@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MFI_FUSION_FP_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_FUNCTION_LD_IO_REQUEST = common dso_local global i32 0, align 4
@MFI_REQ_DESCRIPT_FLAGS_LD_IO = common dso_local global i32 0, align 4
@MFI_REQ_DESCRIPT_FLAGS_TYPE_SHIFT = common dso_local global i32 0, align 4
@MFI_SECTOR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfi_tbolt_build_ldio(%struct.mfi_softc* %0, %struct.mfi_command* %1, %struct.mfi_cmd_tbolt* %2) #0 {
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca %struct.mfi_cmd_tbolt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mfi_mpi2_request_raid_scsi_io*, align 8
  %11 = alloca %struct.IO_REQUEST_INFO, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %5, align 8
  store %struct.mfi_cmd_tbolt* %2, %struct.mfi_cmd_tbolt** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %13 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %20 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %19, i32 0, i32 1
  %21 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %20, align 8
  store %struct.mfi_mpi2_request_raid_scsi_io* %21, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %24 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %27 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %30 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %33 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %36 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %42 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = call i32 @memset(%struct.IO_REQUEST_INFO* %11, i32 0, i32 24)
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 32
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %11, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %54 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %11, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %11, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %64 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %3
  %74 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %11, i32 0, i32 3
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %3
  %76 = load i32, i32* @MFI_FUSION_FP_DEFAULT_TIMEOUT, align 4
  %77 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %78 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @MPI2_FUNCTION_LD_IO_REQUEST, align 4
  %81 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %82 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %85 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @MFI_REQ_DESCRIPT_FLAGS_LD_IO, align 4
  %87 = load i32, i32* @MFI_REQ_DESCRIPT_FLAGS_TYPE_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load %struct.mfi_cmd_tbolt*, %struct.mfi_cmd_tbolt** %6, align 8
  %90 = getelementptr inbounds %struct.mfi_cmd_tbolt, %struct.mfi_cmd_tbolt* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 4
  %94 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %95 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 6
  br i1 %97, label %98, label %106

98:                                               ; preds = %75
  %99 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %11, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %104 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 256, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %98, %75
  %107 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %108 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @MFI_SECTOR_LEN, align 4
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %113, %115
  %117 = trunc i64 %116 to i32
  %118 = load %struct.mfi_mpi2_request_raid_scsi_io*, %struct.mfi_mpi2_request_raid_scsi_io** %10, align 8
  %119 = getelementptr inbounds %struct.mfi_mpi2_request_raid_scsi_io, %struct.mfi_mpi2_request_raid_scsi_io* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  ret void
}

declare dso_local i32 @memset(%struct.IO_REQUEST_INFO*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
