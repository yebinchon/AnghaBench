; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_intr_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_intr_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i32, i32 }

@TWS_INVALID_REQID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"invalid req_id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_softc*)* @tws_intr_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_intr_resp(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  br label %5

5:                                                ; preds = %31, %18, %1
  %6 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %7 = call i64 @tws_get_response(%struct.tws_softc* %6, i64* %3, i32* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %11 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @TWS_INVALID_REQID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %9
  %19 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21)
  %23 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %24 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @tws_err_complete(%struct.tws_softc* %28, i32 %29)
  br label %5

31:                                               ; preds = %9
  %32 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %33 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %37, align 8
  %39 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %40 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = call i32 %38(%struct.TYPE_4__* %43)
  br label %5

45:                                               ; preds = %5
  ret void
}

declare dso_local i64 @tws_get_response(%struct.tws_softc*, i64*, i32*) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i64) #1

declare dso_local i32 @tws_err_complete(%struct.tws_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
