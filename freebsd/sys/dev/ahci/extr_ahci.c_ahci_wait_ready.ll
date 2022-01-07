; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_wait_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32 }

@AHCI_P_TFD = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_S_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"AHCI reset: device not ready after %dms (tfd = %08x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"AHCI reset: device ready after %dms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_channel*, i32, i32)* @ahci_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_wait_ready(%struct.ahci_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %12 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AHCI_P_TFD, align 4
  %15 = call i32 @ATA_INL(i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @ATA_S_BUSY, align 4
  %17 = load i32, i32* @ATA_S_DRQ, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %10
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %30 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @MAX(i32 %32, i32 0)
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i32, i32* @EBUSY, align 4
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %21
  %43 = call i32 @DELAY(i32 1000)
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %10

46:                                               ; preds = %10
  %47 = load i64, i64* @bootverbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %51 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %49, %46
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
