; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_ld_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_ld_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32*, i32, i32, %struct.TYPE_16__*, i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.mrsas_dcmd_frame }
%struct.mrsas_dcmd_frame = type { i32, i32, i32, i64, %struct.TYPE_12__, i32, i64, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.MR_LD_LIST = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.mrsas_tmp_dcmd = type { i32, %struct.MR_LD_LIST* }

@.str = private unnamed_addr constant [34 x i8] c"Cannot alloc for get LD list cmd\0A\00", align 1
@M_MRSAS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot alloc dmamap for get LD list cmd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MR_DCMD_LD_GET_LIST = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MAX_LOGICAL_DRIVES_EXT = common dso_local global i32 0, align 4
@MRSAS_MAX_PD = common dso_local global i32 0, align 4
@MFI_DCMD_TIMEOUT_OCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*)* @mrsas_get_ld_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_get_ld_list(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mrsas_mfi_cmd*, align 8
  %11 = alloca %struct.mrsas_dcmd_frame*, align 8
  %12 = alloca %struct.MR_LD_LIST*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mrsas_tmp_dcmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %16 = call %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %15)
  store %struct.mrsas_mfi_cmd* %16, %struct.mrsas_mfi_cmd** %10, align 8
  %17 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %10, align 8
  %18 = icmp ne %struct.mrsas_mfi_cmd* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %247

24:                                               ; preds = %1
  %25 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %10, align 8
  %26 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store %struct.mrsas_dcmd_frame* %28, %struct.mrsas_dcmd_frame** %11, align 8
  %29 = load i32, i32* @M_MRSAS, align 4
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = call %struct.mrsas_tmp_dcmd* @malloc(i32 16, i32 %29, i32 %30)
  store %struct.mrsas_tmp_dcmd* %31, %struct.mrsas_tmp_dcmd** %14, align 8
  store i32 16, i32* %4, align 4
  %32 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %33 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %14, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @mrsas_alloc_tmp_dcmd(%struct.mrsas_softc* %32, %struct.mrsas_tmp_dcmd* %33, i32 %34)
  %36 = load i64, i64* @SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %24
  %39 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %10, align 8
  %44 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %43)
  %45 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %14, align 8
  %46 = call i32 @mrsas_free_tmp_dcmd(%struct.mrsas_tmp_dcmd* %45)
  %47 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %14, align 8
  %48 = load i32, i32* @M_MRSAS, align 4
  %49 = call i32 @free(%struct.mrsas_tmp_dcmd* %47, i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %2, align 4
  br label %247

51:                                               ; preds = %24
  %52 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %14, align 8
  %53 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %52, i32 0, i32 1
  %54 = load %struct.MR_LD_LIST*, %struct.MR_LD_LIST** %53, align 8
  store %struct.MR_LD_LIST* %54, %struct.MR_LD_LIST** %12, align 8
  %55 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %14, align 8
  %56 = getelementptr inbounds %struct.mrsas_tmp_dcmd, %struct.mrsas_tmp_dcmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %51
  %59 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %60 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %64 = call i32 @memset(i32* %62, i32 0, i32 %63)
  %65 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %71 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %58
  %76 = load i32, i32* @MFI_CMD_DCMD, align 4
  %77 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %78 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %80 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %79, i32 0, i32 0
  store i32 255, i32* %80, align 8
  %81 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %82 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %84 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %85 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %87 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %89 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %88, i32 0, i32 2
  store i32 16, i32* %89, align 8
  %90 = load i32, i32* @MR_DCMD_LD_GET_LIST, align 4
  %91 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %92 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %95 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i32 %93, i32* %99, align 4
  %100 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %101 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i32 16, i32* %105, align 4
  %106 = load %struct.mrsas_dcmd_frame*, %struct.mrsas_dcmd_frame** %11, align 8
  %107 = getelementptr inbounds %struct.mrsas_dcmd_frame, %struct.mrsas_dcmd_frame* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %109 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %75
  %113 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %114 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %10, align 8
  %115 = call i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc* %113, %struct.mrsas_mfi_cmd* %114)
  store i32 %115, i32* %5, align 4
  br label %120

116:                                              ; preds = %75
  %117 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %118 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %10, align 8
  %119 = call i32 @mrsas_issue_polled(%struct.mrsas_softc* %117, %struct.mrsas_mfi_cmd* %118)
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @ETIMEDOUT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %225

125:                                              ; preds = %120
  %126 = load %struct.MR_LD_LIST*, %struct.MR_LD_LIST** %12, align 8
  %127 = getelementptr inbounds %struct.MR_LD_LIST, %struct.MR_LD_LIST* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %130 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sle i32 %128, %131
  br i1 %132, label %133, label %224

133:                                              ; preds = %125
  %134 = load %struct.MR_LD_LIST*, %struct.MR_LD_LIST** %12, align 8
  %135 = getelementptr inbounds %struct.MR_LD_LIST, %struct.MR_LD_LIST* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %138 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %140 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %143 = call i32 @memset(i32* %141, i32 255, i32 %142)
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %220, %133
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.MR_LD_LIST*, %struct.MR_LD_LIST** %12, align 8
  %147 = getelementptr inbounds %struct.MR_LD_LIST, %struct.MR_LD_LIST* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %223

150:                                              ; preds = %144
  %151 = load %struct.MR_LD_LIST*, %struct.MR_LD_LIST** %12, align 8
  %152 = getelementptr inbounds %struct.MR_LD_LIST, %struct.MR_LD_LIST* %151, i32 0, i32 1
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @MRSAS_MAX_PD, align 4
  %163 = add nsw i32 %161, %162
  store i32 %163, i32* %8, align 4
  %164 = load %struct.MR_LD_LIST*, %struct.MR_LD_LIST** %12, align 8
  %165 = getelementptr inbounds %struct.MR_LD_LIST, %struct.MR_LD_LIST* %164, i32 0, i32 1
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %204

173:                                              ; preds = %150
  %174 = load %struct.MR_LD_LIST*, %struct.MR_LD_LIST** %12, align 8
  %175 = getelementptr inbounds %struct.MR_LD_LIST, %struct.MR_LD_LIST* %174, i32 0, i32 1
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %185 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  %190 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %191 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %190, i32 0, i32 5
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 65535
  br i1 %198, label %199, label %203

199:                                              ; preds = %173
  %200 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @mrsas_add_target(%struct.mrsas_softc* %200, i32 %201)
  br label %203

203:                                              ; preds = %199, %173
  br label %219

204:                                              ; preds = %150
  %205 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %206 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %205, i32 0, i32 5
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 65535
  br i1 %213, label %214, label %218

214:                                              ; preds = %204
  %215 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @mrsas_remove_target(%struct.mrsas_softc* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %204
  br label %219

219:                                              ; preds = %218, %203
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %144

223:                                              ; preds = %144
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %125
  br label %225

225:                                              ; preds = %224, %124
  %226 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %14, align 8
  %227 = call i32 @mrsas_free_tmp_dcmd(%struct.mrsas_tmp_dcmd* %226)
  %228 = load %struct.mrsas_tmp_dcmd*, %struct.mrsas_tmp_dcmd** %14, align 8
  %229 = load i32, i32* @M_MRSAS, align 4
  %230 = call i32 @free(%struct.mrsas_tmp_dcmd* %228, i32 %229)
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load i32, i32* @MFI_DCMD_TIMEOUT_OCR, align 4
  %235 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %236 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %233, %225
  %238 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %239 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %237
  %243 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %10, align 8
  %244 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %243)
  br label %245

245:                                              ; preds = %242, %237
  %246 = load i32, i32* %5, align 4
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %245, %38, %19
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.mrsas_tmp_dcmd* @malloc(i32, i32, i32) #1

declare dso_local i64 @mrsas_alloc_tmp_dcmd(%struct.mrsas_softc*, %struct.mrsas_tmp_dcmd*, i32) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_free_tmp_dcmd(%struct.mrsas_tmp_dcmd*) #1

declare dso_local i32 @free(%struct.mrsas_tmp_dcmd*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mrsas_issue_blocked_cmd(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_issue_polled(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_add_target(%struct.mrsas_softc*, i32) #1

declare dso_local i32 @mrsas_remove_target(%struct.mrsas_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
