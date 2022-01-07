; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahcipoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahcipoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%struct.ahci_channel = type { i64, i64, i32, i32 }

@AHCI_P_IS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*)* @ahcipoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahcipoll(%struct.cam_sim* %0) #0 {
  %2 = alloca %struct.cam_sim*, align 8
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca i64, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %2, align 8
  %5 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %6 = call i64 @cam_sim_softc(%struct.cam_sim* %5)
  %7 = inttoptr i64 %6 to %struct.ahci_channel*
  store %struct.ahci_channel* %7, %struct.ahci_channel** %3, align 8
  %8 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AHCI_P_IS, align 4
  %12 = call i64 @ATA_INL(i32 %10, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @ahci_ch_intr_main(%struct.ahci_channel* %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 2
  %33 = call i32 @callout_pending(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %37 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %36, i32 0, i32 1
  store i64 1000, i64* %37, align 8
  %38 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %39 = call i32 @ahci_reset_to(%struct.ahci_channel* %38)
  br label %40

40:                                               ; preds = %35, %30, %19
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i64 @ATA_INL(i32, i32) #1

declare dso_local i32 @ahci_ch_intr_main(%struct.ahci_channel*, i64) #1

declare dso_local i32 @callout_pending(i32*) #1

declare dso_local i32 @ahci_reset_to(%struct.ahci_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
