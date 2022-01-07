; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_show.c_show_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_show.c_show_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"show adapter: extra arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mps_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mps_open\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to get controller info\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid controller info\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"mp%s%d Adapter:\0A\00", align 1
@is_mps = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"       Board Name: %.16s\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"   Board Assembly: %.16s\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"        Chip Name: %.16s\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"    Chip Revision: %.16s\0A\00", align 1
@MPI2_CONFIG_PAGETYPE_BIOS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Failed to get BIOS page 3 info\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"    BIOS Revision: %d.%02d.%02d.%02d\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"could not get controller IOCFacts\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Firmware Revision: %d.%02d.%02d.%02d\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"  Integrated RAID: %s\0A\00", align 1
@MPI2_IOCFACTS_CAPABILITY_INTEGRATED_RAID = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT = common dso_local global i32 0, align 4
@MPI2_SASIOUNITPAGE0_PAGEVERSION = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"Error retrieving SAS IO Unit page %d\00", align 1
@MPI2_SASIOUNITPAGE1_PAGEVERSION = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"%-8s%-12s%-11s%-10s%-8s%-7s%-7s%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"PhyNum\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"CtlrHandle\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"DevHandle\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@MPI2_SASIOUNIT0_PORTFLAGS_DISCOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [29 x i8] c"Discovery still in progress\0A\00", align 1
@MPI2_SASIOUNIT0_PHYFLAGS_PHY_DISABLED = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"%-8d%-12s%-11s%-10s%-8s%-7s%-7s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @show_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_adapter(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [5 x i8], align 1
  %20 = alloca [5 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %284

30:                                               ; preds = %2
  %31 = load i32, i32* @mps_unit, align 4
  %32 = call i32 @mps_open(i32 %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %22, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %21, align 4
  %37 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %21, align 4
  store i32 %38, i32* %3, align 4
  br label %284

39:                                               ; preds = %30
  %40 = load i32, i32* %22, align 4
  %41 = call %struct.TYPE_18__* @mps_read_man_page(i32 %40, i32 0, i32* null)
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %10, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = icmp eq %struct.TYPE_18__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %21, align 4
  %46 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %21, align 4
  store i32 %47, i32* %3, align 4
  br label %284

48:                                               ; preds = %39
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 16
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %3, align 4
  br label %284

58:                                               ; preds = %48
  %59 = load i64, i64* @is_mps, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %63 = load i32, i32* @mps_unit, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %62, i32 %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %82 = call i32 @free(%struct.TYPE_18__* %81)
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* @MPI2_CONFIG_PAGETYPE_BIOS, align 4
  %85 = call %struct.TYPE_18__* @mps_read_config_page(i32 %83, i32 %84, i32 3, i32 0, i32* null)
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %11, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %87 = icmp eq %struct.TYPE_18__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %58
  %89 = load i32, i32* @errno, align 4
  store i32 %89, i32* %21, align 4
  %90 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %91 = load i32, i32* %21, align 4
  store i32 %91, i32* %3, align 4
  br label %284

92:                                               ; preds = %58
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %23, align 4
  %96 = load i32, i32* %23, align 4
  %97 = and i32 %96, -16777216
  %98 = lshr i32 %97, 24
  %99 = load i32, i32* %23, align 4
  %100 = and i32 %99, 16711680
  %101 = ashr i32 %100, 16
  %102 = load i32, i32* %23, align 4
  %103 = and i32 %102, 65280
  %104 = ashr i32 %103, 8
  %105 = load i32, i32* %23, align 4
  %106 = and i32 %105, 255
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %98, i32 %101, i32 %104, i32 %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %109 = call i32 @free(%struct.TYPE_18__* %108)
  %110 = load i32, i32* %22, align 4
  %111 = call %struct.TYPE_18__* @mps_get_iocfacts(i32 %110)
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %12, align 8
  %112 = icmp eq %struct.TYPE_18__* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %92
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %115 = load i32, i32* %22, align 4
  %116 = call i32 @close(i32 %115)
  %117 = load i32, i32* @errno, align 4
  store i32 %117, i32* %3, align 4
  br label %284

118:                                              ; preds = %92
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %23, align 4
  %123 = load i32, i32* %23, align 4
  %124 = and i32 %123, -16777216
  %125 = lshr i32 %124, 24
  %126 = load i32, i32* %23, align 4
  %127 = and i32 %126, 16711680
  %128 = ashr i32 %127, 16
  %129 = load i32, i32* %23, align 4
  %130 = and i32 %129, 65280
  %131 = ashr i32 %130, 8
  %132 = load i32, i32* %23, align 4
  %133 = and i32 %132, 255
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %125, i32 %128, i32 %131, i32 %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MPI2_IOCFACTS_CAPABILITY_INTEGRATED_RAID, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %142)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %145 = call i32 @free(%struct.TYPE_18__* %144)
  %146 = load i32, i32* @mps_unit, align 4
  %147 = call i32 @mps_open(i32 %146)
  store i32 %147, i32* %22, align 4
  %148 = load i32, i32* %22, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %118
  %151 = load i32, i32* @errno, align 4
  store i32 %151, i32* %21, align 4
  %152 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* %21, align 4
  store i32 %153, i32* %3, align 4
  br label %284

154:                                              ; preds = %118
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* @MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT, align 4
  %157 = load i32, i32* @MPI2_SASIOUNITPAGE0_PAGEVERSION, align 4
  %158 = call %struct.TYPE_18__* @mps_read_extended_config_page(i32 %155, i32 %156, i32 %157, i32 0, i32 0, i32* %13)
  store %struct.TYPE_18__* %158, %struct.TYPE_18__** %6, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = icmp eq %struct.TYPE_18__* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %154
  %162 = load i32, i32* @errno, align 4
  store i32 %162, i32* %21, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %166 = call i32 @free(%struct.TYPE_18__* %165)
  %167 = load i32, i32* %22, align 4
  %168 = call i32 @close(i32 %167)
  %169 = load i32, i32* %21, align 4
  store i32 %169, i32* %3, align 4
  br label %284

170:                                              ; preds = %154
  %171 = load i32, i32* %22, align 4
  %172 = load i32, i32* @MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT, align 4
  %173 = load i32, i32* @MPI2_SASIOUNITPAGE1_PAGEVERSION, align 4
  %174 = call %struct.TYPE_18__* @mps_read_extended_config_page(i32 %171, i32 %172, i32 %173, i32 1, i32 0, i32* %13)
  store %struct.TYPE_18__* %174, %struct.TYPE_18__** %7, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %176 = icmp eq %struct.TYPE_18__* %175, null
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = load i32, i32* @errno, align 4
  store i32 %178, i32* %21, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %179)
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %182 = call i32 @free(%struct.TYPE_18__* %181)
  %183 = load i32, i32* %22, align 4
  %184 = call i32 @close(i32 %183)
  %185 = load i32, i32* %21, align 4
  store i32 %185, i32* %3, align 4
  br label %284

186:                                              ; preds = %170
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  br label %189

189:                                              ; preds = %273, %186
  %190 = load i32, i32* %24, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %276

195:                                              ; preds = %189
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = load i32, i32* %24, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i64 %200
  store %struct.TYPE_17__* %201, %struct.TYPE_17__** %8, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 7
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = load i32, i32* %24, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i64 %206
  store %struct.TYPE_17__* %207, %struct.TYPE_17__** %9, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MPI2_SASIOUNIT0_PORTFLAGS_DISCOVERY_IN_PROGRESS, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %195
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0))
  br label %273

216:                                              ; preds = %195
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @MPI2_SASIOUNIT0_PHYFLAGS_PHY_DISABLED, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i8** %17, align 8
  br label %225

224:                                              ; preds = %216
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** %17, align 8
  br label %225

225:                                              ; preds = %224, %223
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i8* @get_device_speed(i32 %228)
  store i8* %229, i8** %15, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = ashr i32 %232, 4
  %234 = call i8* @get_device_speed(i32 %233)
  store i8* %234, i8** %16, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = call i8* @get_device_type(i32 %237)
  store i8* %238, i8** %18, align 8
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %258

243:                                              ; preds = %225
  %244 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %244, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i64 %247)
  %249 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %249, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %252)
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @get_device_speed(i32 %256)
  store i8* %257, i8** %14, align 8
  br label %263

258:                                              ; preds = %225
  %259 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %260 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %259, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %261 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %262 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %261, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8** %14, align 8
  br label %263

263:                                              ; preds = %258, %243
  %264 = load i32, i32* %24, align 4
  %265 = getelementptr inbounds [5 x i8], [5 x i8]* %20, i64 0, i64 0
  %266 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %267 = load i8*, i8** %17, align 8
  %268 = load i8*, i8** %14, align 8
  %269 = load i8*, i8** %15, align 8
  %270 = load i8*, i8** %16, align 8
  %271 = load i8*, i8** %18, align 8
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0), i32 %264, i8* %265, i8* %266, i8* %267, i8* %268, i8* %269, i8* %270, i8* %271)
  br label %273

273:                                              ; preds = %263, %214
  %274 = load i32, i32* %24, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %24, align 4
  br label %189

276:                                              ; preds = %189
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %278 = call i32 @free(%struct.TYPE_18__* %277)
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %280 = call i32 @free(%struct.TYPE_18__* %279)
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %282 = load i32, i32* %22, align 4
  %283 = call i32 @close(i32 %282)
  store i32 0, i32* %3, align 4
  br label %284

284:                                              ; preds = %276, %177, %161, %150, %113, %88, %55, %44, %35, %27
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mps_open(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local %struct.TYPE_18__* @mps_read_man_page(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @mps_read_config_page(i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_18__* @mps_get_iocfacts(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.TYPE_18__* @mps_read_extended_config_page(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i8* @get_device_speed(i32) #1

declare dso_local i8* @get_device_type(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
