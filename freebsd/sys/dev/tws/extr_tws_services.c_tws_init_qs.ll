; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_init_qs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_services.c_tws_init_qs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32**, i32** }

@TWS_MAX_QS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_init_qs(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  %4 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %5 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %4, i32 0, i32 0
  %6 = call i32 @mtx_lock(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TWS_MAX_QS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %13 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %12, i32 0, i32 2
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  store i32* null, i32** %17, align 8
  %18 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %19 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %29 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %28, i32 0, i32 0
  %30 = call i32 @mtx_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
