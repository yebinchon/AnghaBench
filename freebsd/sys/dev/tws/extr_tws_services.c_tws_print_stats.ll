; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_print_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"reqs(in, out)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"reqs(err, intrs)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"reqs(ioctls, scsi)\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_print_stats(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tws_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tws_softc*
  store %struct.tws_softc* %5, %struct.tws_softc** %3, align 8
  %6 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %7 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TWS_TRACE(%struct.tws_softc* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %17 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %18 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %22 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @TWS_TRACE(%struct.tws_softc* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %27 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %28 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %32 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TWS_TRACE(%struct.tws_softc* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %37 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %36, i32 0, i32 0
  %38 = load i32, i32* @hz, align 4
  %39 = mul nsw i32 300, %38
  %40 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %41 = call i32 @callout_reset(i32* %37, i32 %39, void (i8*)* @tws_print_stats, %struct.tws_softc* %40)
  ret void
}

declare dso_local i32 @TWS_TRACE(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.tws_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
