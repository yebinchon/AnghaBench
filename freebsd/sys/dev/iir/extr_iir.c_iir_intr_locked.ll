; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_intr_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_intr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32, {}*, i32, i32, i32, %struct.TYPE_18__, i32, i32, %struct.gdt_ccb*, i32, i32, i32 (%struct.gdt_softc*, %struct.gdt_intr_ctx*)*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.gdt_ccb = type { i32, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.gdt_intr_ctx = type opaque
%struct.gdt_intr_ctx.0 = type { i32, i32, i32, i32, i32 }

@GDT_D_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"gdt_intr(%p)\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@GDT_POLLING = common dso_local global i32 0, align 4
@GDT_POLL_WAIT = common dso_local global i32 0, align 4
@GDT_S_NO_STATUS = common dso_local global i32 0, align 4
@GDT_ASYNCINDEX = common dso_local global i32 0, align 4
@GDT_SPEZINDEX = common dso_local global i32 0, align 4
@GDT_D_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: Service unknown or not initialized!\0A\00", align 1
@GDT_ES_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: Index (%d) to unused command!\0A\00", align 1
@GDT_S_BSY = common dso_local global i32 0, align 4
@GDT_D_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"iir_intr(%p) ioctl: gccb %p busy\0A\00", align 1
@links = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GDT_CACHESERVICE = common dso_local global i32 0, align 4
@GDT_IOCTL = common dso_local global i32 0, align 4
@GDT_SECTOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iir_intr_locked(%struct.gdt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdt_softc*, align 8
  %4 = alloca %struct.gdt_intr_ctx.0, align 4
  %5 = alloca %struct.gdt_ccb*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  store %struct.gdt_softc* %0, %struct.gdt_softc** %3, align 8
  %8 = load i32, i32* @GDT_D_INTR, align 4
  %9 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %10 = bitcast %struct.gdt_softc* %9 to i8*
  %11 = call i32 @GDT_DPRINTF(i32 %8, i8* %10)
  %12 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %12, i32 0, i32 12
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* %13, i32 %14)
  %16 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %17 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GDT_POLLING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GDT_POLL_WAIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %308

30:                                               ; preds = %22, %1
  %31 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %32 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %31, i32 0, i32 1
  %33 = bitcast {}** %32 to i32 (%struct.gdt_softc*)**
  %34 = load i32 (%struct.gdt_softc*)*, i32 (%struct.gdt_softc*)** %33, align 8
  %35 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %36 = call i32 %34(%struct.gdt_softc* %35)
  %37 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load i32, i32* @GDT_S_NO_STATUS, align 4
  %43 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %44 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %2, align 4
  br label %308

47:                                               ; preds = %30
  %48 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %49 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %48, i32 0, i32 11
  %50 = load i32 (%struct.gdt_softc*, %struct.gdt_intr_ctx*)*, i32 (%struct.gdt_softc*, %struct.gdt_intr_ctx*)** %49, align 8
  %51 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %52 = bitcast %struct.gdt_intr_ctx.0* %4 to %struct.gdt_intr_ctx*
  %53 = call i32 %50(%struct.gdt_softc* %51, %struct.gdt_intr_ctx* %52)
  %54 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %57 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %61 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %65 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %69 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @GDT_ASYNCINDEX, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %47
  %75 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %76 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @gdt_async_event(%struct.gdt_softc* %75, i32 %77)
  %79 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %2, align 4
  br label %308

81:                                               ; preds = %47
  %82 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GDT_SPEZINDEX, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %81
  %87 = load i32, i32* @GDT_D_INVALID, align 4
  %88 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %89 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @device_get_nameunit(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @GDT_DPRINTF(i32 %87, i8* %93)
  %95 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %96 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32 8, i32* %97, align 4
  %98 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %99 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %102 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* @GDT_ES_DRIVER, align 4
  %107 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %108 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %107, i32 0, i32 5
  %109 = call i32 @gdt_store_event(i32 %106, i32 4, %struct.TYPE_18__* %108)
  %110 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %2, align 4
  br label %308

112:                                              ; preds = %81
  %113 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %114 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %113, i32 0, i32 8
  %115 = load %struct.gdt_ccb*, %struct.gdt_ccb** %114, align 8
  %116 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %115, i64 %119
  store %struct.gdt_ccb* %120, %struct.gdt_ccb** %5, align 8
  %121 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %122 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %126 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %292 [
    i32 128, label %128
    i32 130, label %164
    i32 129, label %165
  ]

128:                                              ; preds = %112
  %129 = load i32, i32* @GDT_D_INVALID, align 4
  %130 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %131 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @device_get_nameunit(i32 %132)
  %134 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 @GDT_DPRINTF(i32 %129, i8* %137)
  %139 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %140 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  store i32 8, i32* %141, align 4
  %142 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %143 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %146 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  store i32 %144, i32* %149, align 4
  %150 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %153 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 4
  %157 = load i32, i32* @GDT_ES_DRIVER, align 4
  %158 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %159 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %158, i32 0, i32 5
  %160 = call i32 @gdt_store_event(i32 %157, i32 1, %struct.TYPE_18__* %159)
  %161 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %162 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %163 = call i32 @gdt_free_ccb(%struct.gdt_softc* %161, %struct.gdt_ccb* %162)
  br label %305

164:                                              ; preds = %112
  br label %305

165:                                              ; preds = %112
  %166 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %167 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %166, i32 0, i32 2
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  store %struct.TYPE_17__* %168, %struct.TYPE_17__** %6, align 8
  %169 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %170 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @GDT_S_BSY, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %165
  %175 = load i32, i32* @GDT_D_DEBUG, align 4
  %176 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %177 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %178 = bitcast %struct.gdt_ccb* %177 to i8*
  %179 = call i32 @GDT_DPRINTF(i32 %175, i8* %178)
  %180 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %181 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %180, i32 0, i32 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %183 = load i32, i32* @links, align 4
  %184 = call i32 @TAILQ_INSERT_HEAD(i32* %181, %struct.TYPE_17__* %182, i32 %183)
  br label %289

185:                                              ; preds = %165
  %186 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %187 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  %191 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %192 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @TRUE, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @GDT_CACHESERVICE, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %249

204:                                              ; preds = %185
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @GDT_IOCTL, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %228

210:                                              ; preds = %204
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %210
  %219 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %220 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @bcopy(i32 %221, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %218, %210
  br label %248

228:                                              ; preds = %204
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @GDT_SECTOR_SIZE, align 4
  %235 = mul nsw i32 %233, %234
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %228
  %239 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %240 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @bcopy(i32 %241, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %238, %228
  br label %248

248:                                              ; preds = %247, %227
  br label %283

249:                                              ; preds = %185
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %249
  %258 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %259 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @bcopy(i32 %260, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %257, %249
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %266
  %274 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %275 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @bcopy(i32 %276, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %273, %266
  br label %283

283:                                              ; preds = %282, %248
  %284 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %285 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %286 = call i32 @gdt_free_ccb(%struct.gdt_softc* %284, %struct.gdt_ccb* %285)
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %288 = call i32 @wakeup(%struct.TYPE_17__* %287)
  br label %289

289:                                              ; preds = %283, %174
  %290 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %291 = call i32 @gdt_next(%struct.gdt_softc* %290)
  br label %305

292:                                              ; preds = %112
  %293 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %294 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %295 = call i32 @gdt_free_ccb(%struct.gdt_softc* %293, %struct.gdt_ccb* %294)
  %296 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %297 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %302 = call i32 @gdt_sync_event(%struct.gdt_softc* %296, i32 %298, i32 %300, %struct.gdt_ccb* %301)
  %303 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %304 = call i32 @gdt_next(%struct.gdt_softc* %303)
  br label %305

305:                                              ; preds = %292, %289, %164, %128
  %306 = getelementptr inbounds %struct.gdt_intr_ctx.0, %struct.gdt_intr_ctx.0* %4, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %305, %86, %74, %41, %29
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @gdt_async_event(%struct.gdt_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @gdt_store_event(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @gdt_free_ccb(%struct.gdt_softc*, %struct.gdt_ccb*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_17__*) #1

declare dso_local i32 @gdt_next(%struct.gdt_softc*) #1

declare dso_local i32 @gdt_sync_event(%struct.gdt_softc*, i32, i32, %struct.gdt_ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
