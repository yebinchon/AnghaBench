; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_bus_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@MPI_SCSITASKMGMT_TASKTYPE_TARGET_RESET = common dso_local global i32 0, align 4
@MPI_SCSITASKMGMT_TASKTYPE_RESET_BUS = common dso_local global i32 0, align 4
@MPI_SCSITASKMGMT_MSGFLAGS_LIP_RESET_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mpt_bus_reset: mpt_scsi_send_tmf returned %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@REQ_STATE_FREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"mpt_bus_reset: Reset timed-out. Resetting controller.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"mpt_bus_reset: TMF IOC Status 0x%x. Resetting controller.\0A\00", align 1
@MPI_SCSITASKMGMT_RSP_TM_SUCCEEDED = common dso_local global i32 0, align 4
@MPI_SCSITASKMGMT_RSP_TM_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"mpt_bus_reset: TMF Response 0x%x. Resetting controller.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i64, i64, i32)* @mpt_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_bus_reset(%struct.mpt_softc* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpt_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %4
  %22 = load i32, i32* @MPI_SCSITASKMGMT_TASKTYPE_TARGET_RESET, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @MPI_SCSITASKMGMT_TASKTYPE_RESET_BUS, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %28 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @MPI_SCSITASKMGMT_MSGFLAGS_LIP_RESET_OPTION, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i64 [ %40, %39 ], [ 0, %41 ]
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i64 [ %48, %47 ], [ 0, %49 ]
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mpt_scsi_send_tmf(%struct.mpt_softc* %13, i32 %26, i32 %35, i32 0, i64 %43, i64 %51, i32 0, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EIO, align 4
  store i32 %60, i32* %5, align 4
  br label %126

61:                                               ; preds = %50
  %62 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %63 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %64 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* @REQ_STATE_DONE, align 4
  %67 = load i32, i32* @REQ_STATE_DONE, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @mpt_wait_req(%struct.mpt_softc* %62, %struct.TYPE_2__* %65, i32 %66, i32 %67, i32 %68, i32 5000)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %71 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16toh(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %77 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* @REQ_STATE_FREE, align 4
  %82 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %83 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %61
  %89 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %90 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %89, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @mpt_reset(%struct.mpt_softc* %91, i32 %92)
  %94 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %94, i32* %5, align 4
  br label %126

95:                                               ; preds = %61
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %102, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @mpt_reset(%struct.mpt_softc* %105, i32 %106)
  %108 = load i32, i32* @EIO, align 4
  store i32 %108, i32* %5, align 4
  br label %126

109:                                              ; preds = %95
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @MPI_SCSITASKMGMT_RSP_TM_SUCCEEDED, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @MPI_SCSITASKMGMT_RSP_TM_COMPLETE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %118, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load %struct.mpt_softc*, %struct.mpt_softc** %6, align 8
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @mpt_reset(%struct.mpt_softc* %121, i32 %122)
  %124 = load i32, i32* @EIO, align 4
  store i32 %124, i32* %5, align 4
  br label %126

125:                                              ; preds = %113, %109
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %117, %101, %88, %56
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @mpt_scsi_send_tmf(%struct.mpt_softc*, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_2__*, i32, i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @mpt_reset(%struct.mpt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
