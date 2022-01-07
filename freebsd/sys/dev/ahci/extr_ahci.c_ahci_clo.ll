; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_clo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_clo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i32 }

@AHCI_CAP_SCLO = common dso_local global i32 0, align 4
@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_CMD_CLO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"executing CLO failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*)* @ahci_clo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_clo(%struct.ahci_channel* %0) #0 {
  %2 = alloca %struct.ahci_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %2, align 8
  %5 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AHCI_CAP_SCLO, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %13 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AHCI_P_CMD, align 4
  %16 = call i32 @ATA_INL(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @AHCI_P_CMD_CLO, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %21 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AHCI_P_CMD, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ATA_OUTL(i32 %22, i32 %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %37, %11
  %27 = call i32 @DELAY(i32 10)
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = icmp sgt i32 %28, 50000
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %33 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %46

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %39 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AHCI_P_CMD, align 4
  %42 = call i32 @ATA_INL(i32 %40, i32 %41)
  %43 = load i32, i32* @AHCI_P_CMD_CLO, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %26, label %46

46:                                               ; preds = %37, %31
  br label %47

47:                                               ; preds = %46, %1
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
