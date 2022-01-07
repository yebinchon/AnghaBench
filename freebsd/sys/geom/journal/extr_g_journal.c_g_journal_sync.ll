; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i64, i64, i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.g_consumer* }
%struct.TYPE_5__ = type { i64, %struct.bio* }
%struct.bio = type { %struct.bio*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.g_consumer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.g_journal_record_header = type { i32, i32, %struct.g_journal_entry* }
%struct.g_journal_entry = type { i64, i64, i32 }
%struct.g_journal_header = type { i64, i64 }

@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Looking for termination at %jd.\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Error while reading journal header from %s.\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot decode journal header from %s.\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Journal ID mismatch at %jd (0x%08x != 0x%08x).\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Error while reading record header from %s.\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Not a record header at %jd (error=%d).\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Not a journal header at %jd (error=%d).\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Found termination at %jd (id=0x%08x).\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Adding request.\00", align 1
@GJF_DEVICE_CHECKSUM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Insert entry: %jd %jd.\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Cannot read data at %jd.\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"MD5 hash mismatch at %jd!\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Journal on %s is broken/corrupted. Initializing.\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Journal %s consistent.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_sync(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.g_journal_record_header, align 8
  %4 = alloca %struct.g_journal_entry*, align 8
  %5 = alloca %struct.g_journal_header, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [16 x i32], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  store i32 0, i32* %17, align 4
  store %struct.bio* null, %struct.bio** %8, align 8
  %20 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %21 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %20, i32 0, i32 7
  %22 = load %struct.g_consumer*, %struct.g_consumer** %21, align 8
  store %struct.g_consumer* %22, %struct.g_consumer** %6, align 8
  %23 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %23, %struct.bio** %7, align 8
  %24 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %25 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call i32* @gj_malloc(i64 %28, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %32 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %35 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  store i64 %33, i64* %10, align 8
  store i64 %33, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %41 = load %struct.bio*, %struct.bio** %7, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @g_journal_sync_read(%struct.g_consumer* %40, %struct.bio* %41, i64 %42, i32* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %1
  %48 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %49 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %312

54:                                               ; preds = %1
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @g_journal_header_decode(i32* %55, %struct.g_journal_header* %5)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %61 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %312

66:                                               ; preds = %54
  %67 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %68 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %14, align 8
  %70 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %5, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %73 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i64, i64* %11, align 8
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %5, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %14, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81, i32 %83)
  br label %312

85:                                               ; preds = %66
  %86 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %87 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %5, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %96 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  store i64 %94, i64* %14, align 8
  br label %97

97:                                               ; preds = %310, %193, %85
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %100 = call i32 @GJ_VALIDATE_OFFSET(i64 %98, %struct.g_journal_softc* %99)
  %101 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %102 = load %struct.bio*, %struct.bio** %7, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @g_journal_sync_read(%struct.g_consumer* %101, %struct.bio* %102, i64 %103, i32* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %97
  %109 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %110 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %311

115:                                              ; preds = %97
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @g_journal_record_header_decode(i32* %116, %struct.g_journal_record_header* %3)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %201

120:                                              ; preds = %115
  %121 = load i64, i64* %11, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* %16, align 4
  %124 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @g_journal_header_decode(i32* %125, %struct.g_journal_header* %5)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %120
  %130 = load i64, i64* %11, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* %16, align 4
  %133 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load i32, i32* @ENOENT, align 4
  store i32 %134, i32* %16, align 4
  br label %311

135:                                              ; preds = %120
  %136 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %5, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load i64, i64* %11, align 8
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %5, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i64, i64* %14, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32 %145, i32 %147)
  %149 = load i32, i32* @ENOENT, align 4
  store i32 %149, i32* %16, align 4
  br label %311

150:                                              ; preds = %135
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  %153 = load i64, i64* %11, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i64, i64* %14, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %154, i32 %156)
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %160 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %164 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %162, %167
  %169 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %170 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %173 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = getelementptr inbounds %struct.g_journal_header, %struct.g_journal_header* %5, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %177 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  store i64 %175, i64* %14, align 8
  br label %178

178:                                              ; preds = %181, %150
  %179 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %179, %struct.bio** %9, align 8
  %180 = icmp ne %struct.bio* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load %struct.bio*, %struct.bio** %9, align 8
  %183 = getelementptr inbounds %struct.bio, %struct.bio* %182, i32 0, i32 0
  %184 = load %struct.bio*, %struct.bio** %183, align 8
  store %struct.bio* %184, %struct.bio** %8, align 8
  %185 = load %struct.bio*, %struct.bio** %9, align 8
  %186 = call i32 @GJ_LOGREQ(i32 3, %struct.bio* %185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %187 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %188 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load %struct.bio*, %struct.bio** %9, align 8
  %191 = load i32, i32* @M_WAITOK, align 4
  %192 = call i32 @g_journal_insert_bio(%struct.bio** %189, %struct.bio* %190, i32 %191)
  br label %178

193:                                              ; preds = %178
  %194 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %195 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %194, i32 0, i32 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %11, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %11, align 8
  br label %97

201:                                              ; preds = %115
  %202 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %203 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %11, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %11, align 8
  %209 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %210 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @GJF_DEVICE_CHECKSUM, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %201
  %216 = call i32 @MD5Init(i32* %15)
  br label %217

217:                                              ; preds = %215, %201
  store i32 0, i32* %18, align 4
  br label %218

218:                                              ; preds = %287, %217
  %219 = load i32, i32* %18, align 4
  %220 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %3, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %290

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %3, i32 0, i32 2
  %225 = load %struct.g_journal_entry*, %struct.g_journal_entry** %224, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %225, i64 %227
  store %struct.g_journal_entry* %228, %struct.g_journal_entry** %4, align 8
  %229 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %230 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %234 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %232, i32 %236)
  %238 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %239 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %242 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %245 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %243, %246
  %248 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %249 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @M_WAITOK, align 4
  %252 = call i32 @g_journal_insert(%struct.bio** %8, i64 %240, i64 %247, i32 %250, i32* null, i32 %251)
  %253 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %254 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @GJF_DEVICE_CHECKSUM, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %281

259:                                              ; preds = %223
  %260 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %261 = load i64, i64* %11, align 8
  %262 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %263 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32* @g_read_data(%struct.g_consumer* %260, i64 %261, i64 %264, i32* null)
  store i32* %265, i32** %19, align 8
  %266 = load i32*, i32** %19, align 8
  %267 = icmp eq i32* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %259
  %269 = load i64, i64* %11, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %270)
  br label %280

272:                                              ; preds = %259
  %273 = load i32*, i32** %19, align 8
  %274 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %275 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @MD5Update(i32* %15, i32* %273, i64 %276)
  %278 = load i32*, i32** %19, align 8
  %279 = call i32 @g_free(i32* %278)
  br label %280

280:                                              ; preds = %272, %268
  br label %281

281:                                              ; preds = %280, %223
  %282 = load %struct.g_journal_entry*, %struct.g_journal_entry** %4, align 8
  %283 = getelementptr inbounds %struct.g_journal_entry, %struct.g_journal_entry* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* %11, align 8
  %286 = add nsw i64 %285, %284
  store i64 %286, i64* %11, align 8
  br label %287

287:                                              ; preds = %281
  %288 = load i32, i32* %18, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %18, align 4
  br label %218

290:                                              ; preds = %218
  %291 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %292 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @GJF_DEVICE_CHECKSUM, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %290
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %299 = call i32 @MD5Final(i32* %298, i32* %15)
  %300 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %301 = getelementptr inbounds %struct.g_journal_record_header, %struct.g_journal_record_header* %3, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @bcmp(i32* %300, i32 %302, i32 4)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %297
  %306 = load i64, i64* %11, align 8
  %307 = trunc i64 %306 to i32
  %308 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %305, %297
  br label %310

310:                                              ; preds = %309, %290
  br label %97

311:                                              ; preds = %140, %129, %108
  br label %312

312:                                              ; preds = %311, %76, %59, %47
  %313 = load %struct.bio*, %struct.bio** %7, align 8
  %314 = getelementptr inbounds %struct.bio, %struct.bio* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %317 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %316, i32 0, i32 0
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @gj_free(i32 %315, i64 %320)
  %322 = load %struct.bio*, %struct.bio** %7, align 8
  %323 = call i32 @g_destroy_bio(%struct.bio* %322)
  br label %324

324:                                              ; preds = %327, %312
  %325 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %325, %struct.bio** %9, align 8
  %326 = icmp ne %struct.bio* %325, null
  br i1 %326, label %327, label %333

327:                                              ; preds = %324
  %328 = load %struct.bio*, %struct.bio** %9, align 8
  %329 = getelementptr inbounds %struct.bio, %struct.bio* %328, i32 0, i32 0
  %330 = load %struct.bio*, %struct.bio** %329, align 8
  store %struct.bio* %330, %struct.bio** %8, align 8
  %331 = load %struct.bio*, %struct.bio** %9, align 8
  %332 = call i32 @g_destroy_bio(%struct.bio* %331)
  br label %324

333:                                              ; preds = %324
  %334 = load i32, i32* %17, align 4
  %335 = icmp slt i32 %334, 1
  br i1 %335, label %336, label %364

336:                                              ; preds = %333
  %337 = load i64, i64* %10, align 8
  %338 = icmp sgt i64 %337, 0
  br i1 %338, label %339, label %364

339:                                              ; preds = %336
  %340 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %341 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %342)
  br label %344

344:                                              ; preds = %350, %339
  %345 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %346 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %345, i32 0, i32 5
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 1
  %348 = load %struct.bio*, %struct.bio** %347, align 8
  store %struct.bio* %348, %struct.bio** %9, align 8
  %349 = icmp ne %struct.bio* %348, null
  br i1 %349, label %350, label %359

350:                                              ; preds = %344
  %351 = load %struct.bio*, %struct.bio** %9, align 8
  %352 = getelementptr inbounds %struct.bio, %struct.bio* %351, i32 0, i32 0
  %353 = load %struct.bio*, %struct.bio** %352, align 8
  %354 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %355 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %354, i32 0, i32 5
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 1
  store %struct.bio* %353, %struct.bio** %356, align 8
  %357 = load %struct.bio*, %struct.bio** %9, align 8
  %358 = call i32 @g_destroy_bio(%struct.bio* %357)
  br label %344

359:                                              ; preds = %344
  %360 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %361 = call i32 @g_journal_initialize(%struct.g_journal_softc* %360)
  %362 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %363 = call i32 @g_journal_mark_as_dirty(%struct.g_journal_softc* %362)
  br label %371

364:                                              ; preds = %336, %333
  %365 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %366 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = call i32 (i32, i8*, i32, ...) @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %367)
  %369 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %370 = call i32 @g_journal_copy_start(%struct.g_journal_softc* %369)
  br label %371

371:                                              ; preds = %364, %359
  ret void
}

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32* @gj_malloc(i64, i32) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_journal_sync_read(%struct.g_consumer*, %struct.bio*, i64, i32*) #1

declare dso_local i32 @g_journal_header_decode(i32*, %struct.g_journal_header*) #1

declare dso_local i32 @GJ_VALIDATE_OFFSET(i64, %struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_record_header_decode(i32*, %struct.g_journal_record_header*) #1

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @g_journal_insert_bio(%struct.bio**, %struct.bio*, i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @g_journal_insert(%struct.bio**, i64, i64, i32, i32*, i32) #1

declare dso_local i32* @g_read_data(%struct.g_consumer*, i64, i64, i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i64) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i64 @bcmp(i32*, i32, i32) #1

declare dso_local i32 @gj_free(i32, i64) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_journal_initialize(%struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_mark_as_dirty(%struct.g_journal_softc*) #1

declare dso_local i32 @g_journal_copy_start(%struct.g_journal_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
