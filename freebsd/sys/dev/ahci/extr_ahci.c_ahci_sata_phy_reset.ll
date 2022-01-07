; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_sata_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_sata_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_CMD_SUD = common dso_local global i32 0, align 4
@ATA_SC_SPD_SPEED_GEN1 = common dso_local global i32 0, align 4
@ATA_SC_SPD_SPEED_GEN2 = common dso_local global i32 0, align 4
@ATA_SC_SPD_SPEED_GEN3 = common dso_local global i32 0, align 4
@ATA_SC_DET_RESET = common dso_local global i32 0, align 4
@AHCI_P_SCTL = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_PARTIAL = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_SLUMBER = common dso_local global i32 0, align 4
@ATA_SC_DET_IDLE = common dso_local global i32 0, align 4
@AHCI_CAP_SSS = common dso_local global i32 0, align 4
@ATA_SC_DET_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_channel*)* @ahci_sata_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_sata_phy_reset(%struct.ahci_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %3, align 8
  %7 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AHCI_P_CMD, align 4
  %16 = call i32 @ATA_INL(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @AHCI_P_CMD_SUD, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AHCI_P_CMD, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ATA_OUTL(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %27 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %11, %1
  %29 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 15, i32 0
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @ATA_SC_SPD_SPEED_GEN1, align 4
  store i32 %45, i32* %5, align 4
  br label %59

46:                                               ; preds = %28
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @ATA_SC_SPD_SPEED_GEN2, align 4
  store i32 %50, i32* %5, align 4
  br label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @ATA_SC_SPD_SPEED_GEN3, align 4
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %54
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %61 = load i32, i32* @ATA_SC_DET_RESET, align 4
  %62 = call i32 @ahci_ch_detval(%struct.ahci_channel* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %64 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AHCI_P_SCTL, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @ATA_OUTL(i32 %65, i32 %66, i32 %73)
  %75 = call i32 @DELAY(i32 1000)
  %76 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %77 = load i32, i32* @ATA_SC_DET_IDLE, align 4
  %78 = call i32 @ahci_ch_detval(%struct.ahci_channel* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %80 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AHCI_P_SCTL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %87 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %59
  br label %95

91:                                               ; preds = %59
  %92 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %93 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %94 = or i32 %92, %93
  br label %95

95:                                               ; preds = %91, %90
  %96 = phi i32 [ 0, %90 ], [ %94, %91 ]
  %97 = or i32 %85, %96
  %98 = call i32 @ATA_OUTL(i32 %81, i32 %82, i32 %97)
  %99 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %100 = call i32 @ahci_sata_connect(%struct.ahci_channel* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %141, label %102

102:                                              ; preds = %95
  %103 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %104 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AHCI_CAP_SSS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %102
  %110 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %111 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AHCI_P_CMD, align 4
  %114 = call i32 @ATA_INL(i32 %112, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* @AHCI_P_CMD_SUD, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %120 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AHCI_P_CMD, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @ATA_OUTL(i32 %121, i32 %122, i32 %123)
  %125 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %126 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %140

127:                                              ; preds = %102
  %128 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %129 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %134 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AHCI_P_SCTL, align 4
  %137 = load i32, i32* @ATA_SC_DET_DISABLE, align 4
  %138 = call i32 @ATA_OUTL(i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %132, %127
  br label %140

140:                                              ; preds = %139, %109
  store i32 0, i32* %2, align 4
  br label %142

141:                                              ; preds = %95
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ahci_ch_detval(%struct.ahci_channel*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ahci_sata_connect(%struct.ahci_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
