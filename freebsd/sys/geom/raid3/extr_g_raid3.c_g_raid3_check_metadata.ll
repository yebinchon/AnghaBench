; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_check_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_check_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.g_provider = type { i32, i32, i32 }
%struct.g_raid3_metadata = type { i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid disk %s number (no=%u), skipping.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_NODISK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Disk %s (no=%u) already exists, skipping.\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Invalid '%s' field on disk %s (device %s), skipping.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"md_all\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"Invalid metadata (mediasize %% sectorsize != 0) on disk %s (device %s), skipping.\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"md_mediasize\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Invalid size of disk %s (device %s), skipping.\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"md_sectorsize\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Invalid sector size of disk %s (device %s), skipping.\00", align 1
@G_RAID3_DEVICE_FLAG_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"Invalid device flags on disk %s (device %s), skipping.\00", align 1
@G_RAID3_DEVICE_FLAG_VERIFY = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_ROUND_ROBIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [74 x i8] c"Both VERIFY and ROUND-ROBIN flags exist on disk %s (device %s), skipping.\00", align 1
@G_RAID3_DISK_FLAG_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [53 x i8] c"Invalid disk flags on disk %s (device %s), skipping.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid3_softc*, %struct.g_provider*, %struct.g_raid3_metadata*)* @g_raid3_check_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_check_metadata(%struct.g_raid3_softc* %0, %struct.g_provider* %1, %struct.g_raid3_metadata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid3_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_raid3_metadata*, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %5, align 8
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store %struct.g_raid3_metadata* %2, %struct.g_raid3_metadata** %7, align 8
  %8 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %9 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %12 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %22 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %20, i64 %23)
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %278

26:                                               ; preds = %3
  %27 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %28 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %31 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @G_RAID3_DISK_STATE_NODISK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %26
  %39 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %40 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %45 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %43, i64 %46)
  %48 = load i32, i32* @EEXIST, align 4
  store i32 %48, i32* %4, align 4
  br label %278

49:                                               ; preds = %26
  %50 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %51 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %54 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %59 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %63 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %61, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %4, align 4
  br label %278

67:                                               ; preds = %49
  %68 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %69 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %72 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = srem i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %78 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %83 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i8* %81, i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %4, align 4
  br label %278

87:                                               ; preds = %67
  %88 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %89 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %92 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %97 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %101 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %99, i64 %102)
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %4, align 4
  br label %278

105:                                              ; preds = %87
  %106 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %107 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %111 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub i64 %112, 1
  %114 = urem i64 %109, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %105
  %117 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %118 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %122 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %120, i64 %123)
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %4, align 4
  br label %278

126:                                              ; preds = %105
  %127 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %128 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %132 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 %133, 1
  %135 = udiv i64 %130, %134
  %136 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %137 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp ugt i64 %135, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %126
  %142 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %143 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %148 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %146, i64 %149)
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %4, align 4
  br label %278

152:                                              ; preds = %126
  %153 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %154 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %157 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sdiv i32 %155, %158
  %160 = sext i32 %159 to i64
  %161 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %162 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %163, 1
  %165 = icmp ult i64 %160, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %152
  %167 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %168 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %172 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %170, i64 %173)
  %175 = load i32, i32* @EINVAL, align 4
  store i32 %175, i32* %4, align 4
  br label %278

176:                                              ; preds = %152
  %177 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %178 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %181 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %179, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %176
  %185 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %186 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %190 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %188, i64 %191)
  %193 = load i32, i32* @EINVAL, align 4
  store i32 %193, i32* %4, align 4
  br label %278

194:                                              ; preds = %176
  %195 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %196 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %199 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = srem i32 %197, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %194
  %204 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %205 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = inttoptr i64 %207 to i8*
  %209 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %210 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %208, i64 %211)
  %213 = load i32, i32* @EINVAL, align 4
  store i32 %213, i32* %4, align 4
  br label %278

214:                                              ; preds = %194
  %215 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %216 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @G_RAID3_DEVICE_FLAG_MASK, align 4
  %219 = xor i32 %218, -1
  %220 = and i32 %217, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %214
  %223 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %224 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %229 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* %227, i64 %230)
  %232 = load i32, i32* @EINVAL, align 4
  store i32 %232, i32* %4, align 4
  br label %278

233:                                              ; preds = %214
  %234 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %235 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @G_RAID3_DEVICE_FLAG_VERIFY, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %258

240:                                              ; preds = %233
  %241 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %242 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @G_RAID3_DEVICE_FLAG_ROUND_ROBIN, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %240
  %248 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %249 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = inttoptr i64 %251 to i8*
  %253 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %254 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0), i8* %252, i64 %255)
  %257 = load i32, i32* @EINVAL, align 4
  store i32 %257, i32* %4, align 4
  br label %278

258:                                              ; preds = %240, %233
  %259 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %7, align 8
  %260 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @G_RAID3_DISK_FLAG_MASK, align 4
  %263 = xor i32 %262, -1
  %264 = and i32 %261, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %258
  %267 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %268 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = inttoptr i64 %270 to i8*
  %272 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %273 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = call i32 (i32, i8*, i8*, i64, ...) @G_RAID3_DEBUG(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %271, i64 %274)
  %276 = load i32, i32* @EINVAL, align 4
  store i32 %276, i32* %4, align 4
  br label %278

277:                                              ; preds = %258
  store i32 0, i32* %4, align 4
  br label %278

278:                                              ; preds = %277, %266, %247, %222, %203, %184, %166, %141, %116, %95, %76, %57, %38, %15
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
