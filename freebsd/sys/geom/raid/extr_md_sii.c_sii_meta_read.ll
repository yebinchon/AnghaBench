; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii_raid_conf = type { i32, i32, i32, i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"SiI vendor ID check failed on %s (0x%04x)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"SiI version check failed on %s (%d.%d)\00", align 1
@M_MD_SII = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"SiI checksum check failed on %s\00", align 1
@SII_T_RAID0 = common dso_local global i32 0, align 4
@SII_T_RAID1 = common dso_local global i32 0, align 4
@SII_T_RAID01 = common dso_local global i32 0, align 4
@SII_T_SPARE = common dso_local global i32 0, align 4
@SII_T_RAID5 = common dso_local global i32 0, align 4
@SII_T_CONCAT = common dso_local global i32 0, align 4
@SII_T_JBOD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"SiI unknown RAID level on %s (0x%02x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sii_raid_conf* (%struct.g_consumer*)* @sii_meta_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sii_raid_conf* @sii_meta_read(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.sii_raid_conf*, align 8
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca %struct.sii_raid_conf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  store %struct.g_provider* %13, %struct.g_provider** %4, align 8
  %14 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %15 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @g_read_data(%struct.g_consumer* %14, i64 %21, i64 %24, i32* %7)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %30 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  store %struct.sii_raid_conf* null, %struct.sii_raid_conf** %2, align 8
  br label %162

34:                                               ; preds = %1
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to %struct.sii_raid_conf*
  store %struct.sii_raid_conf* %36, %struct.sii_raid_conf** %5, align 8
  %37 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %38 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 4245
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %46 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @g_free(i8* %49)
  store %struct.sii_raid_conf* null, %struct.sii_raid_conf** %2, align 8
  br label %162

51:                                               ; preds = %34
  %52 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %53 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %58 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %61 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %64 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @g_free(i8* %67)
  store %struct.sii_raid_conf* null, %struct.sii_raid_conf** %2, align 8
  br label %162

69:                                               ; preds = %51
  %70 = load i32, i32* @M_MD_SII, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call %struct.sii_raid_conf* @malloc(i32 16, i32 %70, i32 %71)
  store %struct.sii_raid_conf* %72, %struct.sii_raid_conf** %5, align 8
  %73 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %76 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @min(i32 16, i64 %77)
  %79 = call i32 @memcpy(%struct.sii_raid_conf* %73, i8* %74, i32 %78)
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @g_free(i8* %80)
  store i64 0, i64* %9, align 8
  %82 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %83 = bitcast %struct.sii_raid_conf* %82 to i64*
  store i64* %83, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %93, %69
  %85 = load i32, i32* %8, align 4
  %86 = icmp sle i32 %85, 159
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i64*, i64** %10, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %10, align 8
  %90 = load i64, i64* %88, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %84

96:                                               ; preds = %84
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %101 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %105 = load i32, i32* @M_MD_SII, align 4
  %106 = call i32 @free(%struct.sii_raid_conf* %104, i32 %105)
  store %struct.sii_raid_conf* null, %struct.sii_raid_conf** %2, align 8
  br label %162

107:                                              ; preds = %96
  %108 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %109 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SII_T_RAID0, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %160

113:                                              ; preds = %107
  %114 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %115 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SII_T_RAID1, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %160

119:                                              ; preds = %113
  %120 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %121 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SII_T_RAID01, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %160

125:                                              ; preds = %119
  %126 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %127 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SII_T_SPARE, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %125
  %132 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %133 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SII_T_RAID5, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %160

137:                                              ; preds = %131
  %138 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %139 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SII_T_CONCAT, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %137
  %144 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %145 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @SII_T_JBOD, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %151 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %154 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %158 = load i32, i32* @M_MD_SII, align 4
  %159 = call i32 @free(%struct.sii_raid_conf* %157, i32 %158)
  store %struct.sii_raid_conf* null, %struct.sii_raid_conf** %2, align 8
  br label %162

160:                                              ; preds = %143, %137, %131, %125, %119, %113, %107
  %161 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  store %struct.sii_raid_conf* %161, %struct.sii_raid_conf** %2, align 8
  br label %162

162:                                              ; preds = %160, %149, %99, %56, %41, %28
  %163 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %2, align 8
  ret %struct.sii_raid_conf* %163
}

declare dso_local i8* @g_read_data(%struct.g_consumer*, i64, i64, i32*) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local %struct.sii_raid_conf* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sii_raid_conf*, i8*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @free(%struct.sii_raid_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
