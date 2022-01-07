; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_port2req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_port2req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_port = type { i32, i32, %struct.TYPE_2__*, %struct.lagg_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.lagg_softc = type { i32, %struct.lagg_port*, i32 }
%struct.lagg_reqport = type { i32, i32, i32, i32, i32 }

@LAGG_PORT_MASTER = common dso_local global i32 0, align 4
@LAGG_PORT_ACTIVE = common dso_local global i32 0, align 4
@LAGG_PORT_COLLECTING = common dso_local global i32 0, align 4
@LAGG_PORT_DISTRIBUTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lagg_port*, %struct.lagg_reqport*)* @lagg_port2req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lagg_port2req(%struct.lagg_port* %0, %struct.lagg_reqport* %1) #0 {
  %3 = alloca %struct.lagg_port*, align 8
  %4 = alloca %struct.lagg_reqport*, align 8
  %5 = alloca %struct.lagg_softc*, align 8
  store %struct.lagg_port* %0, %struct.lagg_port** %3, align 8
  store %struct.lagg_reqport* %1, %struct.lagg_reqport** %4, align 8
  %6 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %7 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %6, i32 0, i32 3
  %8 = load %struct.lagg_softc*, %struct.lagg_softc** %7, align 8
  store %struct.lagg_softc* %8, %struct.lagg_softc** %5, align 8
  %9 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %10 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %13 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @strlcpy(i32 %11, i32 %14, i32 4)
  %16 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %17 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %20 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlcpy(i32 %18, i32 %23, i32 4)
  %25 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %26 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %29 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %31 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %34 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %36 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %37 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %38 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %37, i32 0, i32 1
  %39 = call i32 @lagg_proto_portreq(%struct.lagg_softc* %35, %struct.lagg_port* %36, i32* %38)
  %40 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %41 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %112 [
    i32 131, label %43
    i32 128, label %70
    i32 129, label %70
    i32 132, label %70
    i32 130, label %81
  ]

43:                                               ; preds = %2
  %44 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %45 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %46 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %45, i32 0, i32 1
  %47 = load %struct.lagg_port*, %struct.lagg_port** %46, align 8
  %48 = icmp eq %struct.lagg_port* %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* @LAGG_PORT_MASTER, align 4
  %51 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %52 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %57 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %58 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %59 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %58, i32 0, i32 1
  %60 = load %struct.lagg_port*, %struct.lagg_port** %59, align 8
  %61 = call %struct.lagg_port* @lagg_link_active(%struct.lagg_softc* %57, %struct.lagg_port* %60)
  %62 = icmp eq %struct.lagg_port* %56, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* @LAGG_PORT_ACTIVE, align 4
  %65 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %66 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %55
  br label %112

70:                                               ; preds = %2, %2, %2
  %71 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %72 = call i32 @LAGG_PORTACTIVE(%struct.lagg_port* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @LAGG_PORT_ACTIVE, align 4
  %76 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %77 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %70
  br label %112

81:                                               ; preds = %2
  %82 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %83 = call i32 @lacp_isactive(%struct.lagg_port* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* @LAGG_PORT_ACTIVE, align 4
  %87 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %88 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %81
  %92 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %93 = call i32 @lacp_iscollecting(%struct.lagg_port* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @LAGG_PORT_COLLECTING, align 4
  %97 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %98 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %91
  %102 = load %struct.lagg_port*, %struct.lagg_port** %3, align 8
  %103 = call i32 @lacp_isdistributing(%struct.lagg_port* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @LAGG_PORT_DISTRIBUTING, align 4
  %107 = load %struct.lagg_reqport*, %struct.lagg_reqport** %4, align 8
  %108 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %101
  br label %112

112:                                              ; preds = %2, %111, %80, %69
  ret void
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @lagg_proto_portreq(%struct.lagg_softc*, %struct.lagg_port*, i32*) #1

declare dso_local %struct.lagg_port* @lagg_link_active(%struct.lagg_softc*, %struct.lagg_port*) #1

declare dso_local i32 @LAGG_PORTACTIVE(%struct.lagg_port*) #1

declare dso_local i32 @lacp_isactive(%struct.lagg_port*) #1

declare dso_local i32 @lacp_iscollecting(%struct.lagg_port*) #1

declare dso_local i32 @lacp_isdistributing(%struct.lagg_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
