; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i32 }
%struct.ddf_meta = type { i32, i32, %struct.ddf_header*, %struct.ddf_header*, %struct.ddf_header*, %struct.ddf_header*, %struct.ddf_header*, %struct.ddf_header*, %struct.ddf_header* }
%struct.ddf_header = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@DDF_HEADER_SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"DDF signature check failed on %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DDF_HEADER_ANCHOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"DDF header type check failed on %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"DDF CRC mismatch on %s\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"DDF primary header LBA is wrong on %s\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"DDF secondary header LBA is wrong on %s\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"DDF %s metadata read error on %s (error=%d).\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"DDF metadata read error on %s.\00", align 1
@M_MD_DDF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"DDF %s metadata check failed on %s\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"DDF metadata check failed on %s\00", align 1
@DDF_HEADER_PRIMARY = common dso_local global i64 0, align 8
@DDF_HEADER_SECONDARY = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"%s: Blocksize is too big.\00", align 1
@cdr = common dso_local global %struct.TYPE_13__* null, align 8
@DDF_CONTROLLER_DATA_SIGNATURE = common dso_local global i32 0, align 4
@pdr = common dso_local global %struct.TYPE_11__* null, align 8
@DDF_PDR_SIGNATURE = common dso_local global i32 0, align 4
@DDF_PDE_FAILED = common dso_local global i32 0, align 4
@vdr = common dso_local global %struct.TYPE_10__* null, align 8
@DDF_VD_RECORD_SIGNATURE = common dso_local global i32 0, align 4
@pdd = common dso_local global %struct.TYPE_12__* null, align 8
@DDF_PDD_SIGNATURE = common dso_local global i32 0, align 4
@bbm = common dso_local global %struct.TYPE_14__* null, align 8
@DDF_BBML_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.ddf_meta*)* @ddf_meta_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddf_meta_read(%struct.g_consumer* %0, %struct.ddf_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.ddf_meta*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.ddf_header*, align 8
  %8 = alloca %struct.ddf_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store %struct.ddf_meta* %1, %struct.ddf_meta** %5, align 8
  %19 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %20 = call i32 @ddf_meta_free(%struct.ddf_meta* %19)
  %21 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %22 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %21, i32 0, i32 0
  %23 = load %struct.g_provider*, %struct.g_provider** %22, align 8
  store %struct.g_provider* %23, %struct.g_provider** %6, align 8
  %24 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %28 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 %26, i32* %17, align 4
  %29 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %30 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %17, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %17, align 4
  %36 = call i8* @g_read_data(%struct.g_consumer* %29, i32 %34, i32 %35, i32* %14)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %41 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load i32, i32* %14, align 4
  %46 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %3, align 4
  br label %1056

48:                                               ; preds = %2
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to %struct.ddf_header*
  store %struct.ddf_header* %50, %struct.ddf_header** %7, align 8
  %51 = load %struct.ddf_header*, %struct.ddf_header** %7, align 8
  %52 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %51, i32 0, i32 0
  %53 = call i64 @be32dec(i64* %52)
  %54 = load i64, i64* @DDF_HEADER_SIGNATURE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %58 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %77

59:                                               ; preds = %48
  %60 = load %struct.ddf_header*, %struct.ddf_header** %7, align 8
  %61 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %60, i32 0, i32 0
  %62 = call i64 @le32dec(i64* %61)
  %63 = load i64, i64* @DDF_HEADER_SIGNATURE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %67 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %76

68:                                               ; preds = %59
  %69 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %70 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %14, align 4
  br label %1046

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.ddf_header*, %struct.ddf_header** %7, align 8
  %79 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DDF_HEADER_ANCHOR, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %85 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %14, align 4
  br label %1046

91:                                               ; preds = %77
  %92 = load %struct.ddf_header*, %struct.ddf_header** %7, align 8
  %93 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %94 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %93, i32 0, i32 8
  store %struct.ddf_header* %92, %struct.ddf_header** %94, align 8
  %95 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %96 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %97 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %96, i32 0, i32 23
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @GET64(%struct.ddf_meta* %95, i32 %98)
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %102 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %103 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %102, i32 0, i32 22
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @GET64(%struct.ddf_meta* %101, i32 %104)
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %12, align 4
  %107 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %108 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %109 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %108, i32 0, i32 25
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @GET32(%struct.ddf_meta* %107, i32 %110)
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %18, align 8
  %113 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %114 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %115 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %114, i32 0, i32 25
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @SET32(%struct.ddf_meta* %113, i32 %116, i32 -1)
  %118 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %119 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %118, i32 0, i32 8
  store %struct.ddf_header* null, %struct.ddf_header** %119, align 8
  %120 = load %struct.ddf_header*, %struct.ddf_header** %7, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i64 @crc32(%struct.ddf_header* %120, i32 %121)
  %123 = load i64, i64* %18, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %91
  %126 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %127 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %14, align 4
  br label %1046

133:                                              ; preds = %91
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 6
  %136 = load i32, i32* %17, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %139 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %137, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %133
  %143 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %144 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %14, align 4
  br label %1046

150:                                              ; preds = %133
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %170

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 6
  %156 = load i32, i32* %17, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %159 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp sge i32 %157, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %153
  %163 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %164 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %167)
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %14, align 4
  br label %1046

170:                                              ; preds = %153, %150
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %299, %201, %170
  store i32 0, i32* %14, align 4
  %173 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %174 = call i32 @ddf_meta_free(%struct.ddf_meta* %173)
  %175 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %17, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %17, align 4
  %180 = call i8* @g_read_data(%struct.g_consumer* %175, i32 %178, i32 %179, i32* %14)
  store i8* %180, i8** %10, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %210

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %1007, %924, %875, %817, %656, %598, %183
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %190 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %191 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %189, i32 %192, i32 %193)
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %184
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, -1
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %13, align 4
  br label %172

203:                                              ; preds = %198, %184
  %204 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %205 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  %209 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %208)
  br label %1046

210:                                              ; preds = %172
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* @M_MD_DDF, align 4
  %213 = load i32, i32* @M_WAITOK, align 4
  %214 = call i8* @malloc(i32 %211, i32 %212, i32 %213)
  %215 = bitcast i8* %214 to %struct.ddf_header*
  %216 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %217 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %216, i32 0, i32 8
  store %struct.ddf_header* %215, %struct.ddf_header** %217, align 8
  %218 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %219 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %218, i32 0, i32 8
  %220 = load %struct.ddf_header*, %struct.ddf_header** %219, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = load i32, i32* %17, align 4
  %223 = call i32 @memcpy(%struct.ddf_header* %220, i8* %221, i32 %222)
  %224 = load i8*, i8** %10, align 8
  %225 = call i32 @g_free(i8* %224)
  %226 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %227 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %226, i32 0, i32 8
  %228 = load %struct.ddf_header*, %struct.ddf_header** %227, align 8
  store %struct.ddf_header* %228, %struct.ddf_header** %8, align 8
  %229 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %230 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %231 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %230, i32 0, i32 25
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @GET32(%struct.ddf_meta* %229, i32 %232)
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %18, align 8
  %235 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %236 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %237 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %236, i32 0, i32 25
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @SET32(%struct.ddf_meta* %235, i32 %238, i32 -1)
  %240 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %241 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.ddf_header*, %struct.ddf_header** %7, align 8
  %244 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %242, %245
  br i1 %246, label %282, label %247

247:                                              ; preds = %210
  %248 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %249 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %248, i32 0, i32 8
  %250 = load %struct.ddf_header*, %struct.ddf_header** %249, align 8
  %251 = load i32, i32* %17, align 4
  %252 = call i64 @crc32(%struct.ddf_header* %250, i32 %251)
  %253 = load i64, i64* %18, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %282, label %255

255:                                              ; preds = %247
  %256 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %257 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %256, i32 0, i32 24
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ddf_header*, %struct.ddf_header** %7, align 8
  %260 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %259, i32 0, i32 24
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @memcmp(i32 %258, i32 %261, i32 24)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %282, label %264

264:                                              ; preds = %255
  %265 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %266 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %267 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %266, i32 0, i32 23
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @GET64(%struct.ddf_meta* %265, i32 %268)
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = icmp ne i64 %269, %271
  br i1 %272, label %282, label %273

273:                                              ; preds = %264
  %274 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %275 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %276 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %275, i32 0, i32 22
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @GET64(%struct.ddf_meta* %274, i32 %277)
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = icmp ne i64 %278, %280
  br i1 %281, label %282, label %309

282:                                              ; preds = %273, %264, %255, %247, %210
  br label %283

283:                                              ; preds = %1043, %971, %960, %853, %692, %634, %570, %481, %467, %329, %282
  %284 = load i32, i32* %13, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp eq i32 %284, %285
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %289 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %290 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %288, i32 %291)
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %283
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, -1
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = load i32, i32* %12, align 4
  store i32 %300, i32* %13, align 4
  br label %172

301:                                              ; preds = %296, %283
  %302 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %303 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = inttoptr i64 %305 to i8*
  %307 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %306)
  %308 = load i32, i32* @EINVAL, align 4
  store i32 %308, i32* %14, align 4
  br label %1046

309:                                              ; preds = %273
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* %11, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %315 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @DDF_HEADER_PRIMARY, align 8
  %318 = icmp ne i64 %316, %317
  br i1 %318, label %329, label %319

319:                                              ; preds = %313, %309
  %320 = load i32, i32* %13, align 4
  %321 = load i32, i32* %12, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %319
  %324 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %325 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @DDF_HEADER_SECONDARY, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %323, %313
  br label %283

330:                                              ; preds = %323, %319
  store i32 1, i32* %15, align 4
  %331 = load i32, i32* %15, align 4
  %332 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %333 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %334 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %333, i32 0, i32 14
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @GET32(%struct.ddf_meta* %332, i32 %335)
  %337 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %338 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %339 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %338, i32 0, i32 13
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @GET32(%struct.ddf_meta* %337, i32 %340)
  %342 = add nsw i32 %336, %341
  %343 = sext i32 %342 to i64
  %344 = call i32 @max(i32 %331, i64 %343)
  store i32 %344, i32* %15, align 4
  %345 = load i32, i32* %15, align 4
  %346 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %347 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %348 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %347, i32 0, i32 12
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @GET32(%struct.ddf_meta* %346, i32 %349)
  %351 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %352 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %353 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %352, i32 0, i32 11
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @GET32(%struct.ddf_meta* %351, i32 %354)
  %356 = add nsw i32 %350, %355
  %357 = sext i32 %356 to i64
  %358 = call i32 @max(i32 %345, i64 %357)
  store i32 %358, i32* %15, align 4
  %359 = load i32, i32* %15, align 4
  %360 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %361 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %362 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %361, i32 0, i32 9
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @GET32(%struct.ddf_meta* %360, i32 %363)
  %365 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %366 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %367 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %366, i32 0, i32 8
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @GET32(%struct.ddf_meta* %365, i32 %368)
  %370 = add nsw i32 %364, %369
  %371 = sext i32 %370 to i64
  %372 = call i32 @max(i32 %359, i64 %371)
  store i32 %372, i32* %15, align 4
  %373 = load i32, i32* %15, align 4
  %374 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %375 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %376 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %375, i32 0, i32 7
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @GET32(%struct.ddf_meta* %374, i32 %377)
  %379 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %380 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %381 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 8
  %383 = call i32 @GET32(%struct.ddf_meta* %379, i32 %382)
  %384 = add nsw i32 %378, %383
  %385 = sext i32 %384 to i64
  %386 = call i32 @max(i32 %373, i64 %385)
  store i32 %386, i32* %15, align 4
  %387 = load i32, i32* %15, align 4
  %388 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %389 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %390 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @GET32(%struct.ddf_meta* %388, i32 %391)
  %393 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %394 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %395 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @GET32(%struct.ddf_meta* %393, i32 %396)
  %398 = add nsw i32 %392, %397
  %399 = sext i32 %398 to i64
  %400 = call i32 @max(i32 %387, i64 %399)
  store i32 %400, i32* %15, align 4
  %401 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %402 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %403 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @GET32(%struct.ddf_meta* %401, i32 %404)
  %406 = sext i32 %405 to i64
  store i64 %406, i64* %18, align 8
  %407 = icmp ne i64 %406, 4294967295
  br i1 %407, label %408, label %419

408:                                              ; preds = %330
  %409 = load i32, i32* %15, align 4
  %410 = load i64, i64* %18, align 8
  %411 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %412 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %413 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @GET32(%struct.ddf_meta* %411, i32 %414)
  %416 = sext i32 %415 to i64
  %417 = add nsw i64 %410, %416
  %418 = call i32 @max(i32 %409, i64 %417)
  store i32 %418, i32* %15, align 4
  br label %419

419:                                              ; preds = %408, %330
  %420 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %421 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %422 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %421, i32 0, i32 21
  %423 = load i32, i32* %422, align 8
  %424 = call i32 @GET32(%struct.ddf_meta* %420, i32 %423)
  %425 = sext i32 %424 to i64
  store i64 %425, i64* %18, align 8
  %426 = icmp ne i64 %425, 4294967295
  br i1 %426, label %427, label %438

427:                                              ; preds = %419
  %428 = load i32, i32* %15, align 4
  %429 = load i64, i64* %18, align 8
  %430 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %431 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %432 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %431, i32 0, i32 20
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @GET32(%struct.ddf_meta* %430, i32 %433)
  %435 = sext i32 %434 to i64
  %436 = add nsw i64 %429, %435
  %437 = call i32 @max(i32 %428, i64 %436)
  store i32 %437, i32* %15, align 4
  br label %438

438:                                              ; preds = %427, %419
  %439 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %440 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %441 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %440, i32 0, i32 19
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @GET32(%struct.ddf_meta* %439, i32 %442)
  %444 = sext i32 %443 to i64
  store i64 %444, i64* %18, align 8
  %445 = icmp ne i64 %444, 4294967295
  br i1 %445, label %446, label %457

446:                                              ; preds = %438
  %447 = load i32, i32* %15, align 4
  %448 = load i64, i64* %18, align 8
  %449 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %450 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %451 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %450, i32 0, i32 18
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @GET32(%struct.ddf_meta* %449, i32 %452)
  %454 = sext i32 %453 to i64
  %455 = add nsw i64 %448, %454
  %456 = call i32 @max(i32 %447, i64 %455)
  store i32 %456, i32* %15, align 4
  br label %457

457:                                              ; preds = %446, %438
  %458 = load i32, i32* %11, align 4
  %459 = load i32, i32* %15, align 4
  %460 = add nsw i32 %458, %459
  %461 = load i32, i32* %17, align 4
  %462 = mul nsw i32 %460, %461
  %463 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %464 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = icmp sge i32 %462, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %457
  br label %283

468:                                              ; preds = %457
  %469 = load i32, i32* %12, align 4
  %470 = icmp ne i32 %469, -1
  br i1 %470, label %471, label %482

471:                                              ; preds = %468
  %472 = load i32, i32* %12, align 4
  %473 = load i32, i32* %15, align 4
  %474 = add nsw i32 %472, %473
  %475 = load i32, i32* %17, align 4
  %476 = mul nsw i32 %474, %475
  %477 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %478 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = icmp sge i32 %476, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %471
  br label %283

482:                                              ; preds = %471, %468
  %483 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %484 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %485 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %484, i32 0, i32 17
  %486 = load i32, i32* %485, align 8
  %487 = call i32 @GET16(%struct.ddf_meta* %483, i32 %486)
  %488 = icmp eq i32 %487, 65535
  br i1 %488, label %489, label %510

489:                                              ; preds = %482
  %490 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %491 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %492 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %491, i32 0, i32 17
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %495 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %496 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %495, i32 0, i32 16
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @GET16(%struct.ddf_meta* %494, i32 %497)
  %499 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %500 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %501 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %500, i32 0, i32 15
  %502 = load i32, i32* %501, align 8
  %503 = call i32 @GET16(%struct.ddf_meta* %499, i32 %502)
  %504 = load i32, i32* %17, align 4
  %505 = mul nsw i32 %503, %504
  %506 = sub nsw i32 %505, 512
  %507 = sdiv i32 %506, 12
  %508 = call i32 @min(i32 %498, i32 %507)
  %509 = call i32 @SET16(%struct.ddf_meta* %490, i32 %493, i32 %508)
  br label %510

510:                                              ; preds = %489, %482
  %511 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %512 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %513 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %512, i32 0, i32 13
  %514 = load i32, i32* %513, align 8
  %515 = call i32 @GET32(%struct.ddf_meta* %511, i32 %514)
  %516 = load i32, i32* %17, align 4
  %517 = mul nsw i32 %515, %516
  %518 = load i32, i32* @MAXPHYS, align 4
  %519 = icmp sge i32 %517, %518
  br i1 %519, label %570, label %520

520:                                              ; preds = %510
  %521 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %522 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %523 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %522, i32 0, i32 11
  %524 = load i32, i32* %523, align 8
  %525 = call i32 @GET32(%struct.ddf_meta* %521, i32 %524)
  %526 = load i32, i32* %17, align 4
  %527 = mul nsw i32 %525, %526
  %528 = load i32, i32* @MAXPHYS, align 4
  %529 = icmp sge i32 %527, %528
  br i1 %529, label %570, label %530

530:                                              ; preds = %520
  %531 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %532 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %533 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %532, i32 0, i32 8
  %534 = load i32, i32* %533, align 8
  %535 = call i32 @GET32(%struct.ddf_meta* %531, i32 %534)
  %536 = load i32, i32* %17, align 4
  %537 = mul nsw i32 %535, %536
  %538 = load i32, i32* @MAXPHYS, align 4
  %539 = icmp sge i32 %537, %538
  br i1 %539, label %570, label %540

540:                                              ; preds = %530
  %541 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %542 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %543 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %542, i32 0, i32 6
  %544 = load i32, i32* %543, align 8
  %545 = call i32 @GET32(%struct.ddf_meta* %541, i32 %544)
  %546 = load i32, i32* %17, align 4
  %547 = mul nsw i32 %545, %546
  %548 = load i32, i32* @MAXPHYS, align 4
  %549 = icmp sge i32 %547, %548
  br i1 %549, label %570, label %550

550:                                              ; preds = %540
  %551 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %552 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %553 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %552, i32 0, i32 4
  %554 = load i32, i32* %553, align 8
  %555 = call i32 @GET32(%struct.ddf_meta* %551, i32 %554)
  %556 = load i32, i32* %17, align 4
  %557 = mul nsw i32 %555, %556
  %558 = load i32, i32* @MAXPHYS, align 4
  %559 = icmp sge i32 %557, %558
  br i1 %559, label %570, label %560

560:                                              ; preds = %550
  %561 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %562 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %563 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 8
  %565 = call i32 @GET32(%struct.ddf_meta* %561, i32 %564)
  %566 = load i32, i32* %17, align 4
  %567 = mul nsw i32 %565, %566
  %568 = load i32, i32* @MAXPHYS, align 4
  %569 = icmp sge i32 %567, %568
  br i1 %569, label %570, label %577

570:                                              ; preds = %560, %550, %540, %530, %520, %510
  %571 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %572 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 4
  %574 = sext i32 %573 to i64
  %575 = inttoptr i64 %574 to i8*
  %576 = call i32 (i32, i8*, i8*, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %575)
  br label %283

577:                                              ; preds = %560
  %578 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %579 = load i32, i32* %13, align 4
  %580 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %581 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %582 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %581, i32 0, i32 14
  %583 = load i32, i32* %582, align 4
  %584 = call i32 @GET32(%struct.ddf_meta* %580, i32 %583)
  %585 = add nsw i32 %579, %584
  %586 = load i32, i32* %17, align 4
  %587 = mul nsw i32 %585, %586
  %588 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %589 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %590 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %589, i32 0, i32 13
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @GET32(%struct.ddf_meta* %588, i32 %591)
  %593 = load i32, i32* %17, align 4
  %594 = mul nsw i32 %592, %593
  %595 = call i8* @g_read_data(%struct.g_consumer* %578, i32 %587, i32 %594, i32* %14)
  store i8* %595, i8** %10, align 8
  %596 = load i8*, i8** %10, align 8
  %597 = icmp eq i8* %596, null
  br i1 %597, label %598, label %599

598:                                              ; preds = %577
  br label %184

599:                                              ; preds = %577
  %600 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %601 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %602 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %601, i32 0, i32 13
  %603 = load i32, i32* %602, align 8
  %604 = call i32 @GET32(%struct.ddf_meta* %600, i32 %603)
  %605 = load i32, i32* %17, align 4
  %606 = mul nsw i32 %604, %605
  %607 = load i32, i32* @M_MD_DDF, align 4
  %608 = load i32, i32* @M_WAITOK, align 4
  %609 = call i8* @malloc(i32 %606, i32 %607, i32 %608)
  %610 = bitcast i8* %609 to %struct.ddf_header*
  %611 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %612 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %611, i32 0, i32 7
  store %struct.ddf_header* %610, %struct.ddf_header** %612, align 8
  %613 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %614 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %613, i32 0, i32 7
  %615 = load %struct.ddf_header*, %struct.ddf_header** %614, align 8
  %616 = load i8*, i8** %10, align 8
  %617 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %618 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %619 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %618, i32 0, i32 13
  %620 = load i32, i32* %619, align 8
  %621 = call i32 @GET32(%struct.ddf_meta* %617, i32 %620)
  %622 = load i32, i32* %17, align 4
  %623 = mul nsw i32 %621, %622
  %624 = call i32 @memcpy(%struct.ddf_header* %615, i8* %616, i32 %623)
  %625 = load i8*, i8** %10, align 8
  %626 = call i32 @g_free(i8* %625)
  %627 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %628 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cdr, align 8
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = call i32 @GET32(%struct.ddf_meta* %627, i32 %630)
  %632 = load i32, i32* @DDF_CONTROLLER_DATA_SIGNATURE, align 4
  %633 = icmp ne i32 %631, %632
  br i1 %633, label %634, label %635

634:                                              ; preds = %599
  br label %283

635:                                              ; preds = %599
  %636 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %637 = load i32, i32* %13, align 4
  %638 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %639 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %640 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %639, i32 0, i32 12
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @GET32(%struct.ddf_meta* %638, i32 %641)
  %643 = add nsw i32 %637, %642
  %644 = load i32, i32* %17, align 4
  %645 = mul nsw i32 %643, %644
  %646 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %647 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %648 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %647, i32 0, i32 11
  %649 = load i32, i32* %648, align 8
  %650 = call i32 @GET32(%struct.ddf_meta* %646, i32 %649)
  %651 = load i32, i32* %17, align 4
  %652 = mul nsw i32 %650, %651
  %653 = call i8* @g_read_data(%struct.g_consumer* %636, i32 %645, i32 %652, i32* %14)
  store i8* %653, i8** %10, align 8
  %654 = load i8*, i8** %10, align 8
  %655 = icmp eq i8* %654, null
  br i1 %655, label %656, label %657

656:                                              ; preds = %635
  br label %184

657:                                              ; preds = %635
  %658 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %659 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %660 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %659, i32 0, i32 11
  %661 = load i32, i32* %660, align 8
  %662 = call i32 @GET32(%struct.ddf_meta* %658, i32 %661)
  %663 = load i32, i32* %17, align 4
  %664 = mul nsw i32 %662, %663
  %665 = load i32, i32* @M_MD_DDF, align 4
  %666 = load i32, i32* @M_WAITOK, align 4
  %667 = call i8* @malloc(i32 %664, i32 %665, i32 %666)
  %668 = bitcast i8* %667 to %struct.ddf_header*
  %669 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %670 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %669, i32 0, i32 6
  store %struct.ddf_header* %668, %struct.ddf_header** %670, align 8
  %671 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %672 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %671, i32 0, i32 6
  %673 = load %struct.ddf_header*, %struct.ddf_header** %672, align 8
  %674 = load i8*, i8** %10, align 8
  %675 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %676 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %677 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %676, i32 0, i32 11
  %678 = load i32, i32* %677, align 8
  %679 = call i32 @GET32(%struct.ddf_meta* %675, i32 %678)
  %680 = load i32, i32* %17, align 4
  %681 = mul nsw i32 %679, %680
  %682 = call i32 @memcpy(%struct.ddf_header* %673, i8* %674, i32 %681)
  %683 = load i8*, i8** %10, align 8
  %684 = call i32 @g_free(i8* %683)
  %685 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %686 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdr, align 8
  %687 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %686, i32 0, i32 2
  %688 = load i32, i32* %687, align 4
  %689 = call i32 @GET32(%struct.ddf_meta* %685, i32 %688)
  %690 = load i32, i32* @DDF_PDR_SIGNATURE, align 4
  %691 = icmp ne i32 %689, %690
  br i1 %691, label %692, label %693

692:                                              ; preds = %657
  br label %283

693:                                              ; preds = %657
  %694 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %695 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %796

698:                                              ; preds = %693
  store i32 0, i32* %16, align 4
  br label %699

699:                                              ; preds = %792, %698
  %700 = load i32, i32* %16, align 4
  %701 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %702 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdr, align 8
  %703 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %702, i32 0, i32 1
  %704 = load i32, i32* %703, align 8
  %705 = call i32 @GET16(%struct.ddf_meta* %701, i32 %704)
  %706 = icmp slt i32 %700, %705
  br i1 %706, label %707, label %795

707:                                              ; preds = %699
  %708 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %709 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %708, i32 0, i32 6
  %710 = load %struct.ddf_header*, %struct.ddf_header** %709, align 8
  %711 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %710, i32 0, i32 10
  %712 = load %struct.TYPE_8__*, %struct.TYPE_8__** %711, align 8
  %713 = load i32, i32* %16, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %712, i64 %714
  %716 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 4
  %718 = call i64 @isff(i32 %717, i32 24)
  %719 = icmp ne i64 %718, 0
  br i1 %719, label %720, label %721

720:                                              ; preds = %707
  br label %792

721:                                              ; preds = %707
  %722 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %723 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdr, align 8
  %724 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %723, i32 0, i32 0
  %725 = load %struct.TYPE_9__*, %struct.TYPE_9__** %724, align 8
  %726 = load i32, i32* %16, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %725, i64 %727
  %729 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %728, i32 0, i32 2
  %730 = load i32, i32* %729, align 4
  %731 = call i32 @GET32(%struct.ddf_meta* %722, i32 %730)
  %732 = icmp eq i32 %731, -1
  br i1 %732, label %733, label %734

733:                                              ; preds = %721
  br label %792

734:                                              ; preds = %721
  %735 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %736 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdr, align 8
  %737 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %736, i32 0, i32 0
  %738 = load %struct.TYPE_9__*, %struct.TYPE_9__** %737, align 8
  %739 = load i32, i32* %16, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %738, i64 %740
  %742 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %741, i32 0, i32 0
  %743 = load i32, i32* %742, align 4
  %744 = call i64 @GET64(%struct.ddf_meta* %735, i32 %743)
  %745 = icmp uge i64 %744, 281474976710656
  br i1 %745, label %746, label %791

746:                                              ; preds = %734
  %747 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %748 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdr, align 8
  %749 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %748, i32 0, i32 0
  %750 = load %struct.TYPE_9__*, %struct.TYPE_9__** %749, align 8
  %751 = load i32, i32* %16, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %750, i64 %752
  %754 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %753, i32 0, i32 1
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %757 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdr, align 8
  %758 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %757, i32 0, i32 0
  %759 = load %struct.TYPE_9__*, %struct.TYPE_9__** %758, align 8
  %760 = load i32, i32* %16, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %759, i64 %761
  %763 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %762, i32 0, i32 1
  %764 = load i32, i32* %763, align 4
  %765 = call i32 @GET16(%struct.ddf_meta* %756, i32 %764)
  %766 = load i32, i32* @DDF_PDE_FAILED, align 4
  %767 = xor i32 %766, -1
  %768 = and i32 %765, %767
  %769 = call i32 @SET16(%struct.ddf_meta* %747, i32 %755, i32 %768)
  %770 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %771 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdr, align 8
  %772 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %771, i32 0, i32 0
  %773 = load %struct.TYPE_9__*, %struct.TYPE_9__** %772, align 8
  %774 = load i32, i32* %16, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %773, i64 %775
  %777 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %776, i32 0, i32 0
  %778 = load i32, i32* %777, align 4
  %779 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %780 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pdr, align 8
  %781 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %780, i32 0, i32 0
  %782 = load %struct.TYPE_9__*, %struct.TYPE_9__** %781, align 8
  %783 = load i32, i32* %16, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %782, i64 %784
  %786 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 4
  %788 = call i64 @GET64(%struct.ddf_meta* %779, i32 %787)
  %789 = and i64 %788, 281474976710655
  %790 = call i32 @SET64(%struct.ddf_meta* %770, i32 %778, i64 %789)
  br label %791

791:                                              ; preds = %746, %734
  br label %792

792:                                              ; preds = %791, %733, %720
  %793 = load i32, i32* %16, align 4
  %794 = add nsw i32 %793, 1
  store i32 %794, i32* %16, align 4
  br label %699

795:                                              ; preds = %699
  br label %796

796:                                              ; preds = %795, %693
  %797 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %798 = load i32, i32* %13, align 4
  %799 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %800 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %801 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %800, i32 0, i32 9
  %802 = load i32, i32* %801, align 4
  %803 = call i32 @GET32(%struct.ddf_meta* %799, i32 %802)
  %804 = add nsw i32 %798, %803
  %805 = load i32, i32* %17, align 4
  %806 = mul nsw i32 %804, %805
  %807 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %808 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %809 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %808, i32 0, i32 8
  %810 = load i32, i32* %809, align 8
  %811 = call i32 @GET32(%struct.ddf_meta* %807, i32 %810)
  %812 = load i32, i32* %17, align 4
  %813 = mul nsw i32 %811, %812
  %814 = call i8* @g_read_data(%struct.g_consumer* %797, i32 %806, i32 %813, i32* %14)
  store i8* %814, i8** %10, align 8
  %815 = load i8*, i8** %10, align 8
  %816 = icmp eq i8* %815, null
  br i1 %816, label %817, label %818

817:                                              ; preds = %796
  br label %184

818:                                              ; preds = %796
  %819 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %820 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %821 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %820, i32 0, i32 8
  %822 = load i32, i32* %821, align 8
  %823 = call i32 @GET32(%struct.ddf_meta* %819, i32 %822)
  %824 = load i32, i32* %17, align 4
  %825 = mul nsw i32 %823, %824
  %826 = load i32, i32* @M_MD_DDF, align 4
  %827 = load i32, i32* @M_WAITOK, align 4
  %828 = call i8* @malloc(i32 %825, i32 %826, i32 %827)
  %829 = bitcast i8* %828 to %struct.ddf_header*
  %830 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %831 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %830, i32 0, i32 5
  store %struct.ddf_header* %829, %struct.ddf_header** %831, align 8
  %832 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %833 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %832, i32 0, i32 5
  %834 = load %struct.ddf_header*, %struct.ddf_header** %833, align 8
  %835 = load i8*, i8** %10, align 8
  %836 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %837 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %838 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %837, i32 0, i32 8
  %839 = load i32, i32* %838, align 8
  %840 = call i32 @GET32(%struct.ddf_meta* %836, i32 %839)
  %841 = load i32, i32* %17, align 4
  %842 = mul nsw i32 %840, %841
  %843 = call i32 @memcpy(%struct.ddf_header* %834, i8* %835, i32 %842)
  %844 = load i8*, i8** %10, align 8
  %845 = call i32 @g_free(i8* %844)
  %846 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %847 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vdr, align 8
  %848 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %847, i32 0, i32 0
  %849 = load i32, i32* %848, align 4
  %850 = call i32 @GET32(%struct.ddf_meta* %846, i32 %849)
  %851 = load i32, i32* @DDF_VD_RECORD_SIGNATURE, align 4
  %852 = icmp ne i32 %850, %851
  br i1 %852, label %853, label %854

853:                                              ; preds = %818
  br label %283

854:                                              ; preds = %818
  %855 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %856 = load i32, i32* %13, align 4
  %857 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %858 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %859 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %858, i32 0, i32 7
  %860 = load i32, i32* %859, align 4
  %861 = call i32 @GET32(%struct.ddf_meta* %857, i32 %860)
  %862 = add nsw i32 %856, %861
  %863 = load i32, i32* %17, align 4
  %864 = mul nsw i32 %862, %863
  %865 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %866 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %867 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %866, i32 0, i32 6
  %868 = load i32, i32* %867, align 8
  %869 = call i32 @GET32(%struct.ddf_meta* %865, i32 %868)
  %870 = load i32, i32* %17, align 4
  %871 = mul nsw i32 %869, %870
  %872 = call i8* @g_read_data(%struct.g_consumer* %855, i32 %864, i32 %871, i32* %14)
  store i8* %872, i8** %10, align 8
  %873 = load i8*, i8** %10, align 8
  %874 = icmp eq i8* %873, null
  br i1 %874, label %875, label %876

875:                                              ; preds = %854
  br label %184

876:                                              ; preds = %854
  %877 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %878 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %879 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %878, i32 0, i32 6
  %880 = load i32, i32* %879, align 8
  %881 = call i32 @GET32(%struct.ddf_meta* %877, i32 %880)
  %882 = load i32, i32* %17, align 4
  %883 = mul nsw i32 %881, %882
  %884 = load i32, i32* @M_MD_DDF, align 4
  %885 = load i32, i32* @M_WAITOK, align 4
  %886 = call i8* @malloc(i32 %883, i32 %884, i32 %885)
  %887 = bitcast i8* %886 to %struct.ddf_header*
  %888 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %889 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %888, i32 0, i32 4
  store %struct.ddf_header* %887, %struct.ddf_header** %889, align 8
  %890 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %891 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %890, i32 0, i32 4
  %892 = load %struct.ddf_header*, %struct.ddf_header** %891, align 8
  %893 = load i8*, i8** %10, align 8
  %894 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %895 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %896 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %895, i32 0, i32 6
  %897 = load i32, i32* %896, align 8
  %898 = call i32 @GET32(%struct.ddf_meta* %894, i32 %897)
  %899 = load i32, i32* %17, align 4
  %900 = mul nsw i32 %898, %899
  %901 = call i32 @memcpy(%struct.ddf_header* %892, i8* %893, i32 %900)
  %902 = load i8*, i8** %10, align 8
  %903 = call i32 @g_free(i8* %902)
  %904 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %905 = load i32, i32* %13, align 4
  %906 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %907 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %908 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %907, i32 0, i32 5
  %909 = load i32, i32* %908, align 4
  %910 = call i32 @GET32(%struct.ddf_meta* %906, i32 %909)
  %911 = add nsw i32 %905, %910
  %912 = load i32, i32* %17, align 4
  %913 = mul nsw i32 %911, %912
  %914 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %915 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %916 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %915, i32 0, i32 4
  %917 = load i32, i32* %916, align 8
  %918 = call i32 @GET32(%struct.ddf_meta* %914, i32 %917)
  %919 = load i32, i32* %17, align 4
  %920 = mul nsw i32 %918, %919
  %921 = call i8* @g_read_data(%struct.g_consumer* %904, i32 %913, i32 %920, i32* %14)
  store i8* %921, i8** %10, align 8
  %922 = load i8*, i8** %10, align 8
  %923 = icmp eq i8* %922, null
  br i1 %923, label %924, label %925

924:                                              ; preds = %876
  br label %184

925:                                              ; preds = %876
  %926 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %927 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %928 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %927, i32 0, i32 4
  %929 = load i32, i32* %928, align 8
  %930 = call i32 @GET32(%struct.ddf_meta* %926, i32 %929)
  %931 = load i32, i32* %17, align 4
  %932 = mul nsw i32 %930, %931
  %933 = load i32, i32* @M_MD_DDF, align 4
  %934 = load i32, i32* @M_WAITOK, align 4
  %935 = call i8* @malloc(i32 %932, i32 %933, i32 %934)
  %936 = bitcast i8* %935 to %struct.ddf_header*
  %937 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %938 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %937, i32 0, i32 3
  store %struct.ddf_header* %936, %struct.ddf_header** %938, align 8
  %939 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %940 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %939, i32 0, i32 3
  %941 = load %struct.ddf_header*, %struct.ddf_header** %940, align 8
  %942 = load i8*, i8** %10, align 8
  %943 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %944 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %945 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %944, i32 0, i32 4
  %946 = load i32, i32* %945, align 8
  %947 = call i32 @GET32(%struct.ddf_meta* %943, i32 %946)
  %948 = load i32, i32* %17, align 4
  %949 = mul nsw i32 %947, %948
  %950 = call i32 @memcpy(%struct.ddf_header* %941, i8* %942, i32 %949)
  %951 = load i8*, i8** %10, align 8
  %952 = call i32 @g_free(i8* %951)
  %953 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %954 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pdd, align 8
  %955 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %954, i32 0, i32 1
  %956 = load i32, i32* %955, align 4
  %957 = call i32 @GET32(%struct.ddf_meta* %953, i32 %956)
  %958 = load i32, i32* @DDF_PDD_SIGNATURE, align 4
  %959 = icmp ne i32 %957, %958
  br i1 %959, label %960, label %961

960:                                              ; preds = %925
  br label %283

961:                                              ; preds = %925
  %962 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %963 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %964 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pdd, align 8
  %965 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %964, i32 0, i32 0
  %966 = load i32, i32* %965, align 4
  %967 = call i32 @GET32(%struct.ddf_meta* %963, i32 %966)
  %968 = call i32 @ddf_meta_find_pd(%struct.ddf_meta* %962, i32* null, i32 %967)
  store i32 %968, i32* %16, align 4
  %969 = load i32, i32* %16, align 4
  %970 = icmp slt i32 %969, 0
  br i1 %970, label %971, label %972

971:                                              ; preds = %961
  br label %283

972:                                              ; preds = %961
  %973 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %974 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %975 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %974, i32 0, i32 3
  %976 = load i32, i32* %975, align 4
  %977 = call i32 @GET32(%struct.ddf_meta* %973, i32 %976)
  %978 = icmp ne i32 %977, -1
  br i1 %978, label %979, label %1045

979:                                              ; preds = %972
  %980 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %981 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %982 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %981, i32 0, i32 2
  %983 = load i32, i32* %982, align 8
  %984 = call i32 @GET32(%struct.ddf_meta* %980, i32 %983)
  %985 = icmp ne i32 %984, 0
  br i1 %985, label %986, label %1045

986:                                              ; preds = %979
  %987 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %988 = load i32, i32* %13, align 4
  %989 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %990 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %991 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %990, i32 0, i32 3
  %992 = load i32, i32* %991, align 4
  %993 = call i32 @GET32(%struct.ddf_meta* %989, i32 %992)
  %994 = add nsw i32 %988, %993
  %995 = load i32, i32* %17, align 4
  %996 = mul nsw i32 %994, %995
  %997 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %998 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %999 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %998, i32 0, i32 2
  %1000 = load i32, i32* %999, align 8
  %1001 = call i32 @GET32(%struct.ddf_meta* %997, i32 %1000)
  %1002 = load i32, i32* %17, align 4
  %1003 = mul nsw i32 %1001, %1002
  %1004 = call i8* @g_read_data(%struct.g_consumer* %987, i32 %996, i32 %1003, i32* %14)
  store i8* %1004, i8** %10, align 8
  %1005 = load i8*, i8** %10, align 8
  %1006 = icmp eq i8* %1005, null
  br i1 %1006, label %1007, label %1008

1007:                                             ; preds = %986
  br label %184

1008:                                             ; preds = %986
  %1009 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %1010 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %1011 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %1010, i32 0, i32 2
  %1012 = load i32, i32* %1011, align 8
  %1013 = call i32 @GET32(%struct.ddf_meta* %1009, i32 %1012)
  %1014 = load i32, i32* %17, align 4
  %1015 = mul nsw i32 %1013, %1014
  %1016 = load i32, i32* @M_MD_DDF, align 4
  %1017 = load i32, i32* @M_WAITOK, align 4
  %1018 = call i8* @malloc(i32 %1015, i32 %1016, i32 %1017)
  %1019 = bitcast i8* %1018 to %struct.ddf_header*
  %1020 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %1021 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %1020, i32 0, i32 2
  store %struct.ddf_header* %1019, %struct.ddf_header** %1021, align 8
  %1022 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %1023 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %1022, i32 0, i32 2
  %1024 = load %struct.ddf_header*, %struct.ddf_header** %1023, align 8
  %1025 = load i8*, i8** %10, align 8
  %1026 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %1027 = load %struct.ddf_header*, %struct.ddf_header** %8, align 8
  %1028 = getelementptr inbounds %struct.ddf_header, %struct.ddf_header* %1027, i32 0, i32 2
  %1029 = load i32, i32* %1028, align 8
  %1030 = call i32 @GET32(%struct.ddf_meta* %1026, i32 %1029)
  %1031 = load i32, i32* %17, align 4
  %1032 = mul nsw i32 %1030, %1031
  %1033 = call i32 @memcpy(%struct.ddf_header* %1024, i8* %1025, i32 %1032)
  %1034 = load i8*, i8** %10, align 8
  %1035 = call i32 @g_free(i8* %1034)
  %1036 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %1037 = load %struct.TYPE_14__*, %struct.TYPE_14__** @bbm, align 8
  %1038 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1037, i32 0, i32 0
  %1039 = load i32, i32* %1038, align 4
  %1040 = call i32 @GET32(%struct.ddf_meta* %1036, i32 %1039)
  %1041 = load i32, i32* @DDF_BBML_SIGNATURE, align 4
  %1042 = icmp ne i32 %1040, %1041
  br i1 %1042, label %1043, label %1044

1043:                                             ; preds = %1008
  br label %283

1044:                                             ; preds = %1008
  br label %1045

1045:                                             ; preds = %1044, %979, %972
  br label %1046

1046:                                             ; preds = %1045, %301, %203, %162, %142, %125, %83, %68
  %1047 = load i8*, i8** %9, align 8
  %1048 = call i32 @g_free(i8* %1047)
  %1049 = load i32, i32* %14, align 4
  %1050 = icmp ne i32 %1049, 0
  br i1 %1050, label %1051, label %1054

1051:                                             ; preds = %1046
  %1052 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %1053 = call i32 @ddf_meta_free(%struct.ddf_meta* %1052)
  br label %1054

1054:                                             ; preds = %1051, %1046
  %1055 = load i32, i32* %14, align 4
  store i32 %1055, i32* %3, align 4
  br label %1056

1056:                                             ; preds = %1054, %39
  %1057 = load i32, i32* %3, align 4
  ret i32 %1057
}

declare dso_local i32 @ddf_meta_free(%struct.ddf_meta*) #1

declare dso_local i8* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i8*, ...) #1

declare dso_local i64 @be32dec(i64*) #1

declare dso_local i64 @le32dec(i64*) #1

declare dso_local i64 @GET64(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET32(%struct.ddf_meta*, i32) #1

declare dso_local i32 @SET32(%struct.ddf_meta*, i32, i32) #1

declare dso_local i64 @crc32(%struct.ddf_header*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ddf_header*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @GET16(%struct.ddf_meta*, i32) #1

declare dso_local i32 @SET16(%struct.ddf_meta*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @isff(i32, i32) #1

declare dso_local i32 @SET64(%struct.ddf_meta*, i32, i64) #1

declare dso_local i32 @ddf_meta_find_pd(%struct.ddf_meta*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
