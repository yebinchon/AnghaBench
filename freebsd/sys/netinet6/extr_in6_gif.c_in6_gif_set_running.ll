; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_gif.c_in6_gif_set_running.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_gif.c_in6_gif_set_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gif_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gif_softc*)* @in6_gif_set_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_gif_set_running(%struct.gif_softc* %0) #0 {
  %2 = alloca %struct.gif_softc*, align 8
  store %struct.gif_softc* %0, %struct.gif_softc** %2, align 8
  %3 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %4 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call i64 @in6_localip(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %12 = call %struct.TYPE_4__* @GIF2IFP(%struct.gif_softc* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %10
  store i32 %15, i32* %13, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.gif_softc*, %struct.gif_softc** %2, align 8
  %20 = call %struct.TYPE_4__* @GIF2IFP(%struct.gif_softc* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %16, %9
  ret void
}

declare dso_local i64 @in6_localip(i32*) #1

declare dso_local %struct.TYPE_4__* @GIF2IFP(%struct.gif_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
