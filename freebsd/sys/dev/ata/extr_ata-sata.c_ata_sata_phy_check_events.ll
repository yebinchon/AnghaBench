; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_sata_phy_check_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_sata_phy_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i64, i32 }

@ATA_SERROR = common dso_local global i32 0, align 4
@ATA_SE_PHY_CHANGED = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ATA_SSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PHYRDY change\0A\00", align 1
@ATA_SS_DET_MASK = common dso_local global i32 0, align 4
@ATA_SS_DET_PHY_ONLINE = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@ATA_SS_SPD_NO_SPEED = common dso_local global i32 0, align 4
@ATA_SS_IPM_MASK = common dso_local global i32 0, align 4
@ATA_SS_IPM_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"CONNECT requested\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"DISCONNECT requested\0A\00", align 1
@taskqueue_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sata_phy_check_events(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ata_channel* @device_get_softc(i32 %8)
  store %struct.ata_channel* %9, %struct.ata_channel** %5, align 8
  %10 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ATA_SERROR, align 4
  %13 = call i64 @ata_sata_scr_read(%struct.ata_channel* %10, i32 %11, i32 %12, i32* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %82

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %82

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ATA_SERROR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ata_sata_scr_write(%struct.ata_channel* %24, i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ATA_SE_PHY_CHANGED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %29
  %35 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %34
  %40 = load i64, i64* @bootverbose, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @ATA_SSTATUS, align 4
  %46 = call i64 @ata_sata_scr_read(%struct.ata_channel* %43, i32 %44, i32 %45, i32* %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %76

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ATA_SS_DET_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @ATA_SS_DET_PHY_ONLINE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @ATA_SS_SPD_NO_SPEED, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ATA_SS_IPM_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @ATA_SS_IPM_ACTIVE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %75

72:                                               ; preds = %63, %57, %51
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %48
  br label %77

77:                                               ; preds = %76, %39
  %78 = load i32, i32* @taskqueue_thread, align 4
  %79 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %80 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %79, i32 0, i32 1
  %81 = call i32 @taskqueue_enqueue(i32 %78, i32* %80)
  br label %82

82:                                               ; preds = %15, %19, %77, %34, %29
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i64 @ata_sata_scr_read(%struct.ata_channel*, i32, i32, i32*) #1

declare dso_local i32 @ata_sata_scr_write(%struct.ata_channel*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
