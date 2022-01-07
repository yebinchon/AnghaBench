; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i8*, %struct.TYPE_6__**, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, %struct.trxd*, i32 }
%struct.trxd = type { %struct.trxd*, %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64* }

@UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: tx_intr when not UP\0A\00", align 1
@time_second = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn_softc*, i32)* @mn_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn_tx_intr(%struct.mn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.trxd*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.mn_softc* %0, %struct.mn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 31
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %105

19:                                               ; preds = %2
  %20 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %105

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %82, %36
  %38 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.trxd*, %struct.trxd** %45, align 8
  store %struct.trxd* %46, %struct.trxd** %6, align 8
  %47 = load %struct.trxd*, %struct.trxd** %6, align 8
  %48 = call i64 @vtophys(%struct.trxd* %47)
  %49 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %48, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %105

59:                                               ; preds = %37
  %60 = load %struct.trxd*, %struct.trxd** %6, align 8
  %61 = getelementptr inbounds %struct.trxd, %struct.trxd* %60, i32 0, i32 1
  %62 = load %struct.mbuf*, %struct.mbuf** %61, align 8
  store %struct.mbuf* %62, %struct.mbuf** %7, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %64 = icmp ne %struct.mbuf* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %71 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, %69
  store i32 %79, i32* %77, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %81 = call i32 @m_freem(%struct.mbuf* %80)
  br label %82

82:                                               ; preds = %65, %59
  %83 = load i32, i32* @time_second, align 4
  %84 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %85 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %86, i64 %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i32 %83, i32* %91, align 8
  %92 = load %struct.trxd*, %struct.trxd** %6, align 8
  %93 = getelementptr inbounds %struct.trxd, %struct.trxd* %92, i32 0, i32 0
  %94 = load %struct.trxd*, %struct.trxd** %93, align 8
  %95 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %96 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store %struct.trxd* %94, %struct.trxd** %102, align 8
  %103 = load %struct.trxd*, %struct.trxd** %6, align 8
  %104 = call i32 @mn_free_desc(%struct.trxd* %103)
  br label %37

105:                                              ; preds = %58, %31, %18
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @vtophys(%struct.trxd*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mn_free_desc(%struct.trxd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
