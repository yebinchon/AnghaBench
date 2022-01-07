; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mps_sc_failed_io_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mps_sc_failed_io_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.ccb_scsiio = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@mps_iocstatus_string = common dso_local global i32 0, align 4
@mps_scsi_status_string = common dso_local global i32 0, align 4
@MPS_XINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\09handle(0x%04x), ioc_status(%s)(0x%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\09scsi_status(%s)(0x%02x), scsi_state %b\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"\10\01AutosenseValid\02AutosenseFailed\03NoScsiStatus\04Terminated\05Response InfoValid\00", align 1
@MPI2_SCSI_STATE_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"-> Sense Buffer Data : Start :\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"-> Sense Buffer Data : End :\0A\00", align 1
@MPI2_SCSI_STATE_RESPONSE_INFO_VALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"response code(0x%1x): %s\0A\00", align 1
@mps_scsi_taskmgmt_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*, %struct.ccb_scsiio*, %struct.TYPE_3__*)* @mps_sc_failed_io_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_sc_failed_io_info(%struct.mps_softc* %0, %struct.ccb_scsiio* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.mps_softc*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.mps_softc* %0, %struct.mps_softc** %4, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16toh(i32 %17)
  %19 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32toh(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 823590912
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %97

34:                                               ; preds = %3
  %35 = load i32, i32* @mps_iocstatus_string, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @mps_describe_table(i32 %35, i32 %36)
  store i8* %37, i8** %13, align 8
  %38 = load i32, i32* @mps_scsi_status_string, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @mps_describe_table(i32 %38, i32 %39)
  store i8* %40, i8** %14, align 8
  %41 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %42 = load i32, i32* @MPS_XINFO, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16toh(i32 %45)
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %41, i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %47, i32 %48)
  %50 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %51 = load i32, i32* @MPS_XINFO, align 4
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %50, i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %57 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MPS_XINFO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %34
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @MPI2_SCSI_STATE_AUTOSENSE_VALID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %69 = load i32, i32* @MPS_XINFO, align 4
  %70 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %68, i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %72 = call i32 @scsi_sense_print(%struct.ccb_scsiio* %71)
  %73 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %74 = load i32, i32* @MPS_XINFO, align 4
  %75 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %73, i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %67, %62, %34
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @MPI2_SCSI_STATE_RESPONSE_INFO_VALID, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32toh(i32 %84)
  store i32 %85, i32* %7, align 4
  store i32* %7, i32** %8, align 8
  %86 = load %struct.mps_softc*, %struct.mps_softc** %4, align 8
  %87 = load i32, i32* @MPS_XINFO, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @mps_scsi_taskmgmt_string, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @mps_describe_table(i32 %91, i32 %94)
  %96 = call i32 (%struct.mps_softc*, i32, i8*, ...) @mps_dprint(%struct.mps_softc* %86, i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %90, i8* %95)
  br label %97

97:                                               ; preds = %33, %81, %76
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i8* @mps_describe_table(i32, i32) #1

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, ...) #1

declare dso_local i32 @scsi_sense_print(%struct.ccb_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
