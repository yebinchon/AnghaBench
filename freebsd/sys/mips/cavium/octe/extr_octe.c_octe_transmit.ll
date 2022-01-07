; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32* }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @octe_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octe_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i32 @m_freem(%struct.mbuf* %20)
  store i32 0, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = call i32 @cvm_oct_xmit(%struct.mbuf* %23, %struct.ifnet* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @cvm_oct_xmit(%struct.mbuf*, %struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
