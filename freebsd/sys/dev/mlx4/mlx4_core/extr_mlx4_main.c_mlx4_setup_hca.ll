; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_setup_hca.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_setup_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32*, i32*, i8** }
%struct.mlx4_priv = type { %struct.TYPE_15__, i32, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8** }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Failed to initialize user access region table, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to allocate driver access region, aborting\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Couldn't map kernel access region, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Failed to initialize protection domain table, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Failed to initialize reliable connection domain table, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Failed to initialize memory region table, aborting\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Failed to initialize multicast group table, aborting\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed in config_mad_demux, aborting\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Failed to initialize event queue table, aborting\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"Failed to switch to event-driven firmware commands, aborting\0A\00", align 1
@MLX4_FLAG_MSI_X = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [56 x i8] c"NOP command failed to generate MSI-X interrupt IRQ %d)\0A\00", align 1
@MLX4_EQ_ASYNC = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"Trying again without MSI-X\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"NOP command failed to generate interrupt (IRQ %d), aborting\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"BIOS or ACPI interrupt routing problem?\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"NOP command IRQ test passed\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Failed to initialize completion queue table, aborting\0A\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"Failed to initialize shared receive queue table, aborting\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Failed to initialize queue pair table, aborting\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"Failed to initialize counters table, aborting\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Failed to allocate default counters, aborting\0A\00", align 1
@.str.20 = private unnamed_addr constant [78 x i8] c"failed to get port %d default ib capabilities (%d). Continuing with caps = 0\0A\00", align 1
@IB_MTU_2048 = common dso_local global i32 0, align 4
@IB_MTU_4096 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"Failed to set port %d, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_setup_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_setup_hca(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %10 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %4, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = call i32 @mlx4_init_uar_table(%struct.mlx4_dev* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %17 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %379

19:                                               ; preds = %1
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %21, i32 0, i32 0
  %23 = call i32 @mlx4_uar_alloc(%struct.mlx4_dev* %20, %struct.TYPE_15__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %28 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %375

29:                                               ; preds = %19
  %30 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @ioremap(i32 %36, i32 %37)
  %39 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %29
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %47 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %370

50:                                               ; preds = %29
  %51 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %52 = call i32 @mlx4_init_pd_table(%struct.mlx4_dev* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %57 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %365

58:                                               ; preds = %50
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %60 = call i32 @mlx4_init_xrcd_table(%struct.mlx4_dev* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %65 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %64, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %362

66:                                               ; preds = %58
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %68 = call i32 @mlx4_init_mr_table(%struct.mlx4_dev* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %73 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %359

74:                                               ; preds = %66
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %76 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %74
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %80 = call i32 @mlx4_init_mcg_table(%struct.mlx4_dev* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %85 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %356

86:                                               ; preds = %78
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %88 = call i32 @mlx4_config_mad_demux(%struct.mlx4_dev* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %93 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %348

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %74
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %97 = call i32 @mlx4_init_eq_table(%struct.mlx4_dev* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %102 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  br label %348

103:                                              ; preds = %95
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %105 = call i32 @mlx4_cmd_use_events(%struct.mlx4_dev* %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %110 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %109, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  br label %345

111:                                              ; preds = %103
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %113 = call i32 @mlx4_NOP(%struct.mlx4_dev* %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %111
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %118 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %125 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %126 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i64, i64* @MLX4_EQ_ASYNC, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %124, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  %134 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %135 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %149

136:                                              ; preds = %116
  %137 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %138 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %139 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = load i64, i64* @MLX4_EQ_ASYNC, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %137, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i32 %145)
  %147 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %148 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  br label %149

149:                                              ; preds = %136, %123
  br label %342

150:                                              ; preds = %111
  %151 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %152 = call i32 @mlx4_dbg(%struct.mlx4_dev* %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %153 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %154 = call i32 @mlx4_init_cq_table(%struct.mlx4_dev* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %159 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %158, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  br label %342

160:                                              ; preds = %150
  %161 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %162 = call i32 @mlx4_init_srq_table(%struct.mlx4_dev* %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %167 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %166, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0))
  br label %339

168:                                              ; preds = %160
  %169 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %170 = call i32 @mlx4_init_qp_table(%struct.mlx4_dev* %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %175 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %174, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0))
  br label %336

176:                                              ; preds = %168
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %178 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %194, label %180

180:                                              ; preds = %176
  %181 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %182 = call i32 @mlx4_init_counters_table(%struct.mlx4_dev* %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @ENOENT, align 4
  %188 = sub nsw i32 0, %187
  %189 = icmp ne i32 %186, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %192 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %191, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0))
  br label %333

193:                                              ; preds = %185, %180
  br label %194

194:                                              ; preds = %193, %176
  %195 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %196 = call i32 @mlx4_allocate_default_counters(%struct.mlx4_dev* %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %201 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %200, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  br label %325

202:                                              ; preds = %194
  %203 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %204 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %321, label %206

206:                                              ; preds = %202
  store i32 1, i32* %6, align 4
  br label %207

207:                                              ; preds = %317, %206
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %210 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp sle i32 %208, %212
  br i1 %213, label %214, label %320

214:                                              ; preds = %207
  store i8* null, i8** %7, align 8
  %215 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @mlx4_get_port_ib_caps(%struct.mlx4_dev* %215, i32 %216, i8** %7)
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %214
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %221, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.20, i64 0, i64 0), i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %220, %214
  %226 = load i8*, i8** %7, align 8
  %227 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %228 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 3
  %230 = load i8**, i8*** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  store i8* %226, i8** %233, align 8
  %234 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %235 = call i64 @mlx4_is_master(%struct.mlx4_dev* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %269

237:                                              ; preds = %225
  store i32 0, i32* %8, align 4
  br label %238

238:                                              ; preds = %265, %237
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %241 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %268

244:                                              ; preds = %238
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %247 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %246)
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %265

250:                                              ; preds = %244
  %251 = load i8*, i8** %7, align 8
  %252 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %253 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i8**, i8*** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  store i8* %251, i8** %264, align 8
  br label %265

265:                                              ; preds = %250, %249
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %238

268:                                              ; preds = %238
  br label %269

269:                                              ; preds = %268, %225
  %270 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %271 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load i32, i32* @IB_MTU_2048, align 4
  %275 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %276 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32 %274, i32* %281, align 4
  br label %291

282:                                              ; preds = %269
  %283 = load i32, i32* @IB_MTU_4096, align 4
  %284 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %285 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %283, i32* %290, align 4
  br label %291

291:                                              ; preds = %282, %273
  %292 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %293 = load i32, i32* %6, align 4
  %294 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %295 = call i64 @mlx4_is_master(%struct.mlx4_dev* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %291
  %298 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %299 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  br label %307

306:                                              ; preds = %291
  br label %307

307:                                              ; preds = %306, %297
  %308 = phi i32 [ %305, %297 ], [ -1, %306 ]
  %309 = call i32 @mlx4_SET_PORT(%struct.mlx4_dev* %292, i32 %293, i32 %308)
  store i32 %309, i32* %5, align 4
  %310 = load i32, i32* %5, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %307
  %313 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %314 = load i32, i32* %6, align 4
  %315 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %313, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %314)
  br label %322

316:                                              ; preds = %307
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %6, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %6, align 4
  br label %207

320:                                              ; preds = %207
  br label %321

321:                                              ; preds = %320, %202
  store i32 0, i32* %2, align 4
  br label %379

322:                                              ; preds = %312
  %323 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %324 = call i32 @mlx4_cleanup_default_counters(%struct.mlx4_dev* %323)
  br label %325

325:                                              ; preds = %322, %199
  %326 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %327 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %325
  %330 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %331 = call i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev* %330)
  br label %332

332:                                              ; preds = %329, %325
  br label %333

333:                                              ; preds = %332, %190
  %334 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %335 = call i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev* %334)
  br label %336

336:                                              ; preds = %333, %173
  %337 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %338 = call i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev* %337)
  br label %339

339:                                              ; preds = %336, %165
  %340 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %341 = call i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev* %340)
  br label %342

342:                                              ; preds = %339, %157, %149
  %343 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %344 = call i32 @mlx4_cmd_use_polling(%struct.mlx4_dev* %343)
  br label %345

345:                                              ; preds = %342, %108
  %346 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %347 = call i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev* %346)
  br label %348

348:                                              ; preds = %345, %100, %91
  %349 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %350 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %348
  %353 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %354 = call i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev* %353)
  br label %355

355:                                              ; preds = %352, %348
  br label %356

356:                                              ; preds = %355, %83
  %357 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %358 = call i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev* %357)
  br label %359

359:                                              ; preds = %356, %71
  %360 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %361 = call i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev* %360)
  br label %362

362:                                              ; preds = %359, %63
  %363 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %364 = call i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev* %363)
  br label %365

365:                                              ; preds = %362, %55
  %366 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %367 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @iounmap(i32 %368)
  br label %370

370:                                              ; preds = %365, %45
  %371 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %372 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %373 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %372, i32 0, i32 0
  %374 = call i32 @mlx4_uar_free(%struct.mlx4_dev* %371, %struct.TYPE_15__* %373)
  br label %375

375:                                              ; preds = %370, %26
  %376 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %377 = call i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev* %376)
  %378 = load i32, i32* %5, align 4
  store i32 %378, i32* %2, align 4
  br label %379

379:                                              ; preds = %375, %321, %15
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_uar_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_uar_alloc(%struct.mlx4_dev*, %struct.TYPE_15__*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @mlx4_init_pd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_xrcd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_mr_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_mcg_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_config_mad_demux(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_use_events(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_NOP(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_init_cq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_srq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_qp_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_counters_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_allocate_default_counters(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_port_ib_caps(%struct.mlx4_dev*, i32, i8**) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_SET_PORT(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_cleanup_default_counters(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_use_polling(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mlx4_uar_free(%struct.mlx4_dev*, %struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
