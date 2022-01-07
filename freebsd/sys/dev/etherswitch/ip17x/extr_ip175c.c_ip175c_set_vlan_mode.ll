; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_set_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_set_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17x_softc*, i32)* @ip175c_set_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_set_vlan_mode(%struct.ip17x_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ip17x_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ip17x_softc* %0, %struct.ip17x_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %15 [
    i32 129, label %6
    i32 128, label %14
  ]

6:                                                ; preds = %2
  %7 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ip17x_updatephy(i32 %9, i32 30, i32 9, i32 128, i32 128)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %22

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %2, %14
  %16 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ip17x_updatephy(i32 %18, i32 30, i32 9, i32 128, i32 0)
  %20 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %20, i32 0, i32 0
  store i32 128, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %6
  %23 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %24 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ip17x_reset_vlans(%struct.ip17x_softc* %23, i32 %26)
  %28 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %29 = call i32 @ip175c_hw_setup(%struct.ip17x_softc* %28)
  ret i32 0
}

declare dso_local i32 @ip17x_updatephy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip17x_reset_vlans(%struct.ip17x_softc*, i32) #1

declare dso_local i32 @ip175c_hw_setup(%struct.ip17x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
