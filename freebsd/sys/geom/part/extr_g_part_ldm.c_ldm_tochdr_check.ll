; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_tochdr_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_tochdr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldm_db = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64*, i64, i64 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i64, i32 }
%struct.ldm_tochdr = type { i64, i64 }

@LDM_TH_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: failed to read TOC header at LBA %ju\00", align 1
@LDM_TH_SIGN = common dso_local global i32 0, align 4
@LDM_TH_NAME1_OFF = common dso_local global i32 0, align 4
@LDM_TH_NAME1 = common dso_local global i32 0, align 4
@LDM_TH_NAME2_OFF = common dso_local global i32 0, align 4
@LDM_TH_NAME2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: failed to parse TOC header at LBA %ju\00", align 1
@LDM_TH_CONF_OFF = common dso_local global i32 0, align 4
@LDM_TH_LOG_OFF = common dso_local global i32 0, align 4
@LDM_TH_CONFSIZE_OFF = common dso_local global i32 0, align 4
@LDM_TH_LOGSIZE_OFF = common dso_local global i32 0, align 4
@LDM_DB_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: invalid values in the TOC header at LBA %ju\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: valid LDM TOC header not found.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldm_db*, %struct.g_consumer*)* @ldm_tochdr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_tochdr_check(%struct.ldm_db* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldm_db*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.ldm_tochdr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ldm_db* %0, %struct.ldm_db** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %15 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.g_provider*, %struct.g_provider** %16, align 8
  store %struct.g_provider* %17, %struct.g_provider** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %174, %2
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @LDM_TH_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %177

22:                                               ; preds = %18
  %23 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %24 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %28 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %26, %34
  store i64 %35, i64* %8, align 8
  %36 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %39 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = mul nsw i64 %37, %40
  %42 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @g_read_data(%struct.g_consumer* %36, i64 %41, i64 %44, i32* %11)
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %22
  %49 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %50 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53)
  br label %174

55:                                               ; preds = %22
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* @LDM_TH_SIGN, align 4
  %58 = load i32, i32* @LDM_TH_SIGN, align 4
  %59 = call i32 @strlen(i32 %58)
  %60 = call i64 @memcmp(i32* %56, i32 %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %55
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* @LDM_TH_NAME1_OFF, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* @LDM_TH_NAME1, align 4
  %68 = load i32, i32* @LDM_TH_NAME1, align 4
  %69 = call i32 @strlen(i32 %68)
  %70 = call i64 @memcmp(i32* %66, i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %62
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* @LDM_TH_NAME2_OFF, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* @LDM_TH_NAME2, align 4
  %78 = load i32, i32* @LDM_TH_NAME2, align 4
  %79 = call i32 @strlen(i32 %78)
  %80 = call i64 @memcmp(i32* %76, i32 %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %72, %62, %55
  %83 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %84 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %87)
  %89 = load i32*, i32** %14, align 8
  %90 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %91 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @LDM_DUMP(i32* %89, i64 %92)
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @g_free(i32* %94)
  br label %174

96:                                               ; preds = %72
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* @LDM_TH_CONF_OFF, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i8* @be64dec(i32* %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = getelementptr inbounds %struct.ldm_tochdr, %struct.ldm_tochdr* %7, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* @LDM_TH_LOG_OFF, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i8* @be64dec(i32* %107)
  %109 = ptrtoint i8* %108 to i64
  %110 = getelementptr inbounds %struct.ldm_tochdr, %struct.ldm_tochdr* %7, i32 0, i32 1
  store i64 %109, i64* %110, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* @LDM_TH_CONFSIZE_OFF, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i8* @be64dec(i32* %114)
  %116 = ptrtoint i8* %115 to i64
  store i64 %116, i64* %9, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* @LDM_TH_LOGSIZE_OFF, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i8* @be64dec(i32* %120)
  %122 = ptrtoint i8* %121 to i64
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %125 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %123, %127
  br i1 %128, label %150, label %129

129:                                              ; preds = %96
  %130 = getelementptr inbounds %struct.ldm_tochdr, %struct.ldm_tochdr* %7, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = add nsw i64 %131, %132
  %134 = load i64, i64* @LDM_DB_SIZE, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %150, label %136

136:                                              ; preds = %129
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %139 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %137, %141
  br i1 %142, label %150, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.ldm_tochdr, %struct.ldm_tochdr* %7, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add nsw i64 %145, %146
  %148 = load i64, i64* @LDM_DB_SIZE, align 8
  %149 = icmp sge i64 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %143, %136, %129, %96
  %151 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %152 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %8, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %155)
  %157 = load i32*, i32** %14, align 8
  %158 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %159 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @LDM_DUMP(i32* %157, i64 %160)
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @g_free(i32* %162)
  br label %174

164:                                              ; preds = %143
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @g_free(i32* %165)
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %171 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %170, i32 0, i32 0
  %172 = call i32 @memcpy(i32* %171, %struct.ldm_tochdr* %7, i32 16)
  br label %173

173:                                              ; preds = %169, %164
  store i32 1, i32* %12, align 4
  br label %174

174:                                              ; preds = %173, %150, %82, %48
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %18

177:                                              ; preds = %18
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %182 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @ENXIO, align 4
  store i32 %185, i32* %3, align 4
  br label %187

186:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %186, %180
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32* @g_read_data(%struct.g_consumer*, i64, i64, i32*) #1

declare dso_local i32 @LDM_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @LDM_DUMP(i32*, i64) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i8* @be64dec(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.ldm_tochdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
