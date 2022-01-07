; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.g_part_table = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i8* }
%struct.g_part_vtoc8_table = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__*, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.g_part_entry = type { i32 }

@UINT32_MAX = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"GEOM: %s: geometry does not match VTOC8 label (label: %uh,%us GEOM: %uh,%us).\0A\00", align 1
@VTOC_SANITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"GEOM: %s: adding VTOC8 information.\0A\00", align 1
@VTOC_VERSION = common dso_local global i32 0, align 4
@VTOC_VOLUME_LEN = common dso_local global i32 0, align 4
@VTOC8_NPARTS = common dso_local global i64 0, align 8
@g_part_vtoc8_scheme = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@VTOC_RAW_PART = common dso_local global i32 0, align 4
@VTOC_TAG_BACKUP = common dso_local global i64 0, align 8
@VTOC_TAG_UNASSIGNED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"GEOM: %s: invalid VTOC8 label.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_vtoc8_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_vtoc8_read(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_vtoc8_table*, align 8
  %8 = alloca %struct.g_part_entry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %21 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %22 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %21, i32 0, i32 0
  %23 = load %struct.g_provider*, %struct.g_provider** %22, align 8
  store %struct.g_provider* %23, %struct.g_provider** %6, align 8
  %24 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %25 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @g_read_data(%struct.g_consumer* %24, i32 0, i32 %27, i32* %17)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %3, align 4
  br label %344

33:                                               ; preds = %2
  %34 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %35 = bitcast %struct.g_part_table* %34 to %struct.g_part_vtoc8_table*
  store %struct.g_part_vtoc8_table* %35, %struct.g_part_vtoc8_table** %7, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %38 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %37, i32 0, i32 1
  %39 = call i32 @bcopy(i32* %36, %struct.TYPE_8__* %38, i32 48)
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @g_free(i32* %40)
  %42 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %46 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %44, %47
  %49 = load i32, i32* @UINT32_MAX, align 4
  %50 = call i32 @MIN(i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %52 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  %54 = call i8* @be16dec(i32* %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %33
  br label %338

59:                                               ; preds = %33
  %60 = load i32, i32* %16, align 4
  %61 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %62 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %67 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @g_part_geometry_heads(i32 %71, i32 %72, i32* %10, i32* %15)
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %79 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %82 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %70
  br label %84

84:                                               ; preds = %83, %65, %59
  %85 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %86 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 7
  %88 = call i8* @be16dec(i32* %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %338

93:                                               ; preds = %84
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %96 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %101 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %107 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %99, %93
  %109 = load i64, i64* @bootverbose, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %114 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %120 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %117, %111
  %124 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %125 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %130 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %133 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %126, i32 %127, i32 %128, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %123, %117, %108
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %16, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %141 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %143 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 6
  %145 = call i8* @be16dec(i32* %144)
  %146 = ptrtoint i8* %145 to i32
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %149 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %147, %150
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %158, label %154

154:                                              ; preds = %136
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %136
  br label %338

159:                                              ; preds = %154
  %160 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %161 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %160, i32 0, i32 5
  store i64 0, i64* %161, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %165 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %167 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %166, i32 0, i32 3
  store i32 1, i32* %167, align 4
  %168 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %169 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = call i32 @be32dec(i32* %170)
  %172 = load i32, i32* @VTOC_SANITY, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 0
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %19, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %207, label %178

178:                                              ; preds = %159
  %179 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %180 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  %183 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %184 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 5
  %186 = load i32, i32* @VTOC_VERSION, align 4
  %187 = call i32 @be32enc(i32* %185, i32 %186)
  %188 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %189 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i32, i32* @VTOC_VOLUME_LEN, align 4
  %192 = call i32 @bzero(%struct.TYPE_7__** %190, i32 %191)
  %193 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %194 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load i64, i64* @VTOC8_NPARTS, align 8
  %197 = call i32 @be16enc(i32* %195, i64 %196)
  %198 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %199 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = call i32 @bzero(%struct.TYPE_7__** %200, i32 8)
  %202 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %203 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  %205 = load i32, i32* @VTOC_SANITY, align 4
  %206 = call i32 @be32enc(i32* %204, i32 %205)
  br label %207

207:                                              ; preds = %178, %159
  %208 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %209 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = call i8* @be16dec(i32* %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %214 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %216 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_part_vtoc8_scheme, i32 0, i32 0), align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %226, label %220

220:                                              ; preds = %207
  %221 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %222 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_part_vtoc8_scheme, i32 0, i32 1), align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %220, %207
  br label %338

227:                                              ; preds = %220
  %228 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %229 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = sub nsw i32 %230, 1
  store i32 %231, i32* %18, align 4
  br label %232

232:                                              ; preds = %334, %227
  %233 = load i32, i32* %18, align 4
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %337

235:                                              ; preds = %232
  %236 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %237 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = call i32 @be32dec(i32* %243)
  %245 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %246 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 %244, %247
  store i32 %248, i32* %12, align 4
  %249 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %250 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = call i32 @be32dec(i32* %256)
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %235
  br label %334

261:                                              ; preds = %235
  %262 = load i32, i32* %19, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %266 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %267, align 8
  %269 = load i32, i32* %18, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = call i8* @be16dec(i32* %272)
  %274 = ptrtoint i8* %273 to i64
  store i64 %274, i64* %20, align 8
  br label %285

275:                                              ; preds = %261
  %276 = load i32, i32* %18, align 4
  %277 = load i32, i32* @VTOC_RAW_PART, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i64, i64* @VTOC_TAG_BACKUP, align 8
  br label %283

281:                                              ; preds = %275
  %282 = load i64, i64* @VTOC_TAG_UNASSIGNED, align 8
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i64 [ %280, %279 ], [ %282, %281 ]
  store i64 %284, i64* %20, align 8
  br label %285

285:                                              ; preds = %283, %264
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* @VTOC_RAW_PART, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %285
  %290 = load i64, i64* %20, align 8
  %291 = load i64, i64* @VTOC_TAG_BACKUP, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  br label %334

294:                                              ; preds = %289, %285
  %295 = load i32, i32* %18, align 4
  %296 = load i32, i32* @VTOC_RAW_PART, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %294
  %299 = load i64, i64* %20, align 8
  %300 = load i64, i64* @VTOC_TAG_BACKUP, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  br label %334

303:                                              ; preds = %298, %294
  %304 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %305 = load i32, i32* %18, align 4
  %306 = add nsw i32 %305, 1
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* %13, align 4
  %310 = add nsw i32 %308, %309
  %311 = sub nsw i32 %310, 1
  %312 = call %struct.g_part_entry* @g_part_new_entry(%struct.g_part_table* %304, i32 %306, i32 %307, i32 %311)
  store %struct.g_part_entry* %312, %struct.g_part_entry** %8, align 8
  %313 = load i64, i64* %20, align 8
  %314 = load i64, i64* @VTOC_TAG_BACKUP, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %303
  %317 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %318 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %317, i32 0, i32 0
  store i32 1, i32* %318, align 4
  br label %319

319:                                              ; preds = %316, %303
  %320 = load i32, i32* %19, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %333, label %322

322:                                              ; preds = %319
  %323 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %7, align 8
  %324 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = load i32, i32* %18, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = load i64, i64* %20, align 8
  %332 = call i32 @be16enc(i32* %330, i64 %331)
  br label %333

333:                                              ; preds = %322, %319
  br label %334

334:                                              ; preds = %333, %302, %293, %260
  %335 = load i32, i32* %18, align 4
  %336 = add nsw i32 %335, -1
  store i32 %336, i32* %18, align 4
  br label %232

337:                                              ; preds = %232
  store i32 0, i32* %3, align 4
  br label %344

338:                                              ; preds = %226, %158, %92, %58
  %339 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %340 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %339, i32 0, i32 2
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %341)
  %343 = load i32, i32* @EINVAL, align 4
  store i32 %343, i32* %3, align 4
  br label %344

344:                                              ; preds = %338, %337, %31
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local i32* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i8* @be16dec(i32*) #1

declare dso_local i32 @g_part_geometry_heads(i32, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @be32dec(i32*) #1

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_7__**, i32) #1

declare dso_local i32 @be16enc(i32*, i64) #1

declare dso_local %struct.g_part_entry* @g_part_new_entry(%struct.g_part_table*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
