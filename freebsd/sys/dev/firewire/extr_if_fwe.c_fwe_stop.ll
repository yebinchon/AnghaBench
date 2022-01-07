; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_if_fwe.c_fwe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwe_softc = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.firewire_comm* }
%struct.firewire_comm = type { i32 (%struct.firewire_comm*, i64)*, %struct.fw_xferq** }
%struct.fw_xferq = type { i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.fw_xfer = type { i32 }

@FWXFERQ_RUNNING = common dso_local global i32 0, align 4
@FWXFERQ_MODEMASK = common dso_local global i32 0, align 4
@FWXFERQ_OPEN = common dso_local global i32 0, align 4
@FWXFERQ_STREAM = common dso_local global i32 0, align 4
@FWXFERQ_EXTBUF = common dso_local global i32 0, align 4
@FWXFERQ_HANDLER = common dso_local global i32 0, align 4
@FWXFERQ_CHTAGMASK = common dso_local global i32 0, align 4
@M_FWE = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwe_softc*)* @fwe_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwe_stop(%struct.fwe_softc* %0) #0 {
  %2 = alloca %struct.fwe_softc*, align 8
  %3 = alloca %struct.firewire_comm*, align 8
  %4 = alloca %struct.fw_xferq*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.fw_xfer*, align 8
  %7 = alloca %struct.fw_xfer*, align 8
  %8 = alloca i32, align 4
  store %struct.fwe_softc* %0, %struct.fwe_softc** %2, align 8
  %9 = load %struct.fwe_softc*, %struct.fwe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  %13 = load %struct.fwe_softc*, %struct.fwe_softc** %2, align 8
  %14 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.firewire_comm*, %struct.firewire_comm** %15, align 8
  store %struct.firewire_comm* %16, %struct.firewire_comm** %3, align 8
  %17 = load %struct.fwe_softc*, %struct.fwe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %19, 0
  br i1 %20, label %21, label %111

21:                                               ; preds = %1
  %22 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %23 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %22, i32 0, i32 1
  %24 = load %struct.fw_xferq**, %struct.fw_xferq*** %23, align 8
  %25 = load %struct.fwe_softc*, %struct.fwe_softc** %2, align 8
  %26 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.fw_xferq*, %struct.fw_xferq** %24, i64 %27
  %29 = load %struct.fw_xferq*, %struct.fw_xferq** %28, align 8
  store %struct.fw_xferq* %29, %struct.fw_xferq** %4, align 8
  %30 = load %struct.fw_xferq*, %struct.fw_xferq** %4, align 8
  %31 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FWXFERQ_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %38 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %37, i32 0, i32 0
  %39 = load i32 (%struct.firewire_comm*, i64)*, i32 (%struct.firewire_comm*, i64)** %38, align 8
  %40 = load %struct.firewire_comm*, %struct.firewire_comm** %3, align 8
  %41 = load %struct.fwe_softc*, %struct.fwe_softc** %2, align 8
  %42 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 %39(%struct.firewire_comm* %40, i64 %43)
  br label %45

45:                                               ; preds = %36, %21
  %46 = load i32, i32* @FWXFERQ_MODEMASK, align 4
  %47 = load i32, i32* @FWXFERQ_OPEN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FWXFERQ_STREAM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FWXFERQ_EXTBUF, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FWXFERQ_HANDLER, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FWXFERQ_CHTAGMASK, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.fw_xferq*, %struct.fw_xferq** %4, align 8
  %59 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.fw_xferq*, %struct.fw_xferq** %4, align 8
  %63 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %80, %45
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.fw_xferq*, %struct.fw_xferq** %4, align 8
  %67 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.fw_xferq*, %struct.fw_xferq** %4, align 8
  %72 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @m_freem(i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %64

83:                                               ; preds = %64
  %84 = load %struct.fw_xferq*, %struct.fw_xferq** %4, align 8
  %85 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* @M_FWE, align 4
  %88 = call i32 @free(%struct.TYPE_6__* %86, i32 %87)
  %89 = load %struct.fwe_softc*, %struct.fwe_softc** %2, align 8
  %90 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %89, i32 0, i32 1
  %91 = call %struct.fw_xfer* @STAILQ_FIRST(i32* %90)
  store %struct.fw_xfer* %91, %struct.fw_xfer** %6, align 8
  br label %92

92:                                               ; preds = %101, %83
  %93 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %94 = icmp ne %struct.fw_xfer* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %97 = load i32, i32* @link, align 4
  %98 = call %struct.fw_xfer* @STAILQ_NEXT(%struct.fw_xfer* %96, i32 %97)
  store %struct.fw_xfer* %98, %struct.fw_xfer** %7, align 8
  %99 = load %struct.fw_xfer*, %struct.fw_xfer** %6, align 8
  %100 = call i32 @fw_xfer_free(%struct.fw_xfer* %99)
  br label %101

101:                                              ; preds = %95
  %102 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  store %struct.fw_xfer* %102, %struct.fw_xfer** %6, align 8
  br label %92

103:                                              ; preds = %92
  %104 = load %struct.fwe_softc*, %struct.fwe_softc** %2, align 8
  %105 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %104, i32 0, i32 1
  %106 = call i32 @STAILQ_INIT(i32* %105)
  %107 = load %struct.fw_xferq*, %struct.fw_xferq** %4, align 8
  %108 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %107, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %108, align 8
  %109 = load %struct.fwe_softc*, %struct.fwe_softc** %2, align 8
  %110 = getelementptr inbounds %struct.fwe_softc, %struct.fwe_softc* %109, i32 0, i32 0
  store i64 -1, i64* %110, align 8
  br label %111

111:                                              ; preds = %103, %1
  %112 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %113 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  ret void
}

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.fw_xfer* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.fw_xfer* @STAILQ_NEXT(%struct.fw_xfer*, i32) #1

declare dso_local i32 @fw_xfer_free(%struct.fw_xfer*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
