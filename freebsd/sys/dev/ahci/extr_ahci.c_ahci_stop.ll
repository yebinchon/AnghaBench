; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i64, i32, i32 }

@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_CMD_ST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"stopping AHCI engine failed\0A\00", align 1
@AHCI_P_CMD_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*)* @ahci_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_stop(%struct.ahci_channel* %0) #0 {
  %2 = alloca %struct.ahci_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %2, align 8
  %5 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AHCI_P_CMD, align 4
  %9 = call i32 @ATA_INL(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %11 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AHCI_P_CMD, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @AHCI_P_CMD_ST, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @ATA_OUTL(i32 %12, i32 %13, i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %30, %1
  %20 = call i32 @DELAY(i32 10)
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = icmp sgt i32 %21, 50000
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %26 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %39

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AHCI_P_CMD, align 4
  %35 = call i32 @ATA_INL(i32 %33, i32 %34)
  %36 = load i32, i32* @AHCI_P_CMD_CR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %19, label %39

39:                                               ; preds = %30, %24
  %40 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %41 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
