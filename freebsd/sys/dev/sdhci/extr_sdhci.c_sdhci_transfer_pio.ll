; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_transfer_pio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_transfer_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_DATA_AVAILABLE = common dso_local global i32 0, align 4
@SDHCI_SPACE_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*)* @sdhci_transfer_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_transfer_pio(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %3 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MMC_DATA_READ, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %36, %13
  %15 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %16 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %17 = call i32 @RD4(%struct.sdhci_slot* %15, i32 %16)
  %18 = load i32, i32* @SDHCI_DATA_AVAILABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %23 = call i32 @sdhci_read_block_pio(%struct.sdhci_slot* %22)
  %24 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %25 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %28 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %37

36:                                               ; preds = %21
  br label %14

37:                                               ; preds = %35, %14
  br label %63

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %61, %38
  %40 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %41 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %42 = call i32 @RD4(%struct.sdhci_slot* %40, i32 %41)
  %43 = load i32, i32* @SDHCI_SPACE_AVAILABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %48 = call i32 @sdhci_write_block_pio(%struct.sdhci_slot* %47)
  %49 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %50 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %53 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %62

61:                                               ; preds = %46
  br label %39

62:                                               ; preds = %60, %39
  br label %63

63:                                               ; preds = %62, %37
  ret void
}

declare dso_local i32 @RD4(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_read_block_pio(%struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_write_block_pio(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
