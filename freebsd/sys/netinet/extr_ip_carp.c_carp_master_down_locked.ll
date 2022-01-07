; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_master_down_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_master_down_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carp_softc*, i8*)* @carp_master_down_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_master_down_locked(%struct.carp_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.carp_softc*, align 8
  %4 = alloca i8*, align 8
  store %struct.carp_softc* %0, %struct.carp_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %6 = call i32 @CARP_LOCK_ASSERT(%struct.carp_softc* %5)
  %7 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %8 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %21 [
    i32 130, label %10
    i32 129, label %20
    i32 128, label %20
  ]

10:                                               ; preds = %2
  %11 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @carp_set_state(%struct.carp_softc* %11, i32 128, i8* %12)
  %14 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %15 = call i32 @carp_send_ad_locked(%struct.carp_softc* %14)
  %16 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %17 = call i32 @carp_setrun(%struct.carp_softc* %16, i32 0)
  %18 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %19 = call i32 @carp_addroute(%struct.carp_softc* %18)
  br label %21

20:                                               ; preds = %2, %2
  br label %21

21:                                               ; preds = %2, %20, %10
  ret void
}

declare dso_local i32 @CARP_LOCK_ASSERT(%struct.carp_softc*) #1

declare dso_local i32 @carp_set_state(%struct.carp_softc*, i32, i8*) #1

declare dso_local i32 @carp_send_ad_locked(%struct.carp_softc*) #1

declare dso_local i32 @carp_setrun(%struct.carp_softc*, i32) #1

declare dso_local i32 @carp_addroute(%struct.carp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
