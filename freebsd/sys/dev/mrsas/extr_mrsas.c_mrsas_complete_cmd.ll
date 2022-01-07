; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i64, i32, i32*, i32, i32*, i64, i64, %struct.TYPE_18__*, %struct.mrsas_mfi_cmd**, i32, %struct.TYPE_17__*, i32, i32, %struct.mrsas_mpt_cmd** }
%struct.TYPE_18__ = type { i32 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_17__ = type { i32* }
%struct.mrsas_mpt_cmd = type { i32*, i64, i32, i32, i64, %struct.TYPE_23__*, i32, %struct.TYPE_32__*, %struct.mrsas_mpt_cmd*, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%union.desc_value = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }

@MRSAS_HW_CRITICAL_ERROR = common dso_local global i64 0, align 8
@DONE = common dso_local global i32 0, align 4
@MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK = common dso_local global i32 0, align 4
@MRSAS_LOAD_BALANCE_FLAG = common dso_local global i32 0, align 4
@MR_DEVHANDLE_INVALID = common dso_local global i32 0, align 4
@MFI_STAT_OK = common dso_local global i32 0, align 4
@MFI_FRAME_DONT_POST_IN_REPLY_QUEUE = common dso_local global i32 0, align 4
@MPI2_RPY_DESCRIPT_FLAGS_UNUSED = common dso_local global i32 0, align 4
@THRESHOLD_REPLY_COUNT = common dso_local global i32 0, align 4
@mrsas_reg_set = common dso_local global i32 0, align 4
@reply_post_host_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_complete_cmd(%struct.mrsas_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.mrsas_mpt_cmd*, align 8
  %10 = alloca %struct.mrsas_mpt_cmd*, align 8
  %11 = alloca %struct.mrsas_mfi_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.desc_value, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mrsas_mpt_cmd* null, %struct.mrsas_mpt_cmd** %10, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MRSAS_HW_CRITICAL_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @DONE, align 4
  store i32 %29, i32* %3, align 4
  br label %487

30:                                               ; preds = %2
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 7
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 4
  %41 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %42 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %40, %48
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i64 %49
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %6, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = bitcast %struct.TYPE_18__* %52 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %7, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.desc_value* %18 to i32*
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %15, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %418, %30
  %64 = bitcast %union.desc_value* %18 to %struct.TYPE_26__*
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = bitcast %union.desc_value* %18 to %struct.TYPE_26__*
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, -1
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i1 [ false, %63 ], [ %72, %68 ]
  br i1 %74, label %75, label %419

75:                                               ; preds = %73
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %80 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %79, i32 0, i32 13
  %81 = load %struct.mrsas_mpt_cmd**, %struct.mrsas_mpt_cmd*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %81, i64 %84
  %86 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %85, align 8
  store %struct.mrsas_mpt_cmd* %86, %struct.mrsas_mpt_cmd** %9, align 8
  %87 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %88 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %87, i32 0, i32 7
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %88, align 8
  %90 = bitcast %struct.TYPE_32__* %89 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %90, %struct.TYPE_20__** %8, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %16, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %17, align 4
  %101 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %102 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  store i32* %103, i32** %13, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %21, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %277 [
    i32 130, label %110
    i32 131, label %115
    i32 129, label %149
    i32 128, label %250
  ]

110:                                              ; preds = %75
  %111 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %112 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %111, i32 0, i32 11
  %113 = bitcast i32* %112 to i8*
  %114 = call i32 @wakeup_one(i8* %113)
  br label %277

115:                                              ; preds = %75
  %116 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %117 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %116, i32 0, i32 5
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %20, align 4
  %122 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %123 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %122, i32 0, i32 10
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i64 %126
  store %struct.TYPE_17__* %127, %struct.TYPE_17__** %19, align 8
  %128 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %129 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MRSAS_LOAD_BALANCE_FLAG, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %115
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %138 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = call i32 @mrsas_atomic_dec(i32* %140)
  %142 = load i32, i32* @MRSAS_LOAD_BALANCE_FLAG, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %145 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %133, %115
  br label %149

149:                                              ; preds = %75, %148
  %150 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %151 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @MR_DEVHANDLE_INVALID, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %149
  %156 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %157 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %158 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %157, i32 0, i32 5
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32*, i32** %13, align 8
  %164 = call i32 @mrsas_map_mpt_cmd_status(%struct.mrsas_mpt_cmd* %156, %struct.TYPE_23__* %159, i32 %160, i32 %161, i32 %162, i32* %163)
  %165 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %166 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %167 = call i32 @mrsas_cmd_done(%struct.mrsas_softc* %165, %struct.mrsas_mpt_cmd* %166)
  %168 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %169 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %168, i32 0, i32 9
  %170 = call i32 @mrsas_atomic_dec(i32* %169)
  br label %249

171:                                              ; preds = %149
  %172 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %173 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  %174 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %175 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %174, i32 0, i32 8
  %176 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %175, align 8
  store %struct.mrsas_mpt_cmd* %176, %struct.mrsas_mpt_cmd** %10, align 8
  %177 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %178 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %248

181:                                              ; preds = %171
  %182 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %183 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %182, i32 0, i32 7
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @MFI_STAT_OK, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %214

191:                                              ; preds = %181
  %192 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %193 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %192, i32 0, i32 7
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %16, align 4
  %199 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %200 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %199, i32 0, i32 7
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %17, align 4
  %206 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %207 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %206, i32 0, i32 7
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %21, align 4
  %211 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %212 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  store i32* %213, i32** %13, align 8
  br label %214

214:                                              ; preds = %191, %181
  %215 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %216 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %215, i32 0, i32 5
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %216, align 8
  %217 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %218 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %214
  %222 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %223 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %222, i32 0, i32 6
  %224 = call i32 @callout_stop(i32* %223)
  %225 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %226 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %225, i32 0, i32 3
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %221, %214
  %228 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %10, align 8
  %229 = call i32 @mrsas_release_mpt_cmd(%struct.mrsas_mpt_cmd* %228)
  %230 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %231 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %230, i32 0, i32 9
  %232 = call i32 @mrsas_atomic_dec(i32* %231)
  %233 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %234 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %235 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %234, i32 0, i32 5
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %235, align 8
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %21, align 4
  %240 = load i32*, i32** %13, align 8
  %241 = call i32 @mrsas_map_mpt_cmd_status(%struct.mrsas_mpt_cmd* %233, %struct.TYPE_23__* %236, i32 %237, i32 %238, i32 %239, i32* %240)
  %242 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %243 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %244 = call i32 @mrsas_cmd_done(%struct.mrsas_softc* %242, %struct.mrsas_mpt_cmd* %243)
  %245 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %246 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %245, i32 0, i32 9
  %247 = call i32 @mrsas_atomic_dec(i32* %246)
  br label %248

248:                                              ; preds = %227, %171
  br label %249

249:                                              ; preds = %248, %155
  br label %277

250:                                              ; preds = %75
  %251 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %252 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %251, i32 0, i32 8
  %253 = load %struct.mrsas_mfi_cmd**, %struct.mrsas_mfi_cmd*** %252, align 8
  %254 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %9, align 8
  %255 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %253, i64 %256
  %258 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %257, align 8
  store %struct.mrsas_mfi_cmd* %258, %struct.mrsas_mfi_cmd** %11, align 8
  %259 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %11, align 8
  %260 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %259, i32 0, i32 0
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @MFI_FRAME_DONT_POST_IN_REPLY_QUEUE, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %250
  %269 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %11, align 8
  %270 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %269)
  br label %276

271:                                              ; preds = %250
  %272 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %273 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %11, align 8
  %274 = load i32, i32* %16, align 4
  %275 = call i32 @mrsas_complete_mptmfi_passthru(%struct.mrsas_softc* %272, %struct.mrsas_mfi_cmd* %273, i32 %274)
  br label %276

276:                                              ; preds = %271, %268
  br label %277

277:                                              ; preds = %75, %276, %249, %110
  %278 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %279 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 4
  %286 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %287 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %294 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = icmp sge i32 %292, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %277
  %298 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %299 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 0, i32* %303, align 4
  br label %304

304:                                              ; preds = %297, %277
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  store i32 -1, i32* %306, align 4
  %307 = load i32, i32* %15, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %15, align 4
  %309 = load i32, i32* %22, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %22, align 4
  %311 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %312 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %332, label %319

319:                                              ; preds = %304
  %320 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %321 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %320, i32 0, i32 7
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %321, align 8
  store %struct.TYPE_18__* %322, %struct.TYPE_18__** %6, align 8
  %323 = load i32, i32* %5, align 4
  %324 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %325 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = mul nsw i32 %323, %326
  %328 = sext i32 %327 to i64
  %329 = udiv i64 %328, 4
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i64 %329
  store %struct.TYPE_18__* %331, %struct.TYPE_18__** %6, align 8
  br label %335

332:                                              ; preds = %304
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 1
  store %struct.TYPE_18__* %334, %struct.TYPE_18__** %6, align 8
  br label %335

335:                                              ; preds = %332, %319
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %337 = bitcast %struct.TYPE_18__* %336 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %337, %struct.TYPE_22__** %7, align 8
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = bitcast %union.desc_value* %18 to i32*
  store i32 %340, i32* %341, align 4
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK, align 4
  %346 = and i32 %344, %345
  store i32 %346, i32* %12, align 4
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_UNUSED, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %335
  br label %419

351:                                              ; preds = %335
  %352 = load i32, i32* %22, align 4
  %353 = load i32, i32* @THRESHOLD_REPLY_COUNT, align 4
  %354 = icmp sge i32 %352, %353
  br i1 %354, label %355, label %418

355:                                              ; preds = %351
  %356 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %357 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %356, i32 0, i32 6
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %406

360:                                              ; preds = %355
  %361 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %362 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %361, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %387

365:                                              ; preds = %360
  %366 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %367 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %368 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %367, i32 0, i32 4
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %5, align 4
  %371 = sdiv i32 %370, 8
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %5, align 4
  %376 = and i32 %375, 7
  %377 = shl i32 %376, 24
  %378 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %379 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %378, i32 0, i32 2
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %5, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = or i32 %377, %384
  %386 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %366, i32 %374, i32 %385)
  br label %405

387:                                              ; preds = %360
  %388 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %389 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %390 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %389, i32 0, i32 4
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %5, align 4
  %395 = shl i32 %394, 24
  %396 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %397 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %396, i32 0, i32 2
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %5, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %395, %402
  %404 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %388, i32 %393, i32 %403)
  br label %405

405:                                              ; preds = %387, %365
  br label %417

406:                                              ; preds = %355
  %407 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %408 = load i32, i32* @mrsas_reg_set, align 4
  %409 = load i32, i32* @reply_post_host_index, align 4
  %410 = call i32 @offsetof(i32 %408, i32 %409)
  %411 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %412 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %411, i32 0, i32 2
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 0
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %407, i32 %410, i32 %415)
  br label %417

417:                                              ; preds = %406, %405
  store i32 0, i32* %22, align 4
  br label %418

418:                                              ; preds = %417, %351
  br label %63

419:                                              ; preds = %350, %73
  %420 = load i32, i32* %15, align 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %419
  %423 = load i32, i32* @DONE, align 4
  store i32 %423, i32* %3, align 4
  br label %487

424:                                              ; preds = %419
  %425 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %426 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %425, i32 0, i32 6
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %475

429:                                              ; preds = %424
  %430 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %431 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %430, i32 0, i32 5
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %456

434:                                              ; preds = %429
  %435 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %436 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %437 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %436, i32 0, i32 4
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %5, align 4
  %440 = sdiv i32 %439, 8
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %438, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* %5, align 4
  %445 = and i32 %444, 7
  %446 = shl i32 %445, 24
  %447 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %448 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %447, i32 0, i32 2
  %449 = load i32*, i32** %448, align 8
  %450 = load i32, i32* %5, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = or i32 %446, %453
  %455 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %435, i32 %443, i32 %454)
  br label %474

456:                                              ; preds = %429
  %457 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %458 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %459 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %458, i32 0, i32 4
  %460 = load i32*, i32** %459, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 0
  %462 = load i32, i32* %461, align 4
  %463 = load i32, i32* %5, align 4
  %464 = shl i32 %463, 24
  %465 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %466 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %465, i32 0, i32 2
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %5, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = or i32 %464, %471
  %473 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %457, i32 %462, i32 %472)
  br label %474

474:                                              ; preds = %456, %434
  br label %486

475:                                              ; preds = %424
  %476 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %477 = load i32, i32* @mrsas_reg_set, align 4
  %478 = load i32, i32* @reply_post_host_index, align 4
  %479 = call i32 @offsetof(i32 %477, i32 %478)
  %480 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %481 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %480, i32 0, i32 2
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 0
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %476, i32 %479, i32 %484)
  br label %486

486:                                              ; preds = %475, %474
  store i32 0, i32* %3, align 4
  br label %487

487:                                              ; preds = %486, %422, %28
  %488 = load i32, i32* %3, align 4
  ret i32 %488
}

declare dso_local i32 @wakeup_one(i8*) #1

declare dso_local i32 @mrsas_atomic_dec(i32*) #1

declare dso_local i32 @mrsas_map_mpt_cmd_status(%struct.mrsas_mpt_cmd*, %struct.TYPE_23__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mrsas_cmd_done(%struct.mrsas_softc*, %struct.mrsas_mpt_cmd*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mrsas_release_mpt_cmd(%struct.mrsas_mpt_cmd*) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @mrsas_complete_mptmfi_passthru(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*, i32) #1

declare dso_local i32 @mrsas_write_reg(%struct.mrsas_softc*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
