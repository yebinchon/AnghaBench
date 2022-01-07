; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175d.c_ip175d_set_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175d.c_ip175d_set_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17x_softc*, i32)* @ip175d_set_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175d_set_vlan_mode(%struct.ip17x_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ip17x_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ip17x_softc* %0, %struct.ip17x_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 129, label %6
    i32 128, label %14
  ]

6:                                                ; preds = %2
  %7 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ip17x_updatephy(i32 %9, i32 22, i32 0, i32 16383, i32 63)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %2, %14
  %19 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ip17x_updatephy(i32 %21, i32 22, i32 0, i32 49151, i32 32768)
  %23 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %6
  %26 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ip17x_updatephy(i32 %33, i32 22, i32 1, i32 4095, i32 3135)
  %35 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ip17x_updatephy(i32 %37, i32 22, i32 2, i32 4095, i32 0)
  br label %48

39:                                               ; preds = %25
  %40 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ip17x_updatephy(i32 %42, i32 22, i32 1, i32 4095, i32 1087)
  %44 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ip17x_updatephy(i32 %46, i32 22, i32 2, i32 4095, i32 32)
  br label %48

48:                                               ; preds = %39, %30
  %49 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %50 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 @ip17x_reset_vlans(%struct.ip17x_softc* %49, i64 %53)
  %55 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %56 = call i32 @ip175d_hw_setup(%struct.ip17x_softc* %55)
  ret i32 0
}

declare dso_local i32 @ip17x_updatephy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip17x_reset_vlans(%struct.ip17x_softc*, i64) #1

declare dso_local i32 @ip175d_hw_setup(%struct.ip17x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
