; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_loop_dead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_loop_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.ccb_scsiio* }
%struct.ccb_scsiio = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, i32, i64, i64 }
%struct.isp_fc = type { i64, i32 }
%struct.ac_contract = type { i64, i32 }
%struct.ac_device_changed = type { i32, i32, i64, i32 }

@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Chan %d Loop is dead\00", align 1
@MAX_FC_TARG = common dso_local global i32 0, align 4
@FC_PORTDB_STATE_NIL = common dso_local global i64 0, align 8
@ISP_HANDLE_INITIATOR = common dso_local global i64 0, align 8
@ISP_LOGWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"command handle 0x%x for %d.%d.%jx orphaned by loop down timeout\00", align 1
@ISPCTL_ABORT_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"command handle 0x%x for %d.%d.%jx could not be aborted and was destroyed\00", align 1
@HBA_BUSRESET = common dso_local global i32 0, align 4
@ISP_LOGCONFIG = common dso_local global i32 0, align 4
@prom3 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Loop Down Timeout\00", align 1
@AC_CONTRACT_DEV_CHG = common dso_local global i32 0, align 4
@AC_CONTRACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @isp_loop_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_loop_dead(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.isp_fc*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.ac_contract, align 8
  %9 = alloca %struct.ac_device_changed*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ccb_scsiio*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_19__* @FCPARAM(%struct.TYPE_17__* %13, i32 %14)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_17__* %16, i32 %17)
  store %struct.isp_fc* %18, %struct.isp_fc** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %21 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (%struct.TYPE_17__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_17__* %19, i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %211, %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @MAX_FC_TARG, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %214

29:                                               ; preds = %25
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i64 %34
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %7, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FC_PORTDB_STATE_NIL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %211

42:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %152, %42
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %155

49:                                               ; preds = %43
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @ISP_H2HT(i32 %57)
  %59 = load i64, i64* @ISP_HANDLE_INITIATOR, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %152

62:                                               ; preds = %49
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %69, align 8
  store %struct.ccb_scsiio* %70, %struct.ccb_scsiio** %12, align 8
  %71 = icmp eq %struct.ccb_scsiio* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %152

73:                                               ; preds = %62
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %76 = call i32 @XS_TGT(%struct.ccb_scsiio* %75)
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %152

79:                                               ; preds = %73
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = load i32, i32* @ISP_LOGWARN, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %92 = call i32 @XS_TGT(%struct.ccb_scsiio* %91)
  %93 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %94 = call i64 @XS_LUN(%struct.ccb_scsiio* %93)
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 (%struct.TYPE_17__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_17__* %80, i32 %81, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i32 %92, i8* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = load i32, i32* @ISPCTL_ABORT_CMD, align 4
  %99 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %100 = call i64 @isp_control(%struct.TYPE_17__* %97, i32 %98, %struct.ccb_scsiio* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %79
  br label %152

103:                                              ; preds = %79
  %104 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %105 = call i64 @XS_XFRLEN(%struct.ccb_scsiio* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ISP_DMAFREE(%struct.TYPE_17__* %108, %struct.ccb_scsiio* %109, i32 %117)
  br label %119

119:                                              ; preds = %107, %103
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @isp_destroy_handle(%struct.TYPE_17__* %120, i32 %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = load i32, i32* @ISP_LOGWARN, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %142 = call i32 @XS_TGT(%struct.ccb_scsiio* %141)
  %143 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %144 = call i64 @XS_LUN(%struct.ccb_scsiio* %143)
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 (%struct.TYPE_17__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_17__* %130, i32 %131, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %140, i32 %142, i8* %145)
  %147 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %148 = load i32, i32* @HBA_BUSRESET, align 4
  %149 = call i32 @XS_SETERR(%struct.ccb_scsiio* %147, i32 %148)
  %150 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %151 = call i32 @isp_done(%struct.ccb_scsiio* %150)
  br label %152

152:                                              ; preds = %119, %102, %78, %72, %61
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %43

155:                                              ; preds = %43
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %157 = load i32, i32* @ISP_LOGCONFIG, align 4
  %158 = load i8*, i8** @prom3, align 8
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (%struct.TYPE_17__*, i32, i8*, i32, ...) @isp_prt(%struct.TYPE_17__* %156, i32 %157, i8* %158, i32 %159, i32 %160, i32 %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %155
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 4
  store i64 0, i64* %171, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @isp_make_gone(%struct.TYPE_17__* %172, %struct.TYPE_18__* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %169, %155
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %210

182:                                              ; preds = %177
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  store i64 0, i64* %184, align 8
  %185 = load i32, i32* @AC_CONTRACT_DEV_CHG, align 4
  %186 = getelementptr inbounds %struct.ac_contract, %struct.ac_contract* %8, i32 0, i32 1
  store i32 %185, i32* %186, align 8
  %187 = getelementptr inbounds %struct.ac_contract, %struct.ac_contract* %8, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to %struct.ac_device_changed*
  store %struct.ac_device_changed* %189, %struct.ac_device_changed** %9, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ac_device_changed*, %struct.ac_device_changed** %9, align 8
  %194 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.ac_device_changed*, %struct.ac_device_changed** %9, align 8
  %199 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.ac_device_changed*, %struct.ac_device_changed** %9, align 8
  %202 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.ac_device_changed*, %struct.ac_device_changed** %9, align 8
  %204 = getelementptr inbounds %struct.ac_device_changed, %struct.ac_device_changed* %203, i32 0, i32 2
  store i64 0, i64* %204, align 8
  %205 = load i32, i32* @AC_CONTRACT, align 4
  %206 = load %struct.isp_fc*, %struct.isp_fc** %6, align 8
  %207 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @xpt_async(i32 %205, i32 %208, %struct.ac_contract* %8)
  br label %210

210:                                              ; preds = %182, %177
  br label %211

211:                                              ; preds = %210, %41
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %10, align 4
  br label %25

214:                                              ; preds = %25
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @isp_unfreeze_loopdown(%struct.TYPE_17__* %215, i32 %216)
  %218 = load %struct.isp_fc*, %struct.isp_fc** %6, align 8
  %219 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %218, i32 0, i32 0
  store i64 0, i64* %219, align 8
  ret void
}

declare dso_local %struct.TYPE_19__* @FCPARAM(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.isp_fc* @ISP_FC_PC(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @isp_prt(%struct.TYPE_17__*, i32, i8*, i32, ...) #1

declare dso_local i64 @ISP_H2HT(i32) #1

declare dso_local i32 @XS_TGT(%struct.ccb_scsiio*) #1

declare dso_local i64 @XS_LUN(%struct.ccb_scsiio*) #1

declare dso_local i64 @isp_control(%struct.TYPE_17__*, i32, %struct.ccb_scsiio*) #1

declare dso_local i64 @XS_XFRLEN(%struct.ccb_scsiio*) #1

declare dso_local i32 @ISP_DMAFREE(%struct.TYPE_17__*, %struct.ccb_scsiio*, i32) #1

declare dso_local i32 @isp_destroy_handle(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @XS_SETERR(%struct.ccb_scsiio*, i32) #1

declare dso_local i32 @isp_done(%struct.ccb_scsiio*) #1

declare dso_local i32 @isp_make_gone(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @xpt_async(i32, i32, %struct.ac_contract*) #1

declare dso_local i32 @isp_unfreeze_loopdown(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
