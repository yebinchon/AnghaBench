; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.gdt_ccb = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GDT_D_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"iir_shutdown(%p, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Flushing all Host Drives. Please wait ...  \00", align 1
@M_GDTBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"iir_shutdown(): Cannot allocate resource\0A\00", align 1
@GDT_SHUTDOWN = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"iirshw\00", align 1
@hz = common dso_local global i32 0, align 4
@GDT_MAX_HDRIVES = common dso_local global i32 0, align 4
@GDT_CACHESERVICE = common dso_local global i32 0, align 4
@GDT_FLUSH = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @iir_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iir_shutdown(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdt_softc*, align 8
  %6 = alloca %struct.gdt_ccb*, align 8
  %7 = alloca %struct.gdt_ccb*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.gdt_softc*
  store %struct.gdt_softc* %10, %struct.gdt_softc** %5, align 8
  %11 = load i32, i32* @GDT_D_CMD, align 4
  %12 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @GDT_DPRINTF(i32 %11, i8* %15)
  %17 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %18 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @M_GDTBUF, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call %struct.gdt_ccb* @malloc(i32 16, i32 %21, i32 %22)
  store %struct.gdt_ccb* %23, %struct.gdt_ccb** %7, align 8
  %24 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %25 = icmp eq %struct.gdt_ccb* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %29 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %119

32:                                               ; preds = %2
  %33 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %34 = call i32 @bzero(%struct.gdt_ccb* %33, i32 16)
  %35 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %36 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load i32, i32* @GDT_SHUTDOWN, align 4
  %39 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %40 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %42 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %41, i32 0, i32 3
  %43 = call %struct.gdt_ccb* @SLIST_FIRST(i32* %42)
  store %struct.gdt_ccb* %43, %struct.gdt_ccb** %6, align 8
  %44 = icmp ne %struct.gdt_ccb* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %32
  %46 = load %struct.gdt_ccb*, %struct.gdt_ccb** %6, align 8
  %47 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %48 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %47, i32 0, i32 0
  %49 = load i32, i32* @PCATCH, align 4
  %50 = load i32, i32* @PRIBIO, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @hz, align 4
  %53 = mul nsw i32 100, %52
  %54 = call i32 @mtx_sleep(%struct.gdt_ccb* %46, i32* %48, i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %45, %32
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %108, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @GDT_MAX_HDRIVES, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %111

60:                                               ; preds = %56
  %61 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %62 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %107

70:                                               ; preds = %60
  %71 = load i32, i32* @GDT_CACHESERVICE, align 4
  %72 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %73 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @GDT_FLUSH, align 4
  %75 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %76 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %79 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %83 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %82, i32 0, i32 1
  %84 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %85 = load i32, i32* @links, align 4
  %86 = call i32 @TAILQ_INSERT_TAIL(i32* %83, %struct.gdt_ccb* %84, i32 %85)
  %87 = load i32, i32* @FALSE, align 4
  %88 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %89 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %91 = call i32 @gdt_next(%struct.gdt_softc* %90)
  %92 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %93 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %70
  %97 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %98 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %99 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %98, i32 0, i32 0
  %100 = load i32, i32* @PCATCH, align 4
  %101 = load i32, i32* @PRIBIO, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @hz, align 4
  %104 = mul nsw i32 10, %103
  %105 = call i32 @mtx_sleep(%struct.gdt_ccb* %97, i32* %99, i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %96, %70
  br label %107

107:                                              ; preds = %106, %60
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %56

111:                                              ; preds = %56
  %112 = load %struct.gdt_softc*, %struct.gdt_softc** %5, align 8
  %113 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %112, i32 0, i32 0
  %114 = call i32 @mtx_unlock(i32* %113)
  %115 = load %struct.gdt_ccb*, %struct.gdt_ccb** %7, align 8
  %116 = load i32, i32* @M_DEVBUF, align 4
  %117 = call i32 @free(%struct.gdt_ccb* %115, i32 %116)
  %118 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %111, %26
  ret void
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.gdt_ccb* @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bzero(%struct.gdt_ccb*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.gdt_ccb* @SLIST_FIRST(i32*) #1

declare dso_local i32 @mtx_sleep(%struct.gdt_ccb*, i32*, i32, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.gdt_ccb*, i32) #1

declare dso_local i32 @gdt_next(%struct.gdt_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.gdt_ccb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
