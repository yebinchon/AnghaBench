; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AHCI_P_IE = common dso_local global i32 0, align 4
@AHCI_CL_OFFSET = common dso_local global i32 0, align 4
@AHCI_P_CLB = common dso_local global i32 0, align 4
@AHCI_P_CLBU = common dso_local global i32 0, align 4
@AHCI_P_FB = common dso_local global i32 0, align 4
@AHCI_P_FBU = common dso_local global i32 0, align 4
@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_CMD_ACTIVE = common dso_local global i32 0, align 4
@AHCI_P_CMD_POD = common dso_local global i32 0, align 4
@AHCI_P_CMD_SUD = common dso_local global i32 0, align 4
@AHCI_P_CMD_ALPE = common dso_local global i32 0, align 4
@AHCI_P_CMD_ASP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_ch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_ch_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ahci_channel* @device_get_softc(i32 %5)
  store %struct.ahci_channel* %6, %struct.ahci_channel** %3, align 8
  %7 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AHCI_P_IE, align 4
  %11 = call i32 @ATA_OUTL(i32 %9, i32 %10, i32 0)
  %12 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AHCI_CL_OFFSET, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AHCI_P_CLB, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ATA_OUTL(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %25 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AHCI_P_CLBU, align 4
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 32
  %30 = call i32 @ATA_OUTL(i32 %26, i32 %27, i32 %29)
  %31 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  %35 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %36 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AHCI_P_FB, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ATA_OUTL(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %42 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AHCI_P_FBU, align 4
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, 32
  %47 = call i32 @ATA_OUTL(i32 %43, i32 %44, i32 %46)
  %48 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %49 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AHCI_P_CMD, align 4
  %52 = load i32, i32* @AHCI_P_CMD_ACTIVE, align 4
  %53 = load i32, i32* @AHCI_P_CMD_POD, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @AHCI_P_CMD_SUD, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %58 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %66, label %61

61:                                               ; preds = %1
  %62 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %63 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %1
  %67 = load i32, i32* @AHCI_P_CMD_ALPE, align 4
  br label %69

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = or i32 %56, %70
  %72 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %73 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 2
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @AHCI_P_CMD_ASP, align 4
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = or i32 %71, %80
  %82 = call i32 @ATA_OUTL(i32 %50, i32 %51, i32 %81)
  %83 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %84 = call i32 @ahci_start_fr(%struct.ahci_channel* %83)
  %85 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %86 = call i32 @ahci_start(%struct.ahci_channel* %85, i32 1)
  ret i32 0
}

declare dso_local %struct.ahci_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ahci_start_fr(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_start(%struct.ahci_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
