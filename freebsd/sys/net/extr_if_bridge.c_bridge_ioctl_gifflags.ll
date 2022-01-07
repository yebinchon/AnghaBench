; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_ioctl_gifflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_ioctl_gifflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.ifbreq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bridge_iflist = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.bstp_port }
%struct.TYPE_2__ = type { i32 }
%struct.bstp_port = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@IFBIF_BSTP_EDGE = common dso_local global i32 0, align 4
@BSTP_PORT_AUTOEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_PTP = common dso_local global i32 0, align 4
@BSTP_PORT_AUTOPTP = common dso_local global i32 0, align 4
@IFBIF_BSTP_AUTOPTP = common dso_local global i32 0, align 4
@BSTP_PORT_ADMEDGE = common dso_local global i32 0, align 4
@IFBIF_BSTP_ADMEDGE = common dso_local global i32 0, align 4
@BSTP_PORT_ADMCOST = common dso_local global i32 0, align 4
@IFBIF_BSTP_ADMCOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_gifflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_gifflags(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbreq*, align 8
  %7 = alloca %struct.bridge_iflist*, align 8
  %8 = alloca %struct.bstp_port*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ifbreq*
  store %struct.ifbreq* %10, %struct.ifbreq** %6, align 8
  %11 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %12 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %13 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc* %11, i32 %14)
  store %struct.bridge_iflist* %15, %struct.bridge_iflist** %7, align 8
  %16 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %17 = icmp eq %struct.bridge_iflist* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %3, align 4
  br label %155

20:                                               ; preds = %2
  %21 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %22 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %21, i32 0, i32 5
  store %struct.bstp_port* %22, %struct.bstp_port** %8, align 8
  %23 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %24 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %27 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %29 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %32 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %34 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %37 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %39 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %42 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %44 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 4095
  %49 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %50 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %52 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %55 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %57 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %60 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %62 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %65 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %67 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %70 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %72 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %75 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %77 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %80 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %82 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %20
  %86 = load i32, i32* @IFBIF_BSTP_EDGE, align 4
  %87 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %88 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %20
  %92 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %93 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BSTP_PORT_AUTOEDGE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* @IFBIF_BSTP_AUTOEDGE, align 4
  %100 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %101 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %106 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* @IFBIF_BSTP_PTP, align 4
  %111 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %112 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %104
  %116 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %117 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @BSTP_PORT_AUTOPTP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load i32, i32* @IFBIF_BSTP_AUTOPTP, align 4
  %124 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %125 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %115
  %129 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %130 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BSTP_PORT_ADMEDGE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @IFBIF_BSTP_ADMEDGE, align 4
  %137 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %138 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %128
  %142 = load %struct.bstp_port*, %struct.bstp_port** %8, align 8
  %143 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @BSTP_PORT_ADMCOST, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32, i32* @IFBIF_BSTP_ADMCOST, align 4
  %150 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %151 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %141
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %18
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
