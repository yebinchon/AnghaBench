; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_setup_hca.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_setup_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Failed to initialize user access region table, aborting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to allocate driver access region, aborting.\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Couldn't map kernel access region, aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Failed to initialize protection domain table, aborting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Failed to initialize memory region table, aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to create driver PD, aborting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Failed to initialize event queue table, aborting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Failed to switch to event-driven firmware commands, aborting.\0A\00", align 1
@MTHCA_FLAG_MSI_X = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"NOP command failed to generate interrupt (IRQ %d).\0A\00", align 1
@MTHCA_EQ_CMD = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"Trying again with MSI-X disabled.\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"NOP command failed to generate interrupt (IRQ %d), aborting.\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"BIOS or ACPI interrupt routing problem?\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"NOP command IRQ test passed\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Failed to initialize completion queue table, aborting.\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"Failed to initialize shared receive queue table, aborting.\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Failed to initialize queue pair table, aborting.\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Failed to initialize address vector table, aborting.\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Failed to initialize multicast group table, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_setup_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_setup_hca(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %5, i32 0, i32 6
  %7 = call i32 @MTHCA_INIT_DOORBELL_LOCK(i32* %6)
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = call i32 @mthca_init_uar_table(%struct.mthca_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %13, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %211

16:                                               ; preds = %1
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %18, i32 0, i32 1
  %20 = call i32 @mthca_uar_alloc(%struct.mthca_dev* %17, %struct.TYPE_9__* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %25 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %207

26:                                               ; preds = %16
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call i32 @ioremap(i32 %33, i32 %34)
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %26
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %44 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %202

47:                                               ; preds = %26
  %48 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %49 = call i32 @mthca_init_pd_table(%struct.mthca_dev* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %54 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  br label %197

55:                                               ; preds = %47
  %56 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %57 = call i32 @mthca_init_mr_table(%struct.mthca_dev* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %62 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %194

63:                                               ; preds = %55
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %65 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %65, i32 0, i32 3
  %67 = call i32 @mthca_pd_alloc(%struct.mthca_dev* %64, i32 1, i32* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %72 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %191

73:                                               ; preds = %63
  %74 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %75 = call i32 @mthca_init_eq_table(%struct.mthca_dev* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %80 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %186

81:                                               ; preds = %73
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %83 = call i32 @mthca_cmd_use_events(%struct.mthca_dev* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %88 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %87, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  br label %183

89:                                               ; preds = %81
  %90 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %91 = call i32 @mthca_NOP(%struct.mthca_dev* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %125

94:                                               ; preds = %89
  %95 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %96 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MTHCA_FLAG_MSI_X, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %103 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %104 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i64, i64* @MTHCA_EQ_CMD, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %102, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  %112 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %113 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %124

114:                                              ; preds = %94
  %115 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %116 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %117 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %116, i32 0, i32 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %120)
  %122 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %123 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %124

124:                                              ; preds = %114, %101
  br label %180

125:                                              ; preds = %89
  %126 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %127 = call i32 @mthca_dbg(%struct.mthca_dev* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %128 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %129 = call i32 @mthca_init_cq_table(%struct.mthca_dev* %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %134 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %133, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  br label %180

135:                                              ; preds = %125
  %136 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %137 = call i32 @mthca_init_srq_table(%struct.mthca_dev* %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %142 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %141, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0))
  br label %177

143:                                              ; preds = %135
  %144 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %145 = call i32 @mthca_init_qp_table(%struct.mthca_dev* %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %150 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  br label %174

151:                                              ; preds = %143
  %152 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %153 = call i32 @mthca_init_av_table(%struct.mthca_dev* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %158 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %157, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0))
  br label %171

159:                                              ; preds = %151
  %160 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %161 = call i32 @mthca_init_mcg_table(%struct.mthca_dev* %160)
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %166 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %165, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  br label %168

167:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %211

168:                                              ; preds = %164
  %169 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %170 = call i32 @mthca_cleanup_av_table(%struct.mthca_dev* %169)
  br label %171

171:                                              ; preds = %168, %156
  %172 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %173 = call i32 @mthca_cleanup_qp_table(%struct.mthca_dev* %172)
  br label %174

174:                                              ; preds = %171, %148
  %175 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %176 = call i32 @mthca_cleanup_srq_table(%struct.mthca_dev* %175)
  br label %177

177:                                              ; preds = %174, %140
  %178 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %179 = call i32 @mthca_cleanup_cq_table(%struct.mthca_dev* %178)
  br label %180

180:                                              ; preds = %177, %132, %124
  %181 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %182 = call i32 @mthca_cmd_use_polling(%struct.mthca_dev* %181)
  br label %183

183:                                              ; preds = %180, %86
  %184 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %185 = call i32 @mthca_cleanup_eq_table(%struct.mthca_dev* %184)
  br label %186

186:                                              ; preds = %183, %78
  %187 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %188 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %189 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %188, i32 0, i32 3
  %190 = call i32 @mthca_pd_free(%struct.mthca_dev* %187, i32* %189)
  br label %191

191:                                              ; preds = %186, %70
  %192 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %193 = call i32 @mthca_cleanup_mr_table(%struct.mthca_dev* %192)
  br label %194

194:                                              ; preds = %191, %60
  %195 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %196 = call i32 @mthca_cleanup_pd_table(%struct.mthca_dev* %195)
  br label %197

197:                                              ; preds = %194, %52
  %198 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %199 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @iounmap(i32 %200)
  br label %202

202:                                              ; preds = %197, %42
  %203 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %204 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %205 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %204, i32 0, i32 1
  %206 = call i32 @mthca_uar_free(%struct.mthca_dev* %203, %struct.TYPE_9__* %205)
  br label %207

207:                                              ; preds = %202, %23
  %208 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %209 = call i32 @mthca_cleanup_uar_table(%struct.mthca_dev* %208)
  %210 = load i32, i32* %4, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %207, %167, %12
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @MTHCA_INIT_DOORBELL_LOCK(i32*) #1

declare dso_local i32 @mthca_init_uar_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_uar_alloc(%struct.mthca_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @mthca_init_pd_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_init_mr_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_pd_alloc(%struct.mthca_dev*, i32, i32*) #1

declare dso_local i32 @mthca_init_eq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cmd_use_events(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_NOP(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*) #1

declare dso_local i32 @mthca_init_cq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_init_srq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_init_qp_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_init_av_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_init_mcg_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_av_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_qp_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_srq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_cq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cmd_use_polling(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_eq_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_pd_free(%struct.mthca_dev*, i32*) #1

declare dso_local i32 @mthca_cleanup_mr_table(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_cleanup_pd_table(%struct.mthca_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mthca_uar_free(%struct.mthca_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @mthca_cleanup_uar_table(%struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
