; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_geom* }
%struct.g_geom = type { %struct.g_stripe_softc* }
%struct.g_stripe_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_stripe_orphan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_stripe_orphan(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_stripe_softc*, align 8
  %4 = alloca %struct.g_geom*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %5 = call i32 (...) @g_topology_assert()
  %6 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %7 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %6, i32 0, i32 0
  %8 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  store %struct.g_geom* %8, %struct.g_geom** %4, align 8
  %9 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %10 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %9, i32 0, i32 0
  %11 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %10, align 8
  store %struct.g_stripe_softc* %11, %struct.g_stripe_softc** %3, align 8
  %12 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %3, align 8
  %13 = icmp eq %struct.g_stripe_softc* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %17 = call i32 @g_stripe_remove_disk(%struct.g_consumer* %16)
  br label %18

18:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @g_stripe_remove_disk(%struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
