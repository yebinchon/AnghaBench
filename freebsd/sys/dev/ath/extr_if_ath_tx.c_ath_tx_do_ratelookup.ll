; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_do_ratelookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_do_ratelookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i8*, i8* }
%struct.ath_buf = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i8*, %struct.TYPE_5__*, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@ATH_TXMAXTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_buf*)* @ath_tx_do_ratelookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_do_ratelookup(%struct.ath_softc* %0, %struct.ath_buf* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_buf* %1, %struct.ath_buf** %4, align 8
  %8 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %9 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %101

14:                                               ; preds = %2
  %15 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %16 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @bzero(%struct.TYPE_5__* %18, i32 8)
  %20 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %21 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ATH_NODE(i32 %22)
  %24 = call i32 @ATH_NODE_LOCK(i32 %23)
  %25 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %26 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %27 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ATH_NODE(i32 %28)
  %30 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %31 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %35 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ath_rate_findrate(%struct.ath_softc* %25, i32 %29, i32 %33, i32 %37, i8** %6, i32* %7, i8** %5)
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %41 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i8* %39, i8** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %48 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i8* %46, i8** %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %55 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 8
  %60 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %61 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %14
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @ATH_TXMAXTRY, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %71 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %72 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ATH_NODE(i32 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %77 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i32 @ath_rate_getxtxrates(%struct.ath_softc* %70, i32 %74, i8* %75, %struct.TYPE_5__* %79)
  br label %81

81:                                               ; preds = %69, %65, %14
  %82 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %83 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ATH_NODE(i32 %84)
  %86 = call i32 @ATH_NODE_UNLOCK(i32 %85)
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %95 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %99 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  br label %101

101:                                              ; preds = %81, %13
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ATH_NODE_LOCK(i32) #1

declare dso_local i32 @ATH_NODE(i32) #1

declare dso_local i32 @ath_rate_findrate(%struct.ath_softc*, i32, i32, i32, i8**, i32*, i8**) #1

declare dso_local i32 @ath_rate_getxtxrates(%struct.ath_softc*, i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @ATH_NODE_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
