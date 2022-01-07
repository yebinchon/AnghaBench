; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_interrupt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_interrupt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32, %struct.bxe_softc*, i32, i8*, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bxe_fastpath = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32, %struct.bxe_fastpath*, i32, i8*, i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"bxe%d_sp_tq\00", align 1
@bxe_handle_sp_tq = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bxe%d_fp%d_tq\00", align 1
@bxe_handle_fp_tq = common dso_local global i32 0, align 4
@bxe_tx_mq_start_deferred = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@INTR_MODE_MSIX = common dso_local global i64 0, align 8
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Enabling slowpath MSI-X[0] vector\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@bxe_intr_sp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to allocate MSI-X[0] vector (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Enabling MSI-X[%d] vector\0A\00", align 1
@bxe_intr_fp = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to allocate MSI-X[%d] vector (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"fp%02d\00", align 1
@BXE_FP_STATE_IRQ = common dso_local global i32 0, align 4
@INTR_MODE_MSI = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"Enabling MSI[0] vector\0A\00", align 1
@bxe_intr_legacy = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"Failed to allocate MSI[0] vector (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Enabling INTx interrupts\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Failed to allocate INTx interrupt (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_interrupt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_interrupt_attach(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_fastpath*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 12
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %8, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %13, i32 0, i32 14
  %15 = load i32, i32* @bxe_handle_sp_tq, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = call i32 @TASK_INIT(i32* %14, i32 0, i32 %15, %struct.bxe_softc* %16)
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 13
  %25 = call i8* @taskqueue_create(i32 %20, i32 %21, i32 %22, i8** %24)
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %26, i32 0, i32 13
  store i8* %25, i8** %27, align 8
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %28, i32 0, i32 13
  %30 = load i32, i32* @PWAIT, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @taskqueue_start_threads(i8** %29, i32 1, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %95, %1
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %98

41:                                               ; preds = %35
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %42, i32 0, i32 6
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %44, i64 %46
  %48 = bitcast %struct.bxe_softc* %47 to %struct.bxe_fastpath*
  store %struct.bxe_fastpath* %48, %struct.bxe_fastpath** %3, align 8
  %49 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %50 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %53 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %58 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %57, i32 0, i32 11
  %59 = load i32, i32* @bxe_handle_fp_tq, align 4
  %60 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %61 = bitcast %struct.bxe_fastpath* %60 to %struct.bxe_softc*
  %62 = call i32 @TASK_INIT(i32* %58, i32 0, i32 %59, %struct.bxe_softc* %61)
  %63 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %64 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %63, i32 0, i32 10
  %65 = load i32, i32* @bxe_tx_mq_start_deferred, align 4
  %66 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %67 = bitcast %struct.bxe_fastpath* %66 to %struct.bxe_softc*
  %68 = call i32 @TASK_INIT(i32* %64, i32 0, i32 %65, %struct.bxe_softc* %67)
  %69 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %70 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @M_NOWAIT, align 4
  %73 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %74 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %75 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %74, i32 0, i32 8
  %76 = call i8* @taskqueue_create(i32 %71, i32 %72, i32 %73, i8** %75)
  %77 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %78 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  %79 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %80 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %79, i32 0, i32 8
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %83 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %82, i32 0, i32 9
  %84 = load i32, i32* @bxe_tx_mq_start_deferred, align 4
  %85 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %86 = bitcast %struct.bxe_fastpath* %85 to %struct.bxe_softc*
  %87 = call i32 @TIMEOUT_TASK_INIT(i8* %81, i32* %83, i32 0, i32 %84, %struct.bxe_softc* %86)
  %88 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %89 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %88, i32 0, i32 8
  %90 = load i32, i32* @PI_NET, align 4
  %91 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %92 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @taskqueue_start_threads(i8** %89, i32 1, i32 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %41
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %35

98:                                               ; preds = %35
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %100 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @INTR_MODE_MSIX, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %254

104:                                              ; preds = %98
  %105 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %106 = load i32, i32* @DBG_LOAD, align 4
  %107 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %105, i32 %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %109 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %112 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @INTR_TYPE_NET, align 4
  %118 = load i32, i32* @INTR_MPSAFE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @bxe_intr_sp, align 4
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %123 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = call i32 @bus_setup_intr(i32 %110, i32 %116, i32 %119, i32* null, i32 %120, %struct.bxe_softc* %121, i32* %126)
  store i32 %127, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %104
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %322

133:                                              ; preds = %104
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %135 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %138 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %144 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i32, i32, i8*, ...) @bus_describe_intr(i32 %136, i32 %142, i32 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %250, %133
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %153 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %253

156:                                              ; preds = %150
  %157 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %158 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %157, i32 0, i32 6
  %159 = load %struct.bxe_softc*, %struct.bxe_softc** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %159, i64 %161
  %163 = bitcast %struct.bxe_softc* %162 to %struct.bxe_fastpath*
  store %struct.bxe_fastpath* %163, %struct.bxe_fastpath** %3, align 8
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %165 = load i32, i32* @DBG_LOAD, align 4
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  %168 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %164, i32 %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  %169 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %170 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %173 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %172, i32 0, i32 3
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @INTR_TYPE_NET, align 4
  %182 = load i32, i32* @INTR_MPSAFE, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @bxe_intr_fp, align 4
  %185 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %186 = bitcast %struct.bxe_fastpath* %185 to %struct.bxe_softc*
  %187 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %188 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %187, i32 0, i32 3
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = call i32 @bus_setup_intr(i32 %171, i32 %180, i32 %183, i32* null, i32 %184, %struct.bxe_softc* %186, i32* %194)
  store i32 %195, i32* %4, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %156
  %198 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, 1
  %201 = load i32, i32* %4, align 4
  %202 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %198, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %200, i32 %201)
  br label %322

203:                                              ; preds = %156
  %204 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %205 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %208 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %207, i32 0, i32 3
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %217 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %216, i32 0, i32 3
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %5, align 4
  %226 = call i32 (i32, i32, i32, i8*, ...) @bus_describe_intr(i32 %206, i32 %215, i32 %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %225)
  %227 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %228 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %246

231:                                              ; preds = %203
  %232 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %233 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %236 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %235, i32 0, i32 3
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @bus_bind_intr(i32 %234, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %231, %203
  %247 = load i32, i32* @BXE_FP_STATE_IRQ, align 4
  %248 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %249 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %150

253:                                              ; preds = %150
  br label %321

254:                                              ; preds = %98
  %255 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %256 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @INTR_MODE_MSI, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %290

260:                                              ; preds = %254
  %261 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %262 = load i32, i32* @DBG_LOAD, align 4
  %263 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %261, i32 %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %264 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %265 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %268 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %267, i32 0, i32 3
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @INTR_TYPE_NET, align 4
  %274 = load i32, i32* @INTR_MPSAFE, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @bxe_intr_legacy, align 4
  %277 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %278 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %279 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %278, i32 0, i32 3
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i64 0
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = call i32 @bus_setup_intr(i32 %266, i32 %272, i32 %275, i32* null, i32 %276, %struct.bxe_softc* %277, i32* %282)
  store i32 %283, i32* %4, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %260
  %286 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %287 = load i32, i32* %4, align 4
  %288 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %286, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %287)
  br label %322

289:                                              ; preds = %260
  br label %320

290:                                              ; preds = %254
  %291 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %292 = load i32, i32* @DBG_LOAD, align 4
  %293 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %291, i32 %292, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %294 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %295 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %298 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %297, i32 0, i32 3
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i64 0
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @INTR_TYPE_NET, align 4
  %304 = load i32, i32* @INTR_MPSAFE, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* @bxe_intr_legacy, align 4
  %307 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %308 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %309 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %308, i32 0, i32 3
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i64 0
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 0
  %313 = call i32 @bus_setup_intr(i32 %296, i32 %302, i32 %305, i32* null, i32 %306, %struct.bxe_softc* %307, i32* %312)
  store i32 %313, i32* %4, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %290
  %316 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %317 = load i32, i32* %4, align 4
  %318 = call i32 (%struct.bxe_softc*, i8*, i32, ...) @BLOGE(%struct.bxe_softc* %316, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %317)
  br label %322

319:                                              ; preds = %290
  br label %320

320:                                              ; preds = %319, %289
  br label %321

321:                                              ; preds = %320, %253
  br label %322

322:                                              ; preds = %321, %315, %285, %197, %129
  %323 = load i32, i32* %4, align 4
  ret i32 %323
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.bxe_softc*) #1

declare dso_local i8* @taskqueue_create(i32, i32, i32, i8**) #1

declare dso_local i32 @taskqueue_start_threads(i8**, i32, i32, i8*, i32) #1

declare dso_local i32 @TIMEOUT_TASK_INIT(i8*, i32*, i32, i32, %struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.bxe_softc*, i32*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, ...) #1

declare dso_local i32 @bus_describe_intr(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @bus_bind_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
