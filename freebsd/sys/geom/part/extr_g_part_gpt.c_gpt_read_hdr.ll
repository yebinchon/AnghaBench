; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_read_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_read_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpt_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.g_part_gpt_table = type { i64*, i32* }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }

@GPT_STATE_MISSING = common dso_local global i64 0, align 8
@GPT_ELT_SECHDR = common dso_local global i32 0, align 4
@GPT_ELT_PRIHDR = common dso_local global i64 0, align 8
@GPT_STATE_OK = common dso_local global i64 0, align 8
@GPT_HDR_SIG = common dso_local global i32 0, align 4
@GPT_STATE_CORRUPT = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GPT_STATE_INVALID = common dso_local global i64 0, align 8
@GPT_HDR_REVISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpt_hdr* (%struct.g_part_gpt_table*, %struct.g_consumer*, i32)* @gpt_read_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpt_hdr* @gpt_read_hdr(%struct.g_part_gpt_table* %0, %struct.g_consumer* %1, i32 %2) #0 {
  %4 = alloca %struct.gpt_hdr*, align 8
  %5 = alloca %struct.g_part_gpt_table*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpt_hdr*, align 8
  %9 = alloca %struct.gpt_hdr*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_part_gpt_table* %0, %struct.g_part_gpt_table** %5, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %17 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %16, i32 0, i32 0
  %18 = load %struct.g_provider*, %struct.g_provider** %17, align 8
  store %struct.g_provider* %18, %struct.g_provider** %10, align 8
  %19 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %20 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %21, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load i64, i64* @GPT_STATE_MISSING, align 8
  %28 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %29 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 %27, i64* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GPT_ELT_SECHDR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %3
  %38 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %39 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @GPT_ELT_PRIHDR, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GPT_STATE_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %49 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %37
  br label %62

55:                                               ; preds = %3
  %56 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %57 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %54
  %63 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %64 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %65 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %72 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %76 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.gpt_hdr* @g_read_data(%struct.g_consumer* %63, i32 %74, i32 %77, i32* %13)
  store %struct.gpt_hdr* %78, %struct.gpt_hdr** %8, align 8
  %79 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %80 = icmp eq %struct.gpt_hdr* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %62
  store %struct.gpt_hdr* null, %struct.gpt_hdr** %4, align 8
  br label %394

82:                                               ; preds = %62
  store %struct.gpt_hdr* null, %struct.gpt_hdr** %9, align 8
  %83 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GPT_HDR_SIG, align 4
  %87 = call i64 @memcmp(i32 %85, i32 %86, i32 4)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %385

90:                                               ; preds = %82
  %91 = load i64, i64* @GPT_STATE_CORRUPT, align 8
  %92 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %93 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 %91, i64* %97, align 8
  %98 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %99 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32toh(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %103, 92
  br i1 %104, label %111, label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %108 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105, %90
  br label %385

112:                                              ; preds = %105
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @M_WAITOK, align 4
  %115 = load i32, i32* @M_ZERO, align 4
  %116 = or i32 %114, %115
  %117 = call %struct.gpt_hdr* @g_malloc(i32 %113, i32 %116)
  store %struct.gpt_hdr* %117, %struct.gpt_hdr** %9, align 8
  %118 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %119 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @bcopy(%struct.gpt_hdr* %118, %struct.gpt_hdr* %119, i32 %120)
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %124 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %126 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @le32toh(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %14, align 4
  %130 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %131 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @crc32(%struct.gpt_hdr* %132, i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %112
  br label %385

138:                                              ; preds = %112
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %141 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i64, i64* @GPT_STATE_INVALID, align 8
  %143 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %144 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  store i64 %142, i64* %148, align 8
  %149 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %150 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @le32toh(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %155 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %157 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* @GPT_HDR_REVISION, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %138
  br label %385

163:                                              ; preds = %138
  %164 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %165 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le64toh(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %170 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %172 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %175 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %173, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %163
  br label %385

183:                                              ; preds = %163
  %184 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %185 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @le64toh(i32 %186)
  %188 = ptrtoint i8* %187 to i32
  %189 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %190 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  %191 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %192 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %195 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %183
  %199 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %200 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198, %183
  br label %385

205:                                              ; preds = %198
  %206 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %207 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @le64toh(i32 %208)
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %212 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 4
  %213 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %214 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %215, 2
  br i1 %216, label %223, label %217

217:                                              ; preds = %205
  %218 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %219 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217, %205
  br label %385

224:                                              ; preds = %217
  %225 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %226 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 4
  %228 = call i8* @le64toh(i32 %227)
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %231 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %230, i32 0, i32 6
  store i32 %229, i32* %231, align 4
  %232 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %233 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %236 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %224
  %240 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %241 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp sge i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %239, %224
  br label %385

246:                                              ; preds = %239
  %247 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %248 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @le32toh(i32 %249)
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %253 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 4
  %254 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %255 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @le32toh(i32 %256)
  %258 = ptrtoint i8* %257 to i32
  %259 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %260 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %259, i32 0, i32 8
  store i32 %258, i32* %260, align 4
  %261 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %262 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %276, label %265

265:                                              ; preds = %246
  %266 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %267 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %268, 128
  br i1 %269, label %276, label %270

270:                                              ; preds = %265
  %271 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %272 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 7
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %270, %265, %246
  br label %385

277:                                              ; preds = %270
  %278 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %279 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 4
  %281 = call i8* @le64toh(i32 %280)
  %282 = ptrtoint i8* %281 to i32
  %283 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %284 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %283, i32 0, i32 9
  store i32 %282, i32* %284, align 4
  %285 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %286 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %285, i32 0, i32 9
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %287, 2
  br i1 %288, label %295, label %289

289:                                              ; preds = %277
  %290 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %291 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %12, align 4
  %294 = icmp sge i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %289, %277
  br label %385

296:                                              ; preds = %289
  %297 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %298 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %297, i32 0, i32 9
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %301 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = icmp sge i32 %299, %302
  br i1 %303, label %304, label %313

304:                                              ; preds = %296
  %305 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %306 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %305, i32 0, i32 9
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %309 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 4
  %311 = icmp sle i32 %307, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %304
  br label %385

313:                                              ; preds = %304, %296
  %314 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %315 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %314, i32 0, i32 9
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %318 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %321 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 4
  %323 = mul nsw i32 %319, %322
  %324 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %325 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @howmany(i32 %323, i32 %326)
  %328 = add nsw i32 %316, %327
  %329 = sub nsw i32 %328, 1
  store i32 %329, i32* %11, align 4
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %12, align 4
  %332 = icmp sge i32 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %313
  br label %385

334:                                              ; preds = %313
  %335 = load i32, i32* %11, align 4
  %336 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %337 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 4
  %339 = icmp sge i32 %335, %338
  br i1 %339, label %340, label %347

340:                                              ; preds = %334
  %341 = load i32, i32* %11, align 4
  %342 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %343 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %342, i32 0, i32 6
  %344 = load i32, i32* %343, align 4
  %345 = icmp sle i32 %341, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %340
  br label %385

347:                                              ; preds = %340, %334
  %348 = load i64, i64* @GPT_STATE_OK, align 8
  %349 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %350 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %349, i32 0, i32 0
  %351 = load i64*, i64** %350, align 8
  %352 = load i32, i32* %7, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i64, i64* %351, i64 %353
  store i64 %348, i64* %354, align 8
  %355 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %356 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %355, i32 0, i32 11
  %357 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %358 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %357, i32 0, i32 11
  %359 = call i32 @le_uuid_dec(i32* %356, i32* %358)
  %360 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %361 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %360, i32 0, i32 10
  %362 = load i32, i32* %361, align 4
  %363 = call i8* @le32toh(i32 %362)
  %364 = ptrtoint i8* %363 to i32
  %365 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %366 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %365, i32 0, i32 10
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* %7, align 4
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* @GPT_ELT_PRIHDR, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %381

371:                                              ; preds = %347
  %372 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %373 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %5, align 8
  %376 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* @GPT_ELT_SECHDR, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 %374, i32* %380, align 4
  br label %381

381:                                              ; preds = %371, %347
  %382 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %383 = call i32 @g_free(%struct.gpt_hdr* %382)
  %384 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  store %struct.gpt_hdr* %384, %struct.gpt_hdr** %4, align 8
  br label %394

385:                                              ; preds = %346, %333, %312, %295, %276, %245, %223, %204, %182, %162, %137, %111, %89
  %386 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %387 = icmp ne %struct.gpt_hdr* %386, null
  br i1 %387, label %388, label %391

388:                                              ; preds = %385
  %389 = load %struct.gpt_hdr*, %struct.gpt_hdr** %9, align 8
  %390 = call i32 @g_free(%struct.gpt_hdr* %389)
  br label %391

391:                                              ; preds = %388, %385
  %392 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %393 = call i32 @g_free(%struct.gpt_hdr* %392)
  store %struct.gpt_hdr* null, %struct.gpt_hdr** %4, align 8
  br label %394

394:                                              ; preds = %391, %381, %81
  %395 = load %struct.gpt_hdr*, %struct.gpt_hdr** %4, align 8
  ret %struct.gpt_hdr* %395
}

declare dso_local %struct.gpt_hdr* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i8* @le32toh(i32) #1

declare dso_local %struct.gpt_hdr* @g_malloc(i32, i32) #1

declare dso_local i32 @bcopy(%struct.gpt_hdr*, %struct.gpt_hdr*, i32) #1

declare dso_local i32 @crc32(%struct.gpt_hdr*, i32) #1

declare dso_local i8* @le64toh(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @le_uuid_dec(i32*, i32*) #1

declare dso_local i32 @g_free(%struct.gpt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
