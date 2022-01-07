; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_grow_ifas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_grow_ifas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_softc = type { i32, %struct.ifaddr** }
%struct.ifaddr = type { i32 }

@M_CARP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carp_softc*)* @carp_grow_ifas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_grow_ifas(%struct.carp_softc* %0) #0 {
  %2 = alloca %struct.carp_softc*, align 8
  %3 = alloca %struct.ifaddr**, align 8
  store %struct.carp_softc* %0, %struct.carp_softc** %2, align 8
  %4 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %5 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = mul nsw i32 %6, 2
  %8 = load i32, i32* @M_CARP, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.ifaddr** @malloc(i32 %7, i32 %8, i32 %11)
  store %struct.ifaddr** %12, %struct.ifaddr*** %3, align 8
  %13 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %14 = call i32 @CARP_LOCK(%struct.carp_softc* %13)
  %15 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %16 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %15, i32 0, i32 1
  %17 = load %struct.ifaddr**, %struct.ifaddr*** %16, align 8
  %18 = load %struct.ifaddr**, %struct.ifaddr*** %3, align 8
  %19 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %20 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bcopy(%struct.ifaddr** %17, %struct.ifaddr** %18, i32 %21)
  %23 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %24 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %23, i32 0, i32 1
  %25 = load %struct.ifaddr**, %struct.ifaddr*** %24, align 8
  %26 = load i32, i32* @M_CARP, align 4
  %27 = call i32 @free(%struct.ifaddr** %25, i32 %26)
  %28 = load %struct.ifaddr**, %struct.ifaddr*** %3, align 8
  %29 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %30 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %29, i32 0, i32 1
  store %struct.ifaddr** %28, %struct.ifaddr*** %30, align 8
  %31 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %32 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %32, align 8
  %35 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %36 = call i32 @CARP_UNLOCK(%struct.carp_softc* %35)
  ret void
}

declare dso_local %struct.ifaddr** @malloc(i32, i32, i32) #1

declare dso_local i32 @CARP_LOCK(%struct.carp_softc*) #1

declare dso_local i32 @bcopy(%struct.ifaddr**, %struct.ifaddr**, i32) #1

declare dso_local i32 @free(%struct.ifaddr**, i32) #1

declare dso_local i32 @CARP_UNLOCK(%struct.carp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
