; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.bxe_softc = type { i32, i64, %struct.TYPE_8__, i32, i8*, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_7__*, i64, i64, i64 }
%struct.TYPE_8__ = type { i8*, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__ }

@port_mb = common dso_local global %struct.TYPE_9__* null, align 8
@func_mb = common dso_local global %struct.TYPE_11__* null, align 8
@DBG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"port_stx 0x%x func_stx 0x%x\0A\00", align 1
@STATS_EVENT_PMF = common dso_local global i32 0, align 4
@NIG_REG_STAT0_BRB_DISCARD = common dso_local global i64 0, align 8
@NIG_REG_STAT0_BRB_TRUNCATE = common dso_local global i64 0, align 8
@NIG_REG_STAT0_EGRESS_MAC_PKT0 = common dso_local global i64 0, align 8
@NIG_REG_STAT0_EGRESS_MAC_PKT1 = common dso_local global i64 0, align 8
@func_stats = common dso_local global i32 0, align 4
@STATS_STATE_DISABLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_stats_init(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = call i32 @SC_PORT(%struct.bxe_softc* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = call i32 @SC_FW_MB_IDX(%struct.bxe_softc* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 13
  store i64 0, i64* %11, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 12
  store i64 0, i64* %13, align 8
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %15 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %14, i32 0, i32 11
  store i64 0, i64* %15, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = call i32 @BXE_NOMCP(%struct.bxe_softc* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %1
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @port_mb, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @SHMEM_RD(%struct.bxe_softc* %20, i32 %26)
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @func_mb, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @SHMEM_RD(%struct.bxe_softc* %31, i32 %37)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  br label %47

41:                                               ; preds = %1
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i8* null, i8** %44, align 8
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %45, i32 0, i32 4
  store i8* null, i8** %46, align 8
  br label %47

47:                                               ; preds = %41, %19
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %49 = load i32, i32* @DBG_STATS, align 4
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %51 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @BLOGD(%struct.bxe_softc* %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %56)
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %59 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %47
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %64 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %70 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %76 = load i32, i32* @STATS_EVENT_PMF, align 4
  %77 = call i32 @bxe_stats_handle(%struct.bxe_softc* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %68, %62, %47
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %80 = call i32 @SC_PORT(%struct.bxe_softc* %79)
  store i32 %80, i32* %3, align 4
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %82 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = call i32 @memset(%struct.TYPE_10__* %83, i32 0, i32 4)
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %86 = load i64, i64* @NIG_REG_STAT0_BRB_DISCARD, align 8
  %87 = load i32, i32* %3, align 4
  %88 = mul nsw i32 %87, 56
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  %91 = call i8* @REG_RD(%struct.bxe_softc* %85, i64 %90)
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %93 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  store i8* %91, i8** %95, align 8
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %97 = load i64, i64* @NIG_REG_STAT0_BRB_TRUNCATE, align 8
  %98 = load i32, i32* %3, align 4
  %99 = mul nsw i32 %98, 56
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %97, %100
  %102 = call i8* @REG_RD(%struct.bxe_softc* %96, i64 %101)
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %104 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  store i8* %102, i8** %106, align 8
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %108 = call i32 @CHIP_IS_E3(%struct.bxe_softc* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %133, label %110

110:                                              ; preds = %78
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %112 = load i64, i64* @NIG_REG_STAT0_EGRESS_MAC_PKT0, align 8
  %113 = load i32, i32* %3, align 4
  %114 = mul nsw i32 %113, 80
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %112, %115
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %118 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = call i32 @REG_RD_DMAE(%struct.bxe_softc* %111, i64 %116, i32* %120, i32 2)
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %123 = load i64, i64* @NIG_REG_STAT0_EGRESS_MAC_PKT1, align 8
  %124 = load i32, i32* %3, align 4
  %125 = mul nsw i32 %124, 80
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %123, %126
  %128 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %129 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = call i32 @REG_RD_DMAE(%struct.bxe_softc* %122, i64 %127, i32* %131, i32 2)
  br label %133

133:                                              ; preds = %110, %78
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %187, %133
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %137 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %190

140:                                              ; preds = %134
  %141 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %142 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %141, i32 0, i32 10
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = call i32 @memset(%struct.TYPE_10__* %147, i32 0, i32 24)
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %150 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %149, i32 0, i32 10
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = call i32 @memset(%struct.TYPE_10__* %155, i32 0, i32 24)
  %157 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %158 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %157, i32 0, i32 10
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = call i32 @memset(%struct.TYPE_10__* %163, i32 0, i32 24)
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %166 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %140
  %170 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %171 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %170, i32 0, i32 10
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = call i32 @memset(%struct.TYPE_10__* %176, i32 0, i32 24)
  %178 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %179 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %178, i32 0, i32 10
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = call i32 @memset(%struct.TYPE_10__* %184, i32 0, i32 24)
  br label %186

186:                                              ; preds = %169, %140
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %134

190:                                              ; preds = %134
  %191 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %192 = call i32 @bxe_prep_fw_stats_req(%struct.bxe_softc* %191)
  %193 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %194 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %229

197:                                              ; preds = %190
  %198 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %199 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %198, i32 0, i32 9
  %200 = call i32 @memset(%struct.TYPE_10__* %199, i32 0, i32 24)
  %201 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %202 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %201, i32 0, i32 8
  %203 = call i32 @memset(%struct.TYPE_10__* %202, i32 0, i32 24)
  %204 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %205 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %204, i32 0, i32 7
  %206 = call i32 @memset(%struct.TYPE_10__* %205, i32 0, i32 24)
  %207 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %208 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %207, i32 0, i32 6
  %209 = call i32 @memset(%struct.TYPE_10__* %208, i32 0, i32 24)
  %210 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %211 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %210, i32 0, i32 5
  %212 = call i32 @memset(%struct.TYPE_10__* %211, i32 0, i32 24)
  %213 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %214 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %197
  %218 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %219 = load i32, i32* @func_stats, align 4
  %220 = call %struct.TYPE_10__* @BXE_SP(%struct.bxe_softc* %218, i32 %219)
  %221 = call i32 @memset(%struct.TYPE_10__* %220, i32 0, i32 4)
  %222 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %223 = call i32 @bxe_func_stats_init(%struct.bxe_softc* %222)
  %224 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %225 = call i32 @bxe_hw_stats_post(%struct.bxe_softc* %224)
  %226 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %227 = call i32 @bxe_stats_comp(%struct.bxe_softc* %226)
  br label %228

228:                                              ; preds = %217, %197
  br label %229

229:                                              ; preds = %228, %190
  %230 = load i32, i32* @STATS_STATE_DISABLED, align 4
  %231 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %232 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 8
  %233 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %234 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %229
  %239 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %240 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %246 = call i32 @bxe_port_stats_base_init(%struct.bxe_softc* %245)
  br label %247

247:                                              ; preds = %244, %238, %229
  %248 = load i64, i64* @FALSE, align 8
  %249 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %250 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @SC_FW_MB_IDX(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_NOMCP(%struct.bxe_softc*) #1

declare dso_local i8* @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @bxe_stats_handle(%struct.bxe_softc*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD_DMAE(%struct.bxe_softc*, i64, i32*, i32) #1

declare dso_local i32 @bxe_prep_fw_stats_req(%struct.bxe_softc*) #1

declare dso_local %struct.TYPE_10__* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_func_stats_init(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_hw_stats_post(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_stats_comp(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_port_stats_base_init(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
