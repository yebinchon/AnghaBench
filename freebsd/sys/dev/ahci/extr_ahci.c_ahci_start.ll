; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, i64, i32, i32 (%struct.ahci_channel*)* }

@AHCI_P_SERR = common dso_local global i32 0, align 4
@AHCI_P_IS = common dso_local global i32 0, align 4
@AHCI_P_CMD_FBSCP = common dso_local global i32 0, align 4
@AHCI_P_FBS = common dso_local global i32 0, align 4
@AHCI_P_FBS_EN = common dso_local global i32 0, align 4
@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_CMD_PMA = common dso_local global i32 0, align 4
@AHCI_P_CMD_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*, i32)* @ahci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_start(%struct.ahci_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %6, i32 0, i32 4
  %8 = load i32 (%struct.ahci_channel*)*, i32 (%struct.ahci_channel*)** %7, align 8
  %9 = icmp ne i32 (%struct.ahci_channel*)* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %12 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %11, i32 0, i32 4
  %13 = load i32 (%struct.ahci_channel*)*, i32 (%struct.ahci_channel*)** %12, align 8
  %14 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %15 = call i32 %13(%struct.ahci_channel* %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AHCI_P_SERR, align 4
  %21 = call i32 @ATA_OUTL(i32 %19, i32 %20, i32 -1)
  %22 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %23 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AHCI_P_IS, align 4
  %26 = call i32 @ATA_OUTL(i32 %24, i32 %25, i32 -1)
  %27 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %28 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AHCI_P_CMD_FBSCP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %16
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %48 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AHCI_P_FBS, align 4
  %51 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %52 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* @AHCI_P_FBS_EN, align 4
  br label %58

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = call i32 @ATA_OUTL(i32 %49, i32 %50, i32 %59)
  br label %61

61:                                               ; preds = %58, %16
  %62 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %63 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @AHCI_P_CMD, align 4
  %66 = call i32 @ATA_INL(i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @AHCI_P_CMD_PMA, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %72 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AHCI_P_CMD, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @AHCI_P_CMD_ST, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %79 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %61
  %83 = load i32, i32* @AHCI_P_CMD_PMA, align 4
  br label %85

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = or i32 %77, %86
  %88 = call i32 @ATA_OUTL(i32 %73, i32 %74, i32 %87)
  ret void
}

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
