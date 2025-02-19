; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_media_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_media_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.al_eth_adapter* }
%struct.al_eth_adapter = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @al_media_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_media_update(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.al_eth_adapter*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 1
  %6 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %5, align 8
  store %struct.al_eth_adapter* %6, %struct.al_eth_adapter** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IFF_UP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mii_mediachg(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @mii_mediachg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
