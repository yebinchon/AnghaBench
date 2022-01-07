; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.softdma_channel = type { i64, i32, i32, %struct.softdma_softc* }
%struct.softdma_softc = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"softdma_wait\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @softdma_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @softdma_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.softdma_channel*, align 8
  %5 = alloca %struct.softdma_softc*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.softdma_channel*
  store %struct.softdma_channel* %7, %struct.softdma_channel** %4, align 8
  %8 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %9 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %8, i32 0, i32 3
  %10 = load %struct.softdma_softc*, %struct.softdma_softc** %9, align 8
  store %struct.softdma_softc* %10, %struct.softdma_softc** %5, align 8
  br label %11

11:                                               ; preds = %1, %27
  %12 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %13 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %12, i32 0, i32 1
  %14 = call i32 @mtx_lock(i32* %13)
  br label %15

15:                                               ; preds = %22, %11
  %16 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %17 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %18 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %17, i32 0, i32 1
  %19 = load i32, i32* @hz, align 4
  %20 = sdiv i32 %19, 2
  %21 = call i32 @mtx_sleep(%struct.softdma_channel* %16, i32* %18, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %24 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %15, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %31 = call i32 @softdma_process_descriptors(%struct.softdma_channel* %30, %struct.TYPE_4__* %3)
  %32 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %33 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %35 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @xdma_callback(i32 %36, %struct.TYPE_4__* %3)
  %38 = load %struct.softdma_channel*, %struct.softdma_channel** %4, align 8
  %39 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %38, i32 0, i32 1
  %40 = call i32 @mtx_unlock(i32* %39)
  br label %11
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_sleep(%struct.softdma_channel*, i32*, i32, i8*, i32) #1

declare dso_local i32 @softdma_process_descriptors(%struct.softdma_channel*, %struct.TYPE_4__*) #1

declare dso_local i32 @xdma_callback(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
