; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-raid.c_pst_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { i32 }
%struct.i2o_single_reply = type { i64, i64, i64 }
%struct.pst_request = type { %struct.TYPE_6__*, i32, %struct.pst_softc* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.pst_softc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@M_PSTRAID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_softc*, i32, %struct.i2o_single_reply*)* @pst_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pst_done(%struct.iop_softc* %0, i32 %1, %struct.i2o_single_reply* %2) #0 {
  %4 = alloca %struct.iop_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_single_reply*, align 8
  %7 = alloca %struct.pst_request*, align 8
  %8 = alloca %struct.pst_softc*, align 8
  store %struct.iop_softc* %0, %struct.iop_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.i2o_single_reply* %2, %struct.i2o_single_reply** %6, align 8
  %9 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %6, align 8
  %10 = getelementptr inbounds %struct.i2o_single_reply, %struct.i2o_single_reply* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.pst_request*
  store %struct.pst_request* %12, %struct.pst_request** %7, align 8
  %13 = load %struct.pst_request*, %struct.pst_request** %7, align 8
  %14 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %13, i32 0, i32 2
  %15 = load %struct.pst_softc*, %struct.pst_softc** %14, align 8
  store %struct.pst_softc* %15, %struct.pst_softc** %8, align 8
  %16 = load %struct.pst_request*, %struct.pst_request** %7, align 8
  %17 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %16, i32 0, i32 1
  %18 = call i32 @callout_stop(i32* %17)
  %19 = load %struct.pst_request*, %struct.pst_request** %7, align 8
  %20 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %6, align 8
  %25 = getelementptr inbounds %struct.i2o_single_reply, %struct.i2o_single_reply* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.pst_request*, %struct.pst_request** %7, align 8
  %29 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 %27, i64* %31, align 8
  %32 = load %struct.pst_request*, %struct.pst_request** %7, align 8
  %33 = getelementptr inbounds %struct.pst_request, %struct.pst_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.i2o_single_reply*, %struct.i2o_single_reply** %6, align 8
  %36 = getelementptr inbounds %struct.i2o_single_reply, %struct.i2o_single_reply* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @EIO, align 4
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = call i32 @biofinish(%struct.TYPE_6__* %34, i32* null, i32 %43)
  %45 = load %struct.pst_request*, %struct.pst_request** %7, align 8
  %46 = load i32, i32* @M_PSTRAID, align 4
  %47 = call i32 @free(%struct.pst_request* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.pst_softc*, %struct.pst_softc** %8, align 8
  %50 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 4
  %55 = load %struct.pst_softc*, %struct.pst_softc** %8, align 8
  %56 = getelementptr inbounds %struct.pst_softc, %struct.pst_softc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.pst_softc*, %struct.pst_softc** %8, align 8
  %62 = call i32 @pst_start(%struct.pst_softc* %61)
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @biofinish(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @free(%struct.pst_request*, i32) #1

declare dso_local i32 @pst_start(%struct.pst_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
