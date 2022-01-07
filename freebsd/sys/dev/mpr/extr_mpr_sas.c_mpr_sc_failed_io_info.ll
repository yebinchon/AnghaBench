; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mpr_sc_failed_io_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mpr_sc_failed_io_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.ccb_scsiio = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.mprsas_target = type { i32, i32, i32, i64 }

@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@mpr_iocstatus_string = common dso_local global i32 0, align 4
@mpr_scsi_status_string = common dso_local global i32 0, align 4
@MPR_XINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\09handle(0x%04x), ioc_status(%s)(0x%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"At enclosure level %d, slot %d, connector name (%4s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\09scsi_status(%s)(0x%02x), scsi_state %b\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"\10\01AutosenseValid\02AutosenseFailed\03NoScsiStatus\04Terminated\05Response InfoValid\00", align 1
@MPI2_SCSI_STATE_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"-> Sense Buffer Data : Start :\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"-> Sense Buffer Data : End :\0A\00", align 1
@MPI2_SCSI_STATE_RESPONSE_INFO_VALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"response code(0x%01x): %s\0A\00", align 1
@mpr_scsi_taskmgmt_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpr_softc*, %struct.ccb_scsiio*, %struct.TYPE_3__*, %struct.mprsas_target*)* @mpr_sc_failed_io_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpr_sc_failed_io_info(%struct.mpr_softc* %0, %struct.ccb_scsiio* %1, %struct.TYPE_3__* %2, %struct.mprsas_target* %3) #0 {
  %5 = alloca %struct.mpr_softc*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.mprsas_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %5, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store %struct.mprsas_target* %3, %struct.mprsas_target** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16toh(i32 %19)
  %21 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32toh(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp eq i32 %33, 823590912
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %117

36:                                               ; preds = %4
  %37 = load i32, i32* @mpr_iocstatus_string, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @mpr_describe_table(i32 %37, i32 %38)
  store i8* %39, i8** %14, align 8
  %40 = load i32, i32* @mpr_scsi_status_string, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i8* @mpr_describe_table(i32 %40, i32 %41)
  store i8* %42, i8** %15, align 8
  %43 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %44 = load i32, i32* @MPR_XINFO, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16toh(i32 %47)
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %43, i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48, i8* %49, i32 %50)
  %52 = load %struct.mprsas_target*, %struct.mprsas_target** %8, align 8
  %53 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %36
  %57 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %58 = load i32, i32* @MPR_XINFO, align 4
  %59 = load %struct.mprsas_target*, %struct.mprsas_target** %8, align 8
  %60 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.mprsas_target*, %struct.mprsas_target** %8, align 8
  %63 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mprsas_target*, %struct.mprsas_target** %8, align 8
  %66 = getelementptr inbounds %struct.mprsas_target, %struct.mprsas_target* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %57, i32 %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %56, %36
  %70 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %71 = load i32, i32* @MPR_XINFO, align 4
  %72 = load i8*, i8** %15, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %70, i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %77 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MPR_XINFO, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @MPI2_SCSI_STATE_AUTOSENSE_VALID, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %89 = load i32, i32* @MPR_XINFO, align 4
  %90 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %88, i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %92 = call i32 @scsi_sense_print(%struct.ccb_scsiio* %91)
  %93 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %94 = load i32, i32* @MPR_XINFO, align 4
  %95 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %93, i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %87, %82, %69
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @MPI2_SCSI_STATE_RESPONSE_INFO_VALID, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32toh(i32 %104)
  store i32 %105, i32* %9, align 4
  store i32* %9, i32** %10, align 8
  %106 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %107 = load i32, i32* @MPR_XINFO, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @mpr_scsi_taskmgmt_string, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @mpr_describe_table(i32 %111, i32 %114)
  %116 = call i32 (%struct.mpr_softc*, i32, i8*, ...) @mpr_dprint(%struct.mpr_softc* %106, i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %110, i8* %115)
  br label %117

117:                                              ; preds = %35, %101, %96
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i8* @mpr_describe_table(i32, i32) #1

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*, ...) #1

declare dso_local i32 @scsi_sense_print(%struct.ccb_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
