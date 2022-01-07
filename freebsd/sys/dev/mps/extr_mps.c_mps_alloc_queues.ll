; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_alloc_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_alloc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, %struct.mps_queue* }
%struct.mps_queue = type { i32, %struct.mps_softc* }

@MPS_INIT = common dso_local global i32 0, align 4
@MPS_XINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Allocating %d I/O queues\0A\00", align 1
@M_MPT2 = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Configuring queue %d %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*)* @mps_alloc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_alloc_queues(%struct.mps_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca %struct.mps_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  %7 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %11 = load i32, i32* @MPS_INIT, align 4
  %12 = load i32, i32* @MPS_XINFO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (%struct.mps_softc*, i32, i8*, i32, ...) @mps_dprint(%struct.mps_softc* %10, i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 16, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @M_MPT2, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.mps_queue* @malloc(i32 %19, i32 %20, i32 %23)
  %25 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %25, i32 0, i32 1
  store %struct.mps_queue* %24, %struct.mps_queue** %26, align 8
  %27 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %27, i32 0, i32 1
  %29 = load %struct.mps_queue*, %struct.mps_queue** %28, align 8
  %30 = icmp eq %struct.mps_queue* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %39, i32 0, i32 1
  %41 = load %struct.mps_queue*, %struct.mps_queue** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mps_queue, %struct.mps_queue* %41, i64 %43
  store %struct.mps_queue* %44, %struct.mps_queue** %4, align 8
  %45 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %46 = load i32, i32* @MPS_INIT, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mps_queue*, %struct.mps_queue** %4, align 8
  %49 = call i32 (%struct.mps_softc*, i32, i8*, i32, ...) @mps_dprint(%struct.mps_softc* %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %47, %struct.mps_queue* %48)
  %50 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %51 = load %struct.mps_queue*, %struct.mps_queue** %4, align 8
  %52 = getelementptr inbounds %struct.mps_queue, %struct.mps_queue* %51, i32 0, i32 1
  store %struct.mps_softc* %50, %struct.mps_softc** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.mps_queue*, %struct.mps_queue** %4, align 8
  %55 = getelementptr inbounds %struct.mps_queue, %struct.mps_queue* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %38
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %34

59:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @mps_dprint(%struct.mps_softc*, i32, i8*, i32, ...) #1

declare dso_local %struct.mps_queue* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
