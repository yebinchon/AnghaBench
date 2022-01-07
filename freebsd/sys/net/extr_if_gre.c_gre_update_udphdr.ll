; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_gre.c_gre_update_udphdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_gre.c_gre_update_udphdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_softc = type { i32, i32 }
%struct.udphdr = type { i64, i32, i8*, i8* }

@gre_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@GRE_UDPENCAP = common dso_local global i32 0, align 4
@GRE_UDPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gre_update_udphdr(%struct.gre_softc* %0, %struct.udphdr* %1, i32 %2) #0 {
  %4 = alloca %struct.gre_softc*, align 8
  %5 = alloca %struct.udphdr*, align 8
  %6 = alloca i32, align 4
  store %struct.gre_softc* %0, %struct.gre_softc** %4, align 8
  store %struct.udphdr* %1, %struct.udphdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @SA_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @gre_ioctl_sx, i32 %7)
  %9 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %10 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GRE_UDPENCAP, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @MPASS(i32 %13)
  %15 = load i32, i32* @GRE_UDPPORT, align 4
  %16 = call i8* @htons(i32 %15)
  %17 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %18 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %20 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @htons(i32 %21)
  %23 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %24 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %27 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %29 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
