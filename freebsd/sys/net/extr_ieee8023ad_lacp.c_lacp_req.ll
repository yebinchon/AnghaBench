; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_softc = type { i32 }
%struct.lacp_opreq = type { i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i8* }
%struct.lacp_softc = type { %struct.lacp_aggregator* }
%struct.lacp_aggregator = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lacp_req(%struct.lagg_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.lagg_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lacp_opreq*, align 8
  %6 = alloca %struct.lacp_softc*, align 8
  %7 = alloca %struct.lacp_aggregator*, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lacp_opreq*
  store %struct.lacp_opreq* %9, %struct.lacp_opreq** %5, align 8
  %10 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %11 = call %struct.lacp_softc* @LACP_SOFTC(%struct.lagg_softc* %10)
  store %struct.lacp_softc* %11, %struct.lacp_softc** %6, align 8
  %12 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %13 = call i32 @bzero(%struct.lacp_opreq* %12, i32 96)
  %14 = load %struct.lacp_softc*, %struct.lacp_softc** %6, align 8
  %15 = icmp eq %struct.lacp_softc* null, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %119

17:                                               ; preds = %2
  %18 = load %struct.lacp_softc*, %struct.lacp_softc** %6, align 8
  %19 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %18, i32 0, i32 0
  %20 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %19, align 8
  store %struct.lacp_aggregator* %20, %struct.lacp_aggregator** %7, align 8
  %21 = load %struct.lacp_softc*, %struct.lacp_softc** %6, align 8
  %22 = call i32 @LACP_LOCK(%struct.lacp_softc* %21)
  %23 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %24 = icmp ne %struct.lacp_aggregator* %23, null
  br i1 %24, label %25, label %116

25:                                               ; preds = %17
  %26 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %27 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ntohs(i32 %30)
  %32 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %33 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %32, i32 0, i32 11
  store i8* %31, i8** %33, align 8
  %34 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %35 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %34, i32 0, i32 10
  %36 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %37 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %41 = call i32 @memcpy(i32* %35, i32* %39, i32 %40)
  %42 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %43 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @ntohs(i32 %45)
  %47 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %48 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %50 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ntohs(i32 %53)
  %55 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %56 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  %57 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %58 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ntohs(i32 %61)
  %63 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %64 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %66 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %70 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %72 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @ntohs(i32 %75)
  %77 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %78 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %80 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %79, i32 0, i32 4
  %81 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %82 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %86 = call i32 @memcpy(i32* %80, i32* %84, i32 %85)
  %87 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %88 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @ntohs(i32 %90)
  %92 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %93 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %95 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @ntohs(i32 %98)
  %100 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %101 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %103 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @ntohs(i32 %106)
  %108 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %109 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %7, align 8
  %111 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %115 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %25, %17
  %117 = load %struct.lacp_softc*, %struct.lacp_softc** %6, align 8
  %118 = call i32 @LACP_UNLOCK(%struct.lacp_softc* %117)
  br label %119

119:                                              ; preds = %116, %16
  ret void
}

declare dso_local %struct.lacp_softc* @LACP_SOFTC(%struct.lagg_softc*) #1

declare dso_local i32 @bzero(%struct.lacp_opreq*, i32) #1

declare dso_local i32 @LACP_LOCK(%struct.lacp_softc*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @LACP_UNLOCK(%struct.lacp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
