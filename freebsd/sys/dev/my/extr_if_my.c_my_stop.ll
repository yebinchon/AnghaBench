; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, %struct.ifnet* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.ifnet = type { i32 }

@MY_TCRRCR = common dso_local global i32 0, align 4
@MY_RE = common dso_local global i32 0, align 4
@MY_TE = common dso_local global i32 0, align 4
@MY_IMR = common dso_local global i32 0, align 4
@MY_TXLBA = common dso_local global i32 0, align 4
@MY_RXLBA = common dso_local global i32 0, align 4
@MY_RX_LIST_CNT = common dso_local global i32 0, align 4
@MY_TX_LIST_CNT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*)* @my_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_stop(%struct.my_softc* %0) #0 {
  %2 = alloca %struct.my_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  store %struct.my_softc* %0, %struct.my_softc** %2, align 8
  %5 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %6 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %5)
  %7 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %8 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %7, i32 0, i32 4
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %11 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %10, i32 0, i32 3
  %12 = call i32 @callout_stop(i32* %11)
  %13 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %14 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %13, i32 0, i32 2
  %15 = call i32 @callout_stop(i32* %14)
  %16 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %17 = load i32, i32* @MY_TCRRCR, align 4
  %18 = load i32, i32* @MY_RE, align 4
  %19 = load i32, i32* @MY_TE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @MY_CLRBIT(%struct.my_softc* %16, i32 %17, i32 %20)
  %22 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %23 = load i32, i32* @MY_IMR, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.my_softc* %22, i32 %23, i32 0)
  %25 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %26 = load i32, i32* @MY_TXLBA, align 4
  %27 = call i32 @CSR_WRITE_4(%struct.my_softc* %25, i32 %26, i32 0)
  %28 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %29 = load i32, i32* @MY_RXLBA, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.my_softc* %28, i32 %29, i32 0)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %66, %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MY_RX_LIST_CNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %31
  %36 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %37 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %35
  %47 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %48 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @m_freem(i32* %55)
  %57 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %58 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %46, %35
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %31

69:                                               ; preds = %31
  %70 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %71 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 @bzero(i8* %74, i32 4)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %111, %69
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @MY_TX_LIST_CNT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %76
  %81 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %82 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %80
  %92 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %93 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @m_freem(i32* %100)
  %102 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %103 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %91, %80
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %76

114:                                              ; preds = %76
  %115 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %116 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = bitcast i32* %118 to i8*
  %120 = call i32 @bzero(i8* %119, i32 4)
  %121 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %122 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @MY_CLRBIT(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
