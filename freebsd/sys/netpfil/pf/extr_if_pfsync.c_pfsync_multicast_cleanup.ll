; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_multicast_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_multicast_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { %struct.ip_moptions }
%struct.ip_moptions = type { i32*, i32 }
%struct.in_mfilter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfsync_softc*)* @pfsync_multicast_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_multicast_cleanup(%struct.pfsync_softc* %0) #0 {
  %2 = alloca %struct.pfsync_softc*, align 8
  %3 = alloca %struct.ip_moptions*, align 8
  %4 = alloca %struct.in_mfilter*, align 8
  store %struct.pfsync_softc* %0, %struct.pfsync_softc** %2, align 8
  %5 = load %struct.pfsync_softc*, %struct.pfsync_softc** %2, align 8
  %6 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %5, i32 0, i32 0
  store %struct.ip_moptions* %6, %struct.ip_moptions** %3, align 8
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.ip_moptions*, %struct.ip_moptions** %3, align 8
  %9 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %8, i32 0, i32 1
  %10 = call %struct.in_mfilter* @ip_mfilter_first(i32* %9)
  store %struct.in_mfilter* %10, %struct.in_mfilter** %4, align 8
  %11 = icmp ne %struct.in_mfilter* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.ip_moptions*, %struct.ip_moptions** %3, align 8
  %14 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %13, i32 0, i32 1
  %15 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %16 = call i32 @ip_mfilter_remove(i32* %14, %struct.in_mfilter* %15)
  %17 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %18 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @in_leavegroup(i32 %19, i32* null)
  %21 = load %struct.in_mfilter*, %struct.in_mfilter** %4, align 8
  %22 = call i32 @ip_mfilter_free(%struct.in_mfilter* %21)
  br label %7

23:                                               ; preds = %7
  %24 = load %struct.ip_moptions*, %struct.ip_moptions** %3, align 8
  %25 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  ret void
}

declare dso_local %struct.in_mfilter* @ip_mfilter_first(i32*) #1

declare dso_local i32 @ip_mfilter_remove(i32*, %struct.in_mfilter*) #1

declare dso_local i32 @in_leavegroup(i32, i32*) #1

declare dso_local i32 @ip_mfilter_free(%struct.in_mfilter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
