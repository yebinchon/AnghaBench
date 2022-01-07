; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_sata_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_sata_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i64, i64 }

@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_D_IBM = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@ATA_MASTER = common dso_local global i32 0, align 4
@ATA_STATUS = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_via_sata_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_via_sata_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ata_channel* @device_get_softc(i32 %7)
  store %struct.ata_channel* %8, %struct.ata_channel** %3, align 8
  %9 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %10 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ata_sata_phy_reset(i32 %14, i32 0, i32 0)
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %40, %13
  %17 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %18 = load i32, i32* @ATA_DRIVE, align 4
  %19 = load i32, i32* @ATA_D_IBM, align 4
  %20 = load i32, i32* @ATA_D_LBA, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ATA_MASTER, align 4
  %23 = call i32 @ATA_DEV(i32 %22)
  %24 = or i32 %21, %23
  %25 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %17, i32 %18, i32 %24)
  %26 = call i32 @DELAY(i32 1000)
  %27 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %28 = load i32, i32* @ATA_STATUS, align 4
  %29 = call i32 @ATA_IDX_INB(%struct.ata_channel* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ATA_S_BUSY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 100
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i1 [ false, %32 ], [ %39, %37 ]
  br i1 %41, label %16, label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @ata_sata_phy_reset(i32 %43, i32 1, i32 0)
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %71, %42
  %48 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %49 = load i32, i32* @ATA_DRIVE, align 4
  %50 = load i32, i32* @ATA_D_IBM, align 4
  %51 = load i32, i32* @ATA_D_LBA, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ATA_SLAVE, align 4
  %54 = call i32 @ATA_DEV(i32 %53)
  %55 = or i32 %52, %54
  %56 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %48, i32 %49, i32 %55)
  %57 = call i32 @DELAY(i32 1000)
  %58 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %59 = load i32, i32* @ATA_STATUS, align 4
  %60 = call i32 @ATA_IDX_INB(%struct.ata_channel* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ATA_S_BUSY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 100
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i1 [ false, %63 ], [ %70, %68 ]
  br i1 %72, label %47, label %73

73:                                               ; preds = %71
  br label %75

74:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @ata_generic_reset(i32 %79)
  br label %84

81:                                               ; preds = %75
  %82 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %83 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ata_sata_phy_reset(i32, i32, i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_DEV(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ata_generic_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
