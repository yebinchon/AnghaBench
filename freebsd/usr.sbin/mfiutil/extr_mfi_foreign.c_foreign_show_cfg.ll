; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_foreign.c_foreign_show_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_foreign.c_foreign_show_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_config_data = type { i32, i32, i32, i32, i32, i64 }
%struct.mfi_ld_config = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mfi_array = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to get foreign config %d\00", align 1
@MFI_DCMD_CFG_FOREIGN_PREVIEW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Foreign configuration preview %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Foreign configuration %d\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: %d arrays, %d volumes, %d spares\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_B = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c" ID%d \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"(%6s) %-8s |\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"volume spans %d %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"arrays\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"      array %u @ \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"(%6s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"        drive MISSING\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"        drive %u %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32)* @foreign_show_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreign_show_cfg(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mfi_config_data*, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [6 x i8], align 1
  %18 = alloca [5 x i8], align 1
  %19 = alloca %struct.mfi_ld_config*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.mfi_array*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %26 = call i32 @bzero(i32* %25, i32 16)
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %32 = call i64 @mfi_config_read_opcode(i32 %29, i64 %30, %struct.mfi_config_data** %10, i32* %31, i32 16)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %262

41:                                               ; preds = %4
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @MFI_DCMD_CFG_FOREIGN_PREVIEW, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %60 = call i32 @dump_config(i32 %57, %struct.mfi_config_data* %58, i8* %59)
  br label %259

61:                                               ; preds = %53
  %62 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %63 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %14, align 8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %67 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %68 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %71 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %74 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %69, i32 %72, i32 %75)
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %90, %61
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %80 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %85 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %14, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %14, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %77

93:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %255, %93
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %97 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %258

100:                                              ; preds = %94
  %101 = load i8*, i8** %14, align 8
  %102 = bitcast i8* %101 to %struct.mfi_ld_config*
  store %struct.mfi_ld_config* %102, %struct.mfi_ld_config** %19, align 8
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %104 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %105 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @format_stripe(i8* %103, i32 5, i32 %107)
  %109 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %110 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %114 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = call i8* @mfi_raid_level(i32 %112, i32 %117)
  store i8* %118, i8** %16, align 8
  %119 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %120 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %121 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %125, 512
  %127 = load i32, i32* @HN_AUTOSCALE, align 4
  %128 = load i32, i32* @HN_B, align 4
  %129 = load i32, i32* @HN_NOSPACE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @HN_DECIMAL, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @humanize_number(i8* %119, i32 6, i32 %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %132)
  %134 = load i32, i32* %15, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %137 = load i8*, i8** %16, align 8
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %136, i8* %137)
  %139 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %140 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %144 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 1
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %142, i8* %149)
  store i32 0, i32* %20, align 4
  br label %151

151:                                              ; preds = %245, %100
  %152 = load i32, i32* %20, align 4
  %153 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %154 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %248

158:                                              ; preds = %151
  %159 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %160 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %166)
  %168 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %169 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %170 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %169, i32 0, i32 0
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %176, 512
  %178 = load i32, i32* @HN_AUTOSCALE, align 4
  %179 = load i32, i32* @HN_B, align 4
  %180 = load i32, i32* @HN_NOSPACE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @HN_DECIMAL, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @humanize_number(i8* %168, i32 6, i32 %177, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %183)
  %185 = getelementptr inbounds [6 x i8], [6 x i8]* %17, i64 0, i64 0
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %185)
  %187 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %188 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i8*
  %191 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %19, align 8
  %192 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %191, i32 0, i32 0
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = load i32, i32* %20, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %200 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %198, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %190, i64 %203
  store i8* %204, i8** %21, align 8
  %205 = load i8*, i8** %21, align 8
  %206 = bitcast i8* %205 to %struct.mfi_array*
  store %struct.mfi_array* %206, %struct.mfi_array** %22, align 8
  store i32 0, i32* %24, align 4
  br label %207

207:                                              ; preds = %241, %158
  %208 = load i32, i32* %24, align 4
  %209 = load %struct.mfi_array*, %struct.mfi_array** %22, align 8
  %210 = getelementptr inbounds %struct.mfi_array, %struct.mfi_array* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %244

213:                                              ; preds = %207
  %214 = load %struct.mfi_array*, %struct.mfi_array** %22, align 8
  %215 = getelementptr inbounds %struct.mfi_array, %struct.mfi_array* %214, i32 0, i32 1
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = load i32, i32* %24, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %23, align 4
  %224 = load i32, i32* %23, align 4
  %225 = icmp eq i32 %224, 65535
  br i1 %225, label %226, label %228

226:                                              ; preds = %213
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %240

228:                                              ; preds = %213
  %229 = load i32, i32* %23, align 4
  %230 = load %struct.mfi_array*, %struct.mfi_array** %22, align 8
  %231 = getelementptr inbounds %struct.mfi_array, %struct.mfi_array* %230, i32 0, i32 1
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = load i32, i32* %24, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @mfi_pdstate(i32 %237)
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %229, i8* %238)
  br label %240

240:                                              ; preds = %228, %226
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %24, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %24, align 4
  br label %207

244:                                              ; preds = %207
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %20, align 4
  br label %151

248:                                              ; preds = %151
  %249 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %250 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = load i8*, i8** %14, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8* %254, i8** %14, align 8
  br label %255

255:                                              ; preds = %248
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %94

258:                                              ; preds = %94
  br label %259

259:                                              ; preds = %258, %56
  %260 = load %struct.mfi_config_data*, %struct.mfi_config_data** %10, align 8
  %261 = call i32 @free(%struct.mfi_config_data* %260)
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %259, %34
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @mfi_config_read_opcode(i32, i64, %struct.mfi_config_data**, i32*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dump_config(i32, %struct.mfi_config_data*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @format_stripe(i8*, i32, i32) #1

declare dso_local i8* @mfi_raid_level(i32, i32) #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i8* @mfi_pdstate(i32) #1

declare dso_local i32 @free(%struct.mfi_config_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
