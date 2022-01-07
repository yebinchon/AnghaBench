; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_linkstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_linkstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_port = type { %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.ifnet*, i32, i32)*, i64 }
%struct.lacp_port = type { i32, i64, i64, i32, %struct.lacp_softc* }
%struct.lacp_softc = type { i32 }
%struct.ifmediareq = type { i32 }

@SIOCGIFXMEDIA = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"media changed 0x%x -> 0x%x, ether = %d, fdx = %d, link = %d\0A\00", align 1
@IFM_ETHER = common dso_local global i64 0, align 8
@IFM_FDX = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"-> UNSELECTED\0A\00", align 1
@LACP_UNSELECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lacp_linkstate(%struct.lagg_port* %0) #0 {
  %2 = alloca %struct.lagg_port*, align 8
  %3 = alloca %struct.lacp_port*, align 8
  %4 = alloca %struct.lacp_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifmediareq, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.lagg_port* %0, %struct.lagg_port** %2, align 8
  %11 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %12 = call %struct.lacp_port* @LACP_PORT(%struct.lagg_port* %11)
  store %struct.lacp_port* %12, %struct.lacp_port** %3, align 8
  %13 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %14 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %13, i32 0, i32 4
  %15 = load %struct.lacp_softc*, %struct.lacp_softc** %14, align 8
  store %struct.lacp_softc* %15, %struct.lacp_softc** %4, align 8
  %16 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %17 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %16, i32 0, i32 0
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %5, align 8
  store i32 0, i32* %7, align 4
  %19 = bitcast %struct.ifmediareq* %6 to i8*
  %20 = call i32 @bzero(i8* %19, i32 4)
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %22, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = load i32, i32* @SIOCGIFXMEDIA, align 4
  %26 = ptrtoint %struct.ifmediareq* %6 to i32
  %27 = call i32 %23(%struct.ifnet* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = bitcast %struct.ifmediareq* %6 to i8*
  %32 = call i32 @bzero(i8* %31, i32 4)
  %33 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %34, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %37 = load i32, i32* @SIOCGIFMEDIA, align 4
  %38 = ptrtoint %struct.ifmediareq* %6 to i32
  %39 = call i32 %35(%struct.ifnet* %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %1
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %128

44:                                               ; preds = %40
  %45 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %46 = call i32 @LACP_LOCK(%struct.lacp_softc* %45)
  %47 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %50 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %51 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @IFM_TYPE(i32 %54)
  %56 = load i64, i64* @IFM_ETHER, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @IFM_FDX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LINK_STATE_UP, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.lacp_port*
  %72 = call i32 @LACP_DPRINTF(%struct.lacp_port* %71)
  %73 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %74 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %9, align 8
  %76 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %77 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %81 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @IFM_TYPE(i32 %82)
  %84 = load i64, i64* @IFM_ETHER, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %97, label %86

86:                                               ; preds = %44
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @IFM_FDX, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @LINK_STATE_UP, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %86, %44
  %98 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %99 = call i32 @lacp_port_disable(%struct.lacp_port* %98)
  br label %103

100:                                              ; preds = %91
  %101 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %102 = call i32 @lacp_port_enable(%struct.lacp_port* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %105 = call i64 @lacp_compose_key(%struct.lacp_port* %104)
  %106 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %107 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %110 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %103
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %116 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113, %103
  %120 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %121 = call i32 @LACP_DPRINTF(%struct.lacp_port* bitcast ([15 x i8]* @.str.1 to %struct.lacp_port*))
  %122 = load i32, i32* @LACP_UNSELECTED, align 4
  %123 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %124 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %119, %113
  %126 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %127 = call i32 @LACP_UNLOCK(%struct.lacp_softc* %126)
  br label %128

128:                                              ; preds = %125, %43
  ret void
}

declare dso_local %struct.lacp_port* @LACP_PORT(%struct.lagg_port*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @LACP_LOCK(%struct.lacp_softc*) #1

declare dso_local i32 @LACP_DPRINTF(%struct.lacp_port*) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @lacp_port_disable(%struct.lacp_port*) #1

declare dso_local i32 @lacp_port_enable(%struct.lacp_port*) #1

declare dso_local i64 @lacp_compose_key(%struct.lacp_port*) #1

declare dso_local i32 @LACP_UNLOCK(%struct.lacp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
