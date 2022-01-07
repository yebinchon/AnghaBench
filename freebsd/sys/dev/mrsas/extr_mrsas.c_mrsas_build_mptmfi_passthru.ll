; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_build_mptmfi_passthru.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_build_mptmfi_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32, i64, i64, i64 }
%struct.mrsas_mfi_cmd = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.mrsas_header }
%struct.mrsas_header = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mrsas_mpt_cmd = type { i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@MFI_FRAME_DONT_POST_IN_REPLY_QUEUE = common dso_local global i32 0, align 4
@MRSAS_MPI2_FUNCTION_PASSTHRU_IO_REQUEST = common dso_local global i32 0, align 4
@MRSAS_RAID_SCSI_IO_REQUEST = common dso_local global i32 0, align 4
@SGL = common dso_local global i32 0, align 4
@IEEE_SGE_FLAGS_CHAIN_ELEMENT = common dso_local global i32 0, align 4
@MPI2_IEEE_SGE_FLAGS_IOCPLBNTA_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_build_mptmfi_passthru(%struct.mrsas_softc* %0, %struct.mrsas_mfi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.mrsas_mfi_cmd*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.mrsas_mpt_cmd*, align 8
  %9 = alloca %struct.mrsas_header*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.mrsas_mfi_cmd* %1, %struct.mrsas_mfi_cmd** %5, align 8
  %11 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.mrsas_header* %14, %struct.mrsas_header** %9, align 8
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %16 = call %struct.mrsas_mpt_cmd* @mrsas_get_mpt_cmd(%struct.mrsas_softc* %15)
  store %struct.mrsas_mpt_cmd* %16, %struct.mrsas_mpt_cmd** %8, align 8
  %17 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %8, align 8
  %18 = icmp ne %struct.mrsas_mpt_cmd* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %108

20:                                               ; preds = %2
  %21 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %8, align 8
  %22 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mrsas_header*, %struct.mrsas_header** %9, align 8
  %34 = getelementptr inbounds %struct.mrsas_header, %struct.mrsas_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MFI_FRAME_DONT_POST_IN_REPLY_QUEUE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  %40 = load i32, i32* @MFI_FRAME_DONT_POST_IN_REPLY_QUEUE, align 4
  %41 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %8, align 8
  %42 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %20
  %44 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %7, align 8
  %47 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %43
  %52 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56, %51, %43
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = bitcast %struct.TYPE_11__* %63 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %10, align 8
  %65 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %66 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %70
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %10, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %61, %56
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = bitcast i32* %77 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %6, align 8
  %79 = load i32, i32* @MRSAS_MPI2_FUNCTION_PASSTHRU_IO_REQUEST, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @MRSAS_RAID_SCSI_IO_REQUEST, align 4
  %83 = load i32, i32* @SGL, align 4
  %84 = call i32 @offsetof(i32 %82, i32 %83)
  %85 = sdiv i32 %84, 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %89 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %94 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @IEEE_SGE_FLAGS_CHAIN_ELEMENT, align 4
  %99 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_IOCPLBNTA_ADDR, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %104 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %74, %19
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.mrsas_mpt_cmd* @mrsas_get_mpt_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
