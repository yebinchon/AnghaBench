; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_portreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_portreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_port = type { i32 }
%struct.lacp_opreq = type { i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i8* }
%struct.lacp_port = type { %struct.TYPE_12__, %struct.TYPE_9__, %struct.lacp_softc* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.lacp_softc = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lacp_portreq(%struct.lagg_port* %0, i8* %1) #0 {
  %3 = alloca %struct.lagg_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lacp_opreq*, align 8
  %6 = alloca %struct.lacp_port*, align 8
  %7 = alloca %struct.lacp_softc*, align 8
  store %struct.lagg_port* %0, %struct.lagg_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lacp_opreq*
  store %struct.lacp_opreq* %9, %struct.lacp_opreq** %5, align 8
  %10 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %11 = call %struct.lacp_port* @LACP_PORT(%struct.lagg_port* %10)
  store %struct.lacp_port* %11, %struct.lacp_port** %6, align 8
  %12 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %13 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %12, i32 0, i32 2
  %14 = load %struct.lacp_softc*, %struct.lacp_softc** %13, align 8
  store %struct.lacp_softc* %14, %struct.lacp_softc** %7, align 8
  %15 = load %struct.lacp_softc*, %struct.lacp_softc** %7, align 8
  %16 = call i32 @LACP_LOCK(%struct.lacp_softc* %15)
  %17 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %18 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @ntohs(i32 %21)
  %23 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %24 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %23, i32 0, i32 11
  store i8* %22, i8** %24, align 8
  %25 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %26 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %25, i32 0, i32 10
  %27 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %28 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %32 = call i32 @memcpy(i32* %26, i32* %30, i32 %31)
  %33 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %34 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @ntohs(i32 %36)
  %38 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %39 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %38, i32 0, i32 9
  store i8* %37, i8** %39, align 8
  %40 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %41 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ntohs(i32 %44)
  %46 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %47 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %49 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @ntohs(i32 %52)
  %54 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %55 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %57 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %61 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %63 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @ntohs(i32 %66)
  %68 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %69 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %71 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %70, i32 0, i32 4
  %72 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %73 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %77 = call i32 @memcpy(i32* %71, i32* %75, i32 %76)
  %78 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %79 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @ntohs(i32 %81)
  %83 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %84 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %86 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @ntohs(i32 %89)
  %91 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %92 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %94 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @ntohs(i32 %97)
  %99 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %100 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %102 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.lacp_opreq*, %struct.lacp_opreq** %5, align 8
  %106 = getelementptr inbounds %struct.lacp_opreq, %struct.lacp_opreq* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.lacp_softc*, %struct.lacp_softc** %7, align 8
  %108 = call i32 @LACP_UNLOCK(%struct.lacp_softc* %107)
  ret void
}

declare dso_local %struct.lacp_port* @LACP_PORT(%struct.lagg_port*) #1

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
