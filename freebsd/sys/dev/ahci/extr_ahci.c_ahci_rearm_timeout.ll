; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_rearm_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_rearm_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, %struct.ahci_slot*, i32 }
%struct.ahci_slot = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@AHCI_SLOT_RUNNING = common dso_local global i64 0, align 8
@SBT_1MS = common dso_local global i32 0, align 4
@ahci_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*)* @ahci_rearm_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_rearm_timeout(%struct.ahci_channel* %0) #0 {
  %2 = alloca %struct.ahci_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_slot*, align 8
  store %struct.ahci_channel* %0, %struct.ahci_channel** %2, align 8
  %5 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %5, i32 0, i32 3
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %53, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %12 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %9
  %16 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %17 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %16, i32 0, i32 2
  %18 = load %struct.ahci_slot*, %struct.ahci_slot** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %18, i64 %20
  store %struct.ahci_slot* %21, %struct.ahci_slot** %4, align 8
  %22 = load %struct.ahci_slot*, %struct.ahci_slot** %4, align 8
  %23 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AHCI_SLOT_RUNNING, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %53

28:                                               ; preds = %15
  %29 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %30 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %53

37:                                               ; preds = %28
  %38 = load %struct.ahci_slot*, %struct.ahci_slot** %4, align 8
  %39 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %38, i32 0, i32 2
  %40 = load i32, i32* @SBT_1MS, align 4
  %41 = load %struct.ahci_slot*, %struct.ahci_slot** %4, align 8
  %42 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %40, %46
  %48 = sdiv i32 %47, 2
  %49 = load i64, i64* @ahci_timeout, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.ahci_slot*, %struct.ahci_slot** %4, align 8
  %52 = call i32 @callout_reset_sbt(i32* %39, i32 %48, i32 0, i32* %50, %struct.ahci_slot* %51, i32 0)
  br label %53

53:                                               ; preds = %37, %36, %27
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %9

56:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.ahci_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
