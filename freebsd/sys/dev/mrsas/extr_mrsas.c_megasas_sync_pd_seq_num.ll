; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_megasas_sync_pd_seq_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_megasas_sync_pd_seq_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MR_PD_CFG_SEQ_NUM_SYNC = type { i32 }
%struct.mrsas_softc = type { i32, i32, i32, %struct.mrsas_mfi_cmd*, i32*, i64* }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mrsas_dcmd_frame }
%struct.mrsas_dcmd_frame = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i8*, i64, i64, i32 }
%struct.TYPE_8__ = type { %struct.MR_PD_CFG_SEQ_NUM_SYNC* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@MAX_PHYSICAL_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot alloc for ld map info cmd.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to alloc mem for jbod map info.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MFI_MBOX_SIZE = common dso_local global i8* null, align 8
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MR_DCMD_SYSTEM_PD_MAP_GET_INFO = common dso_local global i32 0, align 4
@MRSAS_DCMD_MBOX_PEND_FLAG = common dso_local global %struct.MR_PD_CFG_SEQ_NUM_SYNC zeroinitializer, align 4
@MFI_FRAME_DIR_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Fail to send sync map info command.\0A\00", align 1
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"driver supports max %d JBOD, but FW reports %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MFI_DCMD_TIMEOUT_OCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_sync_pd_seq_num(%struct.mrsas_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mrsas_mfi_cmd*, align 8
  %9 = alloca %struct.mrsas_dcmd_frame*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.MR_PD_CFG_SEQ_NUM_SYNC*, align 8
  %12 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %13 = load i32, i32* @MAX_PHYSICAL_DEVICES, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = add i64 4, %16
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %10, align 8
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %20 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %19)
  store %struct.mrsas_mfi_cmd* %20, %struct.mrsas_mfi_cmd** %8, align 8
  %21 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %8, align 8
  %22 = icmp ne %struct.mrsas_mfi_cmd* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %178

28:                                               ; preds = %2
  %29 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %8, align 8
  %30 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.mrsas_dcmd_frame* %32, %struct.mrsas_dcmd_frame** %9, align 8
  %33 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %33, i32 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.MR_PD_CFG_SEQ_NUM_SYNC*
  store %struct.MR_PD_CFG_SEQ_NUM_SYNC* %44, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %11, align 8
  %45 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %49 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load %struct.MR_PD_CFG_SEQ_NUM_SYNC*, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %11, align 8
  %56 = icmp ne %struct.MR_PD_CFG_SEQ_NUM_SYNC* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %28
  %58 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %59 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %8, align 8
  %63 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %3, align 4
  br label %178

65:                                               ; preds = %28
  %66 = load %struct.MR_PD_CFG_SEQ_NUM_SYNC*, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %11, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @memset(%struct.MR_PD_CFG_SEQ_NUM_SYNC* %66, i32 0, i8* %67)
  %69 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %70 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.MR_PD_CFG_SEQ_NUM_SYNC*, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %71, align 8
  %73 = load i8*, i8** @MFI_MBOX_SIZE, align 8
  %74 = call i32 @memset(%struct.MR_PD_CFG_SEQ_NUM_SYNC* %72, i32 0, i8* %73)
  %75 = load i32, i32* @MFI_CMD_DCMD, align 4
  %76 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %77 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %79 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %78, i32 0, i32 0
  store i32 255, i32* %79, align 8
  %80 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %81 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %83 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %85 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %88 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @MR_DCMD_SYSTEM_PD_MAP_GET_INFO, align 4
  %90 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %91 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %94 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 %92, i32* %98, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %101 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i8* %99, i8** %105, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %65
  %109 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %110 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.MR_PD_CFG_SEQ_NUM_SYNC*, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %111, align 8
  %113 = getelementptr inbounds %struct.MR_PD_CFG_SEQ_NUM_SYNC, %struct.MR_PD_CFG_SEQ_NUM_SYNC* %112, i64 0
  %114 = bitcast %struct.MR_PD_CFG_SEQ_NUM_SYNC* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 bitcast (%struct.MR_PD_CFG_SEQ_NUM_SYNC* @MRSAS_DCMD_MBOX_PEND_FLAG to i8*), i64 4, i1 false)
  %115 = load i32, i32* @MFI_FRAME_DIR_WRITE, align 4
  %116 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %117 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %8, align 8
  %119 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %120 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %119, i32 0, i32 3
  store %struct.mrsas_mfi_cmd* %118, %struct.mrsas_mfi_cmd** %120, align 8
  %121 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %122 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %8, align 8
  %123 = call i64 @mrsas_issue_dcmd(%struct.mrsas_softc* %121, %struct.mrsas_mfi_cmd* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %108
  %126 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %127 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %178

130:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %178

131:                                              ; preds = %65
  %132 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %133 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %9, align 8
  %134 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131
  %136 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %137 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %8, align 8
  %138 = call i32 @mrsas_issue_polled(%struct.mrsas_softc* %136, %struct.mrsas_mfi_cmd* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @ETIMEDOUT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %169

143:                                              ; preds = %135
  %144 = load %struct.MR_PD_CFG_SEQ_NUM_SYNC*, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %11, align 8
  %145 = getelementptr inbounds %struct.MR_PD_CFG_SEQ_NUM_SYNC, %struct.MR_PD_CFG_SEQ_NUM_SYNC* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MAX_PHYSICAL_DEVICES, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %151 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @MAX_PHYSICAL_DEVICES, align 4
  %154 = load %struct.MR_PD_CFG_SEQ_NUM_SYNC*, %struct.MR_PD_CFG_SEQ_NUM_SYNC** %11, align 8
  %155 = getelementptr inbounds %struct.MR_PD_CFG_SEQ_NUM_SYNC, %struct.MR_PD_CFG_SEQ_NUM_SYNC* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %149, %143
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %165 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %163, %160
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %168, %142
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* @MFI_DCMD_TIMEOUT_OCR, align 4
  %174 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %175 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %169
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %130, %125, %57, %23
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @memset(%struct.MR_PD_CFG_SEQ_NUM_SYNC*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mrsas_issue_dcmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_issue_polled(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
