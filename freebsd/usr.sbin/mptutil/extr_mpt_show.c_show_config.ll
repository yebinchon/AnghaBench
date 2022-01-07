; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_show.c_show_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_show.c_show_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_standalone_disk = type { i32, i32, i8*, i32, i32, i8*, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"show config: extra arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to get config\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to get standalone drive list\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"mpt%d Configuration: %d volumes, %d drives\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"    volume %s \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s UNKNOWN\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" spans:\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"        drive %u \00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"        spare pools: \00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"    spare %u \00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c" backs pool %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"    drive %s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @show_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_config(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mpt_standalone_disk*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.mpt_standalone_disk*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.mpt_standalone_disk*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.mpt_standalone_disk*, align 8
  %13 = alloca %struct.mpt_standalone_disk*, align 8
  %14 = alloca %struct.mpt_standalone_disk*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %273

25:                                               ; preds = %2
  %26 = load i32, i32* @mpt_unit, align 4
  %27 = call i32 @mpt_open(i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %15, align 4
  %32 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %3, align 4
  br label %273

34:                                               ; preds = %25
  %35 = load i32, i32* %16, align 4
  %36 = call %struct.mpt_standalone_disk* @mpt_read_ioc_page(i32 %35, i32 2, i32* null)
  store %struct.mpt_standalone_disk* %36, %struct.mpt_standalone_disk** %6, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call %struct.mpt_standalone_disk* @mpt_read_ioc_page(i32 %37, i32 5, i32* null)
  store %struct.mpt_standalone_disk* %38, %struct.mpt_standalone_disk** %8, align 8
  %39 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %40 = icmp eq %struct.mpt_standalone_disk* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %8, align 8
  %43 = icmp eq %struct.mpt_standalone_disk* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41, %34
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %15, align 4
  %46 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %48 = call i32 @free(%struct.mpt_standalone_disk* %47)
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %3, align 4
  br label %273

52:                                               ; preds = %41
  %53 = load i32, i32* %16, align 4
  %54 = call i64 @mpt_fetch_disks(i32 %53, i32* %19, %struct.mpt_standalone_disk** %14)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %15, align 4
  %58 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %8, align 8
  %60 = call i32 @free(%struct.mpt_standalone_disk* %59)
  %61 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %62 = call i32 @free(%struct.mpt_standalone_disk* %61)
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %3, align 4
  br label %273

66:                                               ; preds = %52
  %67 = load i32, i32* @mpt_unit, align 4
  %68 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %69 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %72 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %70, i32 %75)
  %77 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %78 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %77, i32 0, i32 9
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %198, %66
  %81 = load i32, i32* %17, align 4
  %82 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %83 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %203

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @mpt_volume_name(i32 %89, i32 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.mpt_standalone_disk* @mpt_vol_info(i32 %95, i32 %98, i32 %101, i32* null)
  store %struct.mpt_standalone_disk* %102, %struct.mpt_standalone_disk** %10, align 8
  %103 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %10, align 8
  %104 = icmp eq %struct.mpt_standalone_disk* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %86
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @mpt_raid_level(i32 %108)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %109)
  br label %114

111:                                              ; preds = %86
  %112 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %10, align 8
  %113 = call i32 @print_vol(%struct.mpt_standalone_disk* %112, i32 -1)
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.mpt_standalone_disk* @mpt_vol_names(i32 %115, i32 %118, i32 %121, i32* null)
  store %struct.mpt_standalone_disk* %122, %struct.mpt_standalone_disk** %12, align 8
  %123 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %12, align 8
  %124 = icmp ne %struct.mpt_standalone_disk* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %114
  %126 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %12, align 8
  %127 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %12, align 8
  %135 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %133, %125
  %139 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %12, align 8
  %140 = call i32 @free(%struct.mpt_standalone_disk* %139)
  br label %141

141:                                              ; preds = %138, %114
  %142 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %10, align 8
  %143 = icmp eq %struct.mpt_standalone_disk* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %198

146:                                              ; preds = %141
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %148 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %10, align 8
  %149 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %148, i32 0, i32 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  store %struct.TYPE_6__* %150, %struct.TYPE_6__** %11, align 8
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %176, %146
  %152 = load i32, i32* %18, align 4
  %153 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %10, align 8
  %154 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %181

157:                                              ; preds = %151
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %16, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call %struct.mpt_standalone_disk* @mpt_pd_info(i32 %162, i32 %165, i32* null)
  store %struct.mpt_standalone_disk* %166, %struct.mpt_standalone_disk** %13, align 8
  %167 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %13, align 8
  %168 = icmp ne %struct.mpt_standalone_disk* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %157
  %170 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %13, align 8
  %171 = call i32 @print_pd(%struct.mpt_standalone_disk* %170, i32 -1, i32 0)
  %172 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %13, align 8
  %173 = call i32 @free(%struct.mpt_standalone_disk* %172)
  br label %174

174:                                              ; preds = %169, %157
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 1
  store %struct.TYPE_6__* %178, %struct.TYPE_6__** %11, align 8
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %18, align 4
  br label %151

181:                                              ; preds = %151
  %182 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %10, align 8
  %183 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %181
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %189 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %10, align 8
  %190 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @print_spare_pools(i64 %192)
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %195

195:                                              ; preds = %187, %181
  %196 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %10, align 8
  %197 = call i32 @free(%struct.mpt_standalone_disk* %196)
  br label %198

198:                                              ; preds = %195, %144
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 1
  store %struct.TYPE_8__* %200, %struct.TYPE_8__** %7, align 8
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  br label %80

203:                                              ; preds = %80
  %204 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %8, align 8
  %205 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %204, i32 0, i32 6
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  store %struct.TYPE_7__* %206, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %17, align 4
  br label %207

207:                                              ; preds = %237, %203
  %208 = load i32, i32* %17, align 4
  %209 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %8, align 8
  %210 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %242

213:                                              ; preds = %207
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %16, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call %struct.mpt_standalone_disk* @mpt_pd_info(i32 %218, i32 %221, i32* null)
  store %struct.mpt_standalone_disk* %222, %struct.mpt_standalone_disk** %13, align 8
  %223 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %13, align 8
  %224 = icmp ne %struct.mpt_standalone_disk* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %213
  %226 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %13, align 8
  %227 = call i32 @print_pd(%struct.mpt_standalone_disk* %226, i32 -1, i32 0)
  %228 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %13, align 8
  %229 = call i32 @free(%struct.mpt_standalone_disk* %228)
  br label %230

230:                                              ; preds = %225, %213
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @ffs(i32 %233)
  %235 = sub nsw i32 %234, 1
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %230
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 1
  store %struct.TYPE_7__* %239, %struct.TYPE_7__** %9, align 8
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %17, align 4
  br label %207

242:                                              ; preds = %207
  store i32 0, i32* %17, align 4
  br label %243

243:                                              ; preds = %261, %242
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %19, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %264

247:                                              ; preds = %243
  %248 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %14, align 8
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %248, i64 %250
  %252 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %251, i32 0, i32 5
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %253)
  %255 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %14, align 8
  %256 = load i32, i32* %17, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %255, i64 %257
  %259 = call i32 @print_standalone(%struct.mpt_standalone_disk* %258, i32 -1, i32 0)
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %261

261:                                              ; preds = %247
  %262 = load i32, i32* %17, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %17, align 4
  br label %243

264:                                              ; preds = %243
  %265 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %266 = call i32 @free(%struct.mpt_standalone_disk* %265)
  %267 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %8, align 8
  %268 = call i32 @free(%struct.mpt_standalone_disk* %267)
  %269 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %14, align 8
  %270 = call i32 @free(%struct.mpt_standalone_disk* %269)
  %271 = load i32, i32* %16, align 4
  %272 = call i32 @close(i32 %271)
  store i32 0, i32* %3, align 4
  br label %273

273:                                              ; preds = %264, %56, %44, %30, %22
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.mpt_standalone_disk* @mpt_read_ioc_page(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.mpt_standalone_disk*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mpt_fetch_disks(i32, i32*, %struct.mpt_standalone_disk**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @mpt_volume_name(i32, i32) #1

declare dso_local %struct.mpt_standalone_disk* @mpt_vol_info(i32, i32, i32, i32*) #1

declare dso_local i8* @mpt_raid_level(i32) #1

declare dso_local i32 @print_vol(%struct.mpt_standalone_disk*, i32) #1

declare dso_local %struct.mpt_standalone_disk* @mpt_vol_names(i32, i32, i32, i32*) #1

declare dso_local %struct.mpt_standalone_disk* @mpt_pd_info(i32, i32, i32*) #1

declare dso_local i32 @print_pd(%struct.mpt_standalone_disk*, i32, i32) #1

declare dso_local i32 @print_spare_pools(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @print_standalone(%struct.mpt_standalone_disk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
