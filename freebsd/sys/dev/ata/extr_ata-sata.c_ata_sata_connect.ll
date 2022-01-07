; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_sata_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_sata_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32 }

@ATA_SSTATUS = common dso_local global i32 0, align 4
@ATA_SS_DET_MASK = common dso_local global i32 0, align 4
@ATA_SS_DET_PHY_ONLINE = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@ATA_SS_SPD_NO_SPEED = common dso_local global i32 0, align 4
@ATA_SS_IPM_MASK = common dso_local global i32 0, align 4
@ATA_SS_IPM_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"SATA connect timeout status=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"p%d: SATA connect timeout status=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"SATA connect time=%dms status=%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"p%d: SATA connect time=%dms status=%08x\0A\00", align 1
@ATA_SERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_channel*, i32, i32)* @ata_sata_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sata_connect(%struct.ata_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_channel* %0, %struct.ata_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 2
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 100
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %3, %47
  %16 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ATA_SSTATUS, align 4
  %19 = call i64 @ata_sata_scr_read(%struct.ata_channel* %16, i32 %17, i32 %18, i32* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %105

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ATA_SS_DET_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @ATA_SS_DET_PHY_ONLINE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @ATA_SS_SPD_NO_SPEED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ATA_SS_IPM_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @ATA_SS_IPM_ACTIVE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %49

41:                                               ; preds = %34, %28, %22
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %41
  %48 = call i32 @ata_udelay(i32 10000)
  br label %15

49:                                               ; preds = %46, %40
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %61 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %72

65:                                               ; preds = %56
  %66 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %67 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %59
  br label %94

73:                                               ; preds = %52
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %78 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %80, 10
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  br label %93

84:                                               ; preds = %73
  %85 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %86 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %89, 10
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %76
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94, %49
  %96 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @ATA_SERROR, align 4
  %99 = call i32 @ata_sata_scr_write(%struct.ata_channel* %96, i32 %97, i32 %98, i32 -1)
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 0, i32 1
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %95, %21
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @ata_sata_scr_read(%struct.ata_channel*, i32, i32, i32*) #1

declare dso_local i32 @ata_udelay(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ata_sata_scr_write(%struct.ata_channel*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
