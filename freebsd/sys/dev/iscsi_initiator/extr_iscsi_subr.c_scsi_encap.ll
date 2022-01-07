; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi_subr.c_scsi_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi_subr.c_scsi_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.ccb_scsiio = type { i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { %union.ccb*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"ccb->sp=%p\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"pdu_alloc failed sc->npdu_max=%d npdu_alloc=%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"waiting...\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"isc_encap\00", align 1
@hz = common dso_local global i32 0, align 4
@ISCSI_SCSI_CMD = common dso_local global i32 0, align 4
@iSCSI_TASK_SIMPLE = common dso_local global i8* null, align 8
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"oversize cdb %d > 16\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"not phys\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"guevalt! %d > %ld\00", align 1
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@iSCSI_TASK_ACA = common dso_local global i8* null, align 8
@iSCSI_TASK_HOFQ = common dso_local global i8* null, align 8
@iSCSI_TASK_ORDER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_encap(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_sim*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca %struct.ccb_hdr*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %11 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %12 = call %struct.TYPE_22__* @cam_sim_softc(%struct.cam_sim* %11)
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %6, align 8
  %13 = load %union.ccb*, %union.ccb** %5, align 8
  %14 = bitcast %union.ccb* %13 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %14, %struct.ccb_scsiio** %7, align 8
  %15 = load %union.ccb*, %union.ccb** %5, align 8
  %16 = bitcast %union.ccb* %15 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %16, %struct.ccb_hdr** %8, align 8
  %17 = call i32 @debug_called(i32 8)
  %18 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %19 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %18, i32 0, i32 3
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %21 = call i32 @debug(i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %20)
  %22 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %22, i32 0, i32 3
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %6, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call %struct.TYPE_21__* @pdu_alloc(%struct.TYPE_23__* %27, i32 %28)
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %9, align 8
  %30 = icmp eq %struct.TYPE_21__* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %2
  %32 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %33 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %32, i32 0, i32 3
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = call i32 @debug(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %34)
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @sdebug(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %54, %31
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = call %struct.TYPE_21__* @pdu_alloc(%struct.TYPE_23__* %50, i32 %51)
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %9, align 8
  %53 = icmp eq %struct.TYPE_21__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = call i32 (i32, i8*, ...) @sdebug(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = load i32, i32* @hz, align 4
  %60 = mul nsw i32 5, %59
  %61 = call i32 @tsleep(%struct.TYPE_23__* %58, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %47

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %10, align 8
  %68 = load i32, i32* @ISCSI_SCSI_CMD, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i8*, i8** @iSCSI_TASK_SIMPLE, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %78 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 5
  %82 = call i32 @dwl(%struct.TYPE_22__* %76, i32 %79, i32* %81)
  %83 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CAM_CDB_POINTER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %63
  %90 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %91 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CAM_CDB_PHYS, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %98 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 16
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %103 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @sdebug(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %184

106:                                              ; preds = %96
  br label %109

107:                                              ; preds = %89
  %108 = call i32 (i32, i8*, ...) @sdebug(i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %184

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %63
  %111 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %112 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %114, 4
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %118 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @xdebug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %119, i64 4)
  br label %121

121:                                              ; preds = %116, %110
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %126 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CAM_CDB_POINTER, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %133 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  br label %141

136:                                              ; preds = %121
  %137 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %138 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi i32 [ %135, %131 ], [ %140, %136 ]
  %143 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %144 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @memcpy(i32 %124, i32 %142, i32 %145)
  %147 = load %union.ccb*, %union.ccb** %5, align 8
  %148 = bitcast %union.ccb* %147 to %struct.ccb_hdr*
  %149 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @CAM_DIR_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* @CAM_DIR_OUT, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %union.ccb*, %union.ccb** %5, align 8
  %159 = bitcast %union.ccb* %158 to %struct.ccb_hdr*
  %160 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CAM_DIR_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @CAM_DIR_IN, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %170 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @htonl(i32 %171)
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load %union.ccb*, %union.ccb** %5, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  store %union.ccb* %175, %union.ccb** %177, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %180 = call i64 @isc_qout(%struct.TYPE_22__* %178, %struct.TYPE_21__* %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %141
  store i32 1, i32* %3, align 4
  br label %194

183:                                              ; preds = %141
  br label %184

184:                                              ; preds = %183, %107, %101
  %185 = load i32, i32* @CAM_REQ_INVALID, align 4
  %186 = load %union.ccb*, %union.ccb** %5, align 8
  %187 = bitcast %union.ccb* %186 to %struct.ccb_hdr*
  %188 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %190, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %193 = call i32 @pdu_free(%struct.TYPE_23__* %191, %struct.TYPE_21__* %192)
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %184, %182
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.TYPE_22__* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @debug(i32, i8*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @pdu_alloc(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @sdebug(i32, i8*, ...) #1

declare dso_local i32 @tsleep(%struct.TYPE_23__*, i32, i8*, i32) #1

declare dso_local i32 @dwl(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @xdebug(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @isc_qout(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @pdu_free(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
