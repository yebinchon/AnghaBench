; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_nvidia_meta_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_nvidia_meta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_raid_conf = type { i32, i32, i32, i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@NVIDIA_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"NVIDIA signature check failed on %s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"NVIDIA metadata size looks wrong: %d\00", align 1
@M_MD_NVIDIA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"NVIDIA checksum check failed on %s\00", align 1
@NVIDIA_S_IDLE = common dso_local global i32 0, align 4
@NVIDIA_S_INIT = common dso_local global i32 0, align 4
@NVIDIA_S_REBUILD = common dso_local global i32 0, align 4
@NVIDIA_S_SYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"NVIDIA unknown state on %s (0x%02x)\00", align 1
@NVIDIA_T_RAID0 = common dso_local global i32 0, align 4
@NVIDIA_T_RAID1 = common dso_local global i32 0, align 4
@NVIDIA_T_RAID3 = common dso_local global i32 0, align 4
@NVIDIA_T_RAID5 = common dso_local global i32 0, align 4
@NVIDIA_T_RAID5_SYM = common dso_local global i32 0, align 4
@NVIDIA_T_RAID01 = common dso_local global i32 0, align 4
@NVIDIA_T_CONCAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"NVIDIA unknown RAID level on %s (0x%02x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvidia_raid_conf* (%struct.g_consumer*)* @nvidia_meta_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvidia_raid_conf* @nvidia_meta_read(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.nvidia_raid_conf*, align 8
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca %struct.nvidia_raid_conf*, align 8
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
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %17, %22
  %24 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @g_read_data(%struct.g_consumer* %14, i64 %23, i32 %26, i32* %7)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %32 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  store %struct.nvidia_raid_conf* null, %struct.nvidia_raid_conf** %2, align 8
  br label %202

36:                                               ; preds = %1
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to %struct.nvidia_raid_conf*
  store %struct.nvidia_raid_conf* %38, %struct.nvidia_raid_conf** %5, align 8
  %39 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %40 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NVIDIA_MAGIC, align 4
  %43 = load i32, i32* @NVIDIA_MAGIC, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = call i64 @strncmp(i32 %41, i32 %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %49 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @g_free(i8* %52)
  store %struct.nvidia_raid_conf* null, %struct.nvidia_raid_conf** %2, align 8
  br label %202

54:                                               ; preds = %36
  %55 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %56 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 128
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %61 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 30
  br i1 %63, label %64, label %71

64:                                               ; preds = %59, %54
  %65 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %66 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @g_free(i8* %69)
  store %struct.nvidia_raid_conf* null, %struct.nvidia_raid_conf** %2, align 8
  br label %202

71:                                               ; preds = %59
  %72 = load i32, i32* @M_MD_NVIDIA, align 4
  %73 = load i32, i32* @M_WAITOK, align 4
  %74 = call %struct.nvidia_raid_conf* @malloc(i32 16, i32 %72, i32 %73)
  store %struct.nvidia_raid_conf* %74, %struct.nvidia_raid_conf** %5, align 8
  %75 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %78 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @min(i32 16, i32 %79)
  %81 = call i32 @memcpy(%struct.nvidia_raid_conf* %75, i8* %76, i32 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @g_free(i8* %82)
  store i64 0, i64* %9, align 8
  %84 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %85 = bitcast %struct.nvidia_raid_conf* %84 to i64*
  store i64* %85, i64** %10, align 8
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %98, %71
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %89 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i64*, i64** %10, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %10, align 8
  %95 = load i64, i64* %93, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %86

101:                                              ; preds = %86
  %102 = load i64, i64* %9, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %106 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %110 = load i32, i32* @M_MD_NVIDIA, align 4
  %111 = call i32 @free(%struct.nvidia_raid_conf* %109, i32 %110)
  store %struct.nvidia_raid_conf* null, %struct.nvidia_raid_conf** %2, align 8
  br label %202

112:                                              ; preds = %101
  %113 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %114 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NVIDIA_S_IDLE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %147

118:                                              ; preds = %112
  %119 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %120 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @NVIDIA_S_INIT, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %118
  %125 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %126 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NVIDIA_S_REBUILD, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %132 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @NVIDIA_S_SYNC, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %138 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %141 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %145 = load i32, i32* @M_MD_NVIDIA, align 4
  %146 = call i32 @free(%struct.nvidia_raid_conf* %144, i32 %145)
  store %struct.nvidia_raid_conf* null, %struct.nvidia_raid_conf** %2, align 8
  br label %202

147:                                              ; preds = %130, %124, %118, %112
  %148 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %149 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NVIDIA_T_RAID0, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %200

153:                                              ; preds = %147
  %154 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %155 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @NVIDIA_T_RAID1, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %200

159:                                              ; preds = %153
  %160 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %161 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NVIDIA_T_RAID3, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %200

165:                                              ; preds = %159
  %166 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %167 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @NVIDIA_T_RAID5, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %200

171:                                              ; preds = %165
  %172 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %173 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @NVIDIA_T_RAID5_SYM, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %200

177:                                              ; preds = %171
  %178 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %179 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @NVIDIA_T_RAID01, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %177
  %184 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %185 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NVIDIA_T_CONCAT, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %191 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %194 = getelementptr inbounds %struct.nvidia_raid_conf, %struct.nvidia_raid_conf* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %192, i32 %195)
  %197 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  %198 = load i32, i32* @M_MD_NVIDIA, align 4
  %199 = call i32 @free(%struct.nvidia_raid_conf* %197, i32 %198)
  store %struct.nvidia_raid_conf* null, %struct.nvidia_raid_conf** %2, align 8
  br label %202

200:                                              ; preds = %183, %177, %171, %165, %159, %153, %147
  %201 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %5, align 8
  store %struct.nvidia_raid_conf* %201, %struct.nvidia_raid_conf** %2, align 8
  br label %202

202:                                              ; preds = %200, %189, %136, %104, %64, %47, %30
  %203 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  ret %struct.nvidia_raid_conf* %203
}

declare dso_local i8* @g_read_data(%struct.g_consumer*, i64, i32, i32*) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local %struct.nvidia_raid_conf* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.nvidia_raid_conf*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @free(%struct.nvidia_raid_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
