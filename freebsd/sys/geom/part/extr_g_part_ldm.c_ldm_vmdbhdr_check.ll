; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_vmdbhdr_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_vmdbhdr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldm_db = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.uuid = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s: failed to read VMDB header at LBA %ju\00", align 1
@LDM_VMDB_SIGN = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: failed to parse VMDB header at LBA %ju\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@LDM_DB_VERSION_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: unsupported VMDB version %u.%u\00", align 1
@LDM_DB_STATUS_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: VMDB is not in a consistent state\00", align 1
@LDM_DB_LASTSEQ_OFF = common dso_local global i32 0, align 4
@LDM_DB_SIZE_OFF = common dso_local global i32 0, align 4
@LDM_DB_DGGUID_OFF = common dso_local global i32 0, align 4
@LDM_DB_DGNAME_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: invalid values in the VMDB header\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldm_db*, %struct.g_consumer*)* @ldm_vmdbhdr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_vmdbhdr_check(%struct.ldm_db* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldm_db*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.uuid, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uuid*, align 8
  store %struct.ldm_db* %0, %struct.ldm_db** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %12 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %13 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %12, i32 0, i32 0
  %14 = load %struct.g_provider*, %struct.g_provider** %13, align 8
  store %struct.g_provider* %14, %struct.g_provider** %6, align 8
  %15 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %16 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %20 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.uuid* @g_read_data(%struct.g_consumer* %24, i32 %29, i32 %32, i32* %10)
  store %struct.uuid* %33, %struct.uuid** %11, align 8
  %34 = load %struct.uuid*, %struct.uuid** %11, align 8
  %35 = icmp eq %struct.uuid* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %189

43:                                               ; preds = %2
  %44 = load %struct.uuid*, %struct.uuid** %11, align 8
  %45 = load i32*, i32** @LDM_VMDB_SIGN, align 8
  %46 = load i32*, i32** @LDM_VMDB_SIGN, align 8
  %47 = call i32 @strlen(i32* %46)
  %48 = call i64 @memcmp(%struct.uuid* %44, i32* %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.uuid*, %struct.uuid** %11, align 8
  %52 = call i32 @g_free(%struct.uuid* %51)
  %53 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %54 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %3, align 4
  br label %189

59:                                               ; preds = %43
  %60 = load %struct.uuid*, %struct.uuid** %11, align 8
  %61 = load i32, i32* @LDM_DB_VERSION_OFF, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.uuid, %struct.uuid* %60, i64 %62
  %64 = call i8* @be32dec(%struct.uuid* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 262154
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load %struct.uuid*, %struct.uuid** %11, align 8
  %70 = call i32 @g_free(%struct.uuid* %69)
  %71 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %72 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 16
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 65535
  %78 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %75, i32 %77)
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %3, align 4
  br label %189

80:                                               ; preds = %59
  %81 = load %struct.uuid*, %struct.uuid** %11, align 8
  %82 = load i32, i32* @LDM_DB_STATUS_OFF, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.uuid, %struct.uuid* %81, i64 %83
  %85 = call i32 @be16dec(%struct.uuid* %84)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.uuid*, %struct.uuid** %11, align 8
  %89 = call i32 @g_free(%struct.uuid* %88)
  %90 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %91 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %3, align 4
  br label %189

95:                                               ; preds = %80
  %96 = load %struct.uuid*, %struct.uuid** %11, align 8
  %97 = load i32, i32* @LDM_DB_LASTSEQ_OFF, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.uuid, %struct.uuid* %96, i64 %98
  %100 = call i8* @be32dec(%struct.uuid* %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %103 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load %struct.uuid*, %struct.uuid** %11, align 8
  %106 = load i32, i32* @LDM_DB_SIZE_OFF, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.uuid, %struct.uuid* %105, i64 %107
  %109 = call i8* @be32dec(%struct.uuid* %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %112 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.uuid*, %struct.uuid** %11, align 8
  %115 = load i32, i32* @LDM_DB_DGGUID_OFF, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.uuid, %struct.uuid* %114, i64 %116
  %118 = call i32 @parse_uuid(%struct.uuid* %117, %struct.uuid* %7)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %173, label %121

121:                                              ; preds = %95
  %122 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %123 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %173, label %127

127:                                              ; preds = %121
  %128 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %129 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %132 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = srem i32 %130, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %173, label %137

137:                                              ; preds = %127
  %138 = load %struct.uuid*, %struct.uuid** %11, align 8
  %139 = load i32, i32* @LDM_DB_DGNAME_OFF, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.uuid, %struct.uuid* %138, i64 %140
  %142 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %143 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @strncmp(%struct.uuid* %141, i32 %145, i32 31)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %173, label %148

148:                                              ; preds = %137
  %149 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %150 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = call i64 @memcmp(%struct.uuid* %7, i32* %151, i32 4)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %148
  %155 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %156 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %160 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %158, %162
  %164 = load %struct.ldm_db*, %struct.ldm_db** %4, align 8
  %165 = getelementptr inbounds %struct.ldm_db, %struct.ldm_db* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %169 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %167, %170
  %172 = icmp sgt i32 %163, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %154, %148, %137, %127, %121, %95
  %174 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %175 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, i32, ...) @LDM_DEBUG(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = load %struct.uuid*, %struct.uuid** %11, align 8
  %179 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %180 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @LDM_DUMP(%struct.uuid* %178, i32 %181)
  %183 = load %struct.uuid*, %struct.uuid** %11, align 8
  %184 = call i32 @g_free(%struct.uuid* %183)
  %185 = load i32, i32* @EINVAL, align 4
  store i32 %185, i32* %3, align 4
  br label %189

186:                                              ; preds = %154
  %187 = load %struct.uuid*, %struct.uuid** %11, align 8
  %188 = call i32 @g_free(%struct.uuid* %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %186, %173, %87, %68, %50, %36
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.uuid* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i32 @LDM_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i64 @memcmp(%struct.uuid*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @g_free(%struct.uuid*) #1

declare dso_local i8* @be32dec(%struct.uuid*) #1

declare dso_local i32 @be16dec(%struct.uuid*) #1

declare dso_local i32 @parse_uuid(%struct.uuid*, %struct.uuid*) #1

declare dso_local i64 @strncmp(%struct.uuid*, i32, i32) #1

declare dso_local i32 @LDM_DUMP(%struct.uuid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
