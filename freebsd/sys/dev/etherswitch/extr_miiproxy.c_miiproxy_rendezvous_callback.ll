; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_miiproxy.c_miiproxy_rendezvous_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_miiproxy.c_miiproxy_rendezvous_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rendezvous_entry = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.miiproxy_softc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rendezvous_entry*)* @miiproxy_rendezvous_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miiproxy_rendezvous_callback(i32 %0, %struct.rendezvous_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rendezvous_entry*, align 8
  %5 = alloca %struct.miiproxy_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rendezvous_entry* %1, %struct.rendezvous_entry** %4, align 8
  %6 = load %struct.rendezvous_entry*, %struct.rendezvous_entry** %4, align 8
  %7 = getelementptr inbounds %struct.rendezvous_entry, %struct.rendezvous_entry* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.miiproxy_softc* @device_get_softc(i32 %9)
  store %struct.miiproxy_softc* %10, %struct.miiproxy_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %23 [
    i32 129, label %12
    i32 128, label %20
  ]

12:                                               ; preds = %2
  %13 = load %struct.rendezvous_entry*, %struct.rendezvous_entry** %4, align 8
  %14 = getelementptr inbounds %struct.rendezvous_entry, %struct.rendezvous_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @device_get_parent(i32 %16)
  %18 = load %struct.miiproxy_softc*, %struct.miiproxy_softc** %5, align 8
  %19 = getelementptr inbounds %struct.miiproxy_softc, %struct.miiproxy_softc* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.miiproxy_softc*, %struct.miiproxy_softc** %5, align 8
  %22 = getelementptr inbounds %struct.miiproxy_softc, %struct.miiproxy_softc* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %2, %20, %12
  ret i32 0
}

declare dso_local %struct.miiproxy_softc* @device_get_softc(i32) #1

declare dso_local i32* @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
