; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.bhndb_resources*, %struct.bhndb_resources*, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, i32, i32*, %struct.bhndb_regwin*, %struct.bhndb_hwcfg*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.resource**, %struct.TYPE_8__* }
%struct.resource = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i64 }
%struct.bhndb_regwin = type { i64, i64, i64 }
%struct.bhndb_hwcfg = type { %struct.bhndb_regwin* }
%struct.bhndb_dw_alloc = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc*, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, i32, i32*, %struct.bhndb_regwin*, %struct.bhndb_hwcfg*, i32, i32, i32, i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BHNDB_PRIORITY_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bhndb dwa_steal lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"BHNDB host memory\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"could not initialize ht_mem_rman\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"BHNDB bridged memory\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"could not initialize br_mem_rman\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"could not configure br_mem_rman\0A\00", align 1
@RM_MAX_END = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"BHNDB bridged interrupts\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"could not initialize br_irq_rman\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"could not configure br_irq_rman\0A\00", align 1
@BHNDB_REGWIN_T_DYN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"max dynamic regwin count exceeded\0A\00", align 1
@BHNDB_REGWIN_T_INVALID = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"ignoring zero-length dynamic register window\0A\00", align 1
@.str.11 = private unnamed_addr constant [86 x i8] c"devices that vend multiple dynamic register window sizes are not currently supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"could not allocate host resources on %s: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [78 x i8] c"no host resource found for %u register window with offset %#jx and size %#jx\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [74 x i8] c"resource %d too small for register window with offset %llx and size %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [60 x i8] c"could not register host memory region with ht_mem_rman: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_resources* @bhndb_alloc_resources(i32 %0, i32 %1, %struct.bhndb_hwcfg* %2) #0 {
  %4 = alloca %struct.bhndb_resources*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhndb_hwcfg*, align 8
  %8 = alloca %struct.bhndb_resources*, align 8
  %9 = alloca %struct.bhndb_regwin*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bhndb_dw_alloc*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.bhndb_dw_alloc*, align 8
  %19 = alloca %struct.bhndb_regwin*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.resource*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.bhndb_hwcfg* %2, %struct.bhndb_hwcfg** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* @M_BHND, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @malloc(i32 184, i32 %22, i32 %25)
  %27 = bitcast i8* %26 to %struct.bhndb_resources*
  store %struct.bhndb_resources* %27, %struct.bhndb_resources** %8, align 8
  %28 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %29 = icmp eq %struct.bhndb_resources* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store %struct.bhndb_resources* null, %struct.bhndb_resources** %4, align 8
  br label %485

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %34 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %7, align 8
  %36 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %37 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %36, i32 0, i32 13
  store %struct.bhndb_hwcfg* %35, %struct.bhndb_hwcfg** %37, align 8
  %38 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %39 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %38, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %39, align 8
  %40 = load i32, i32* @BHNDB_PRIORITY_NONE, align 4
  %41 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %42 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %41, i32 0, i32 17
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %44 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %43, i32 0, i32 16
  %45 = call i32 @STAILQ_INIT(i32* %44)
  %46 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %47 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %46, i32 0, i32 15
  %48 = call i32 @STAILQ_INIT(i32* %47)
  %49 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %50 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %49, i32 0, i32 3
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @device_get_nameunit(i32 %51)
  %53 = load i32, i32* @MTX_SPIN, align 4
  %54 = call i32 @mtx_init(i32* %50, i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %56 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %59 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %60, align 8
  %61 = load i8*, i8** @RMAN_ARRAY, align 8
  %62 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %63 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %66 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %65, i32 0, i32 9
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  %68 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %69 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %68, i32 0, i32 9
  %70 = call i32 @rman_init(%struct.TYPE_9__* %69)
  store i32 %70, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %31
  %73 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %74 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %425

77:                                               ; preds = %31
  store i32 1, i32* %13, align 4
  %78 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %79 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** @BUS_SPACE_MAXADDR_32BIT, align 8
  %82 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %83 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  store i8* %81, i8** %84, align 8
  %85 = load i8*, i8** @RMAN_ARRAY, align 8
  %86 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %87 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %90 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %89, i32 0, i32 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %91, align 8
  %92 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %93 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %92, i32 0, i32 8
  %94 = call i32 @rman_init(%struct.TYPE_9__* %93)
  store i32 %94, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %77
  %97 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %98 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %425

101:                                              ; preds = %77
  store i32 1, i32* %14, align 4
  %102 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %103 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %102, i32 0, i32 8
  %104 = load i8*, i8** @BUS_SPACE_MAXADDR_32BIT, align 8
  %105 = call i32 @rman_manage_region(%struct.TYPE_9__* %103, i32 0, i8* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %110 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %425

113:                                              ; preds = %101
  %114 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %115 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load i8*, i8** @RM_MAX_END, align 8
  %118 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %119 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  store i8* %117, i8** %120, align 8
  %121 = load i8*, i8** @RMAN_ARRAY, align 8
  %122 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %123 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %126 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %127, align 8
  %128 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %129 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %128, i32 0, i32 7
  %130 = call i32 @rman_init(%struct.TYPE_9__* %129)
  store i32 %130, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %113
  %133 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %134 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %425

137:                                              ; preds = %113
  store i32 1, i32* %15, align 4
  %138 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %139 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %138, i32 0, i32 7
  %140 = load i8*, i8** @RM_MAX_END, align 8
  %141 = call i32 @rman_manage_region(%struct.TYPE_9__* %139, i32 0, i8* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %146 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %425

149:                                              ; preds = %137
  %150 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %7, align 8
  %151 = getelementptr inbounds %struct.bhndb_hwcfg, %struct.bhndb_hwcfg* %150, i32 0, i32 0
  %152 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %151, align 8
  %153 = load i64, i64* @BHNDB_REGWIN_T_DYN, align 8
  %154 = call i32 @bhndb_regwin_count(%struct.bhndb_regwin* %152, i64 %153)
  %155 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %156 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %158 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @INT_MAX, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %149
  %163 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %164 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %163, i32 0, i32 10
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %425

167:                                              ; preds = %149
  %168 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %169 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = mul i64 184, %171
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @M_BHND, align 4
  %175 = load i32, i32* @M_NOWAIT, align 4
  %176 = call i8* @malloc(i32 %173, i32 %174, i32 %175)
  %177 = bitcast i8* %176 to %struct.bhndb_resources*
  %178 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %179 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %178, i32 0, i32 6
  store %struct.bhndb_resources* %177, %struct.bhndb_resources** %179, align 8
  %180 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %181 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %180, i32 0, i32 6
  %182 = load %struct.bhndb_resources*, %struct.bhndb_resources** %181, align 8
  %183 = icmp eq %struct.bhndb_resources* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %167
  br label %425

185:                                              ; preds = %167
  %186 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %187 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @M_BHND, align 4
  %190 = load i32, i32* @M_NOWAIT, align 4
  %191 = call %struct.bhndb_resources* @bit_alloc(i32 %188, i32 %189, i32 %190)
  %192 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %193 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %192, i32 0, i32 5
  store %struct.bhndb_resources* %191, %struct.bhndb_resources** %193, align 8
  %194 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %195 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %194, i32 0, i32 5
  %196 = load %struct.bhndb_resources*, %struct.bhndb_resources** %195, align 8
  %197 = icmp eq %struct.bhndb_resources* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  br label %425

199:                                              ; preds = %185
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  %200 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %7, align 8
  %201 = getelementptr inbounds %struct.bhndb_hwcfg, %struct.bhndb_hwcfg* %200, i32 0, i32 0
  %202 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %201, align 8
  store %struct.bhndb_regwin* %202, %struct.bhndb_regwin** %9, align 8
  br label %203

203:                                              ; preds = %269, %199
  %204 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  %205 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @BHNDB_REGWIN_T_INVALID, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %272

209:                                              ; preds = %203
  %210 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  %211 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @BHNDB_REGWIN_T_DYN, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %269

216:                                              ; preds = %209
  %217 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  %218 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %223 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32, i8*, ...) @device_printf(i32 %224, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %269

226:                                              ; preds = %216
  %227 = load i64, i64* %10, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  %231 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %10, align 8
  br label %245

233:                                              ; preds = %226
  %234 = load i64, i64* %10, align 8
  %235 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  %236 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %234, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %241 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (i32, i8*, ...) @device_printf(i32 %242, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.11, i64 0, i64 0))
  br label %425

244:                                              ; preds = %233
  br label %245

245:                                              ; preds = %244, %229
  br label %246

246:                                              ; preds = %245
  %247 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %248 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %247, i32 0, i32 6
  %249 = load %struct.bhndb_resources*, %struct.bhndb_resources** %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %249, i64 %251
  %253 = bitcast %struct.bhndb_resources* %252 to %struct.bhndb_dw_alloc*
  store %struct.bhndb_dw_alloc* %253, %struct.bhndb_dw_alloc** %16, align 8
  %254 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  %255 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %16, align 8
  %256 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %255, i32 0, i32 12
  store %struct.bhndb_regwin* %254, %struct.bhndb_regwin** %256, align 8
  %257 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %16, align 8
  %258 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %257, i32 0, i32 11
  store i32* null, i32** %258, align 8
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %16, align 8
  %261 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  %262 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %16, align 8
  %263 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %262, i32 0, i32 2
  store i32 0, i32* %263, align 8
  %264 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %16, align 8
  %265 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %264, i32 0, i32 14
  %266 = call i32 @LIST_INIT(i32* %265)
  %267 = load i32, i32* %11, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %11, align 4
  br label %269

269:                                              ; preds = %246, %221, %215
  %270 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  %271 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %270, i32 1
  store %struct.bhndb_regwin* %271, %struct.bhndb_regwin** %9, align 8
  br label %203

272:                                              ; preds = %203
  %273 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %274 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %273, i32 0, i32 4
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %278 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %277, i32 0, i32 13
  %279 = load %struct.bhndb_hwcfg*, %struct.bhndb_hwcfg** %278, align 8
  %280 = call i32 @bhndb_alloc_host_resources(%struct.TYPE_10__** %274, i32 %275, i32 %276, %struct.bhndb_hwcfg* %279)
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %272
  %284 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %285 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %284, i32 0, i32 10
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %6, align 4
  %288 = call i32 @device_get_nameunit(i32 %287)
  %289 = load i32, i32* %12, align 4
  %290 = call i32 (i32, i8*, ...) @device_printf(i32 %286, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %288, i32 %289)
  br label %425

291:                                              ; preds = %272
  store i64 0, i64* %17, align 8
  br label %292

292:                                              ; preds = %367, %291
  %293 = load i64, i64* %17, align 8
  %294 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %295 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = icmp ult i64 %293, %297
  br i1 %298, label %299, label %370

299:                                              ; preds = %292
  %300 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %301 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %300, i32 0, i32 6
  %302 = load %struct.bhndb_resources*, %struct.bhndb_resources** %301, align 8
  %303 = load i64, i64* %17, align 8
  %304 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %302, i64 %303
  %305 = bitcast %struct.bhndb_resources* %304 to %struct.bhndb_dw_alloc*
  store %struct.bhndb_dw_alloc* %305, %struct.bhndb_dw_alloc** %18, align 8
  %306 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %18, align 8
  %307 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %306, i32 0, i32 12
  %308 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %307, align 8
  store %struct.bhndb_regwin* %308, %struct.bhndb_regwin** %19, align 8
  %309 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %310 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %309, i32 0, i32 4
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %310, align 8
  %312 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %19, align 8
  %313 = call i32* @bhndb_host_resource_for_regwin(%struct.TYPE_10__* %311, %struct.bhndb_regwin* %312)
  %314 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %18, align 8
  %315 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %314, i32 0, i32 11
  store i32* %313, i32** %315, align 8
  %316 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %18, align 8
  %317 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %316, i32 0, i32 11
  %318 = load i32*, i32** %317, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %337

320:                                              ; preds = %299
  %321 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %322 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %321, i32 0, i32 10
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %19, align 8
  %325 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %19, align 8
  %328 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = trunc i64 %329 to i32
  %331 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %19, align 8
  %332 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = trunc i64 %333 to i32
  %335 = call i32 (i32, i8*, ...) @device_printf(i32 %323, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.13, i64 0, i64 0), i64 %326, i32 %330, i32 %334)
  %336 = load i32, i32* @ENXIO, align 4
  store i32 %336, i32* %12, align 4
  br label %425

337:                                              ; preds = %299
  %338 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %18, align 8
  %339 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %338, i32 0, i32 11
  %340 = load i32*, i32** %339, align 8
  %341 = call i64 @rman_get_size(i32* %340)
  %342 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %19, align 8
  %343 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %19, align 8
  %346 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %344, %347
  %349 = icmp slt i64 %341, %348
  br i1 %349, label %350, label %366

350:                                              ; preds = %337
  %351 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %352 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %351, i32 0, i32 10
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %18, align 8
  %355 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %354, i32 0, i32 11
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @rman_get_rid(i32* %356)
  %358 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %19, align 8
  %359 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %19, align 8
  %362 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = call i32 (i32, i8*, ...) @device_printf(i32 %353, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.14, i64 0, i64 0), i32 %357, i64 %360, i64 %363)
  %365 = load i32, i32* @EINVAL, align 4
  store i32 %365, i32* %12, align 4
  br label %425

366:                                              ; preds = %337
  br label %367

367:                                              ; preds = %366
  %368 = load i64, i64* %17, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %17, align 8
  br label %292

370:                                              ; preds = %292
  store i64 0, i64* %20, align 8
  br label %371

371:                                              ; preds = %420, %370
  %372 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %373 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %372, i32 0, i32 4
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 1
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %375, align 8
  %377 = load i64, i64* %20, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, -1
  br i1 %381, label %382, label %423

382:                                              ; preds = %371
  %383 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %384 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %383, i32 0, i32 4
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %386, align 8
  %388 = load i64, i64* %20, align 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @SYS_RES_MEMORY, align 4
  %393 = icmp ne i32 %391, %392
  br i1 %393, label %394, label %395

394:                                              ; preds = %382
  br label %420

395:                                              ; preds = %382
  %396 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %397 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %396, i32 0, i32 4
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 0
  %400 = load %struct.resource**, %struct.resource*** %399, align 8
  %401 = load i64, i64* %20, align 8
  %402 = getelementptr inbounds %struct.resource*, %struct.resource** %400, i64 %401
  %403 = load %struct.resource*, %struct.resource** %402, align 8
  store %struct.resource* %403, %struct.resource** %21, align 8
  %404 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %405 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %404, i32 0, i32 9
  %406 = load %struct.resource*, %struct.resource** %21, align 8
  %407 = call i32 @rman_get_start(%struct.resource* %406)
  %408 = load %struct.resource*, %struct.resource** %21, align 8
  %409 = call i8* @rman_get_end(%struct.resource* %408)
  %410 = call i32 @rman_manage_region(%struct.TYPE_9__* %405, i32 %407, i8* %409)
  store i32 %410, i32* %12, align 4
  %411 = load i32, i32* %12, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %395
  %414 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %415 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %414, i32 0, i32 10
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %12, align 4
  %418 = call i32 (i32, i8*, ...) @device_printf(i32 %416, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0), i32 %417)
  br label %425

419:                                              ; preds = %395
  br label %420

420:                                              ; preds = %419, %394
  %421 = load i64, i64* %20, align 8
  %422 = add i64 %421, 1
  store i64 %422, i64* %20, align 8
  br label %371

423:                                              ; preds = %371
  %424 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  store %struct.bhndb_resources* %424, %struct.bhndb_resources** %4, align 8
  br label %485

425:                                              ; preds = %413, %350, %320, %283, %239, %198, %184, %162, %144, %132, %108, %96, %72
  %426 = load i32, i32* %13, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %425
  %429 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %430 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %429, i32 0, i32 9
  %431 = call i32 @rman_fini(%struct.TYPE_9__* %430)
  br label %432

432:                                              ; preds = %428, %425
  %433 = load i32, i32* %14, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %432
  %436 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %437 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %436, i32 0, i32 8
  %438 = call i32 @rman_fini(%struct.TYPE_9__* %437)
  br label %439

439:                                              ; preds = %435, %432
  %440 = load i32, i32* %15, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %439
  %443 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %444 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %443, i32 0, i32 7
  %445 = call i32 @rman_fini(%struct.TYPE_9__* %444)
  br label %446

446:                                              ; preds = %442, %439
  %447 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %448 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %447, i32 0, i32 6
  %449 = load %struct.bhndb_resources*, %struct.bhndb_resources** %448, align 8
  %450 = icmp ne %struct.bhndb_resources* %449, null
  br i1 %450, label %451, label %457

451:                                              ; preds = %446
  %452 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %453 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %452, i32 0, i32 6
  %454 = load %struct.bhndb_resources*, %struct.bhndb_resources** %453, align 8
  %455 = load i32, i32* @M_BHND, align 4
  %456 = call i32 @free(%struct.bhndb_resources* %454, i32 %455)
  br label %457

457:                                              ; preds = %451, %446
  %458 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %459 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %458, i32 0, i32 5
  %460 = load %struct.bhndb_resources*, %struct.bhndb_resources** %459, align 8
  %461 = icmp ne %struct.bhndb_resources* %460, null
  br i1 %461, label %462, label %468

462:                                              ; preds = %457
  %463 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %464 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %463, i32 0, i32 5
  %465 = load %struct.bhndb_resources*, %struct.bhndb_resources** %464, align 8
  %466 = load i32, i32* @M_BHND, align 4
  %467 = call i32 @free(%struct.bhndb_resources* %465, i32 %466)
  br label %468

468:                                              ; preds = %462, %457
  %469 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %470 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %469, i32 0, i32 4
  %471 = load %struct.TYPE_10__*, %struct.TYPE_10__** %470, align 8
  %472 = icmp ne %struct.TYPE_10__* %471, null
  br i1 %472, label %473, label %478

473:                                              ; preds = %468
  %474 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %475 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %474, i32 0, i32 4
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %475, align 8
  %477 = call i32 @bhndb_release_host_resources(%struct.TYPE_10__* %476)
  br label %478

478:                                              ; preds = %473, %468
  %479 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %480 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %479, i32 0, i32 3
  %481 = call i32 @mtx_destroy(i32* %480)
  %482 = load %struct.bhndb_resources*, %struct.bhndb_resources** %8, align 8
  %483 = load i32, i32* @M_BHND, align 4
  %484 = call i32 @free(%struct.bhndb_resources* %482, i32 %483)
  store %struct.bhndb_resources* null, %struct.bhndb_resources** %4, align 8
  br label %485

485:                                              ; preds = %478, %423, %30
  %486 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  ret %struct.bhndb_resources* %486
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @rman_init(%struct.TYPE_9__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @bhndb_regwin_count(%struct.bhndb_regwin*, i64) #1

declare dso_local %struct.bhndb_resources* @bit_alloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @bhndb_alloc_host_resources(%struct.TYPE_10__**, i32, i32, %struct.bhndb_hwcfg*) #1

declare dso_local i32* @bhndb_host_resource_for_regwin(%struct.TYPE_10__*, %struct.bhndb_regwin*) #1

declare dso_local i64 @rman_get_size(i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i8* @rman_get_end(%struct.resource*) #1

declare dso_local i32 @rman_fini(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.bhndb_resources*, i32) #1

declare dso_local i32 @bhndb_release_host_resources(%struct.TYPE_10__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
