; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_sata_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_sata_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, i32 }

@SATA_SS = common dso_local global i32 0, align 4
@SATA_SS_DET_MASK = common dso_local global i32 0, align 4
@SATA_SS_DET_NO_DEVICE = common dso_local global i32 0, align 4
@SATA_SS_DET_PHY_ONLINE = common dso_local global i32 0, align 4
@SATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@SATA_SS_SPD_NO_SPEED = common dso_local global i32 0, align 4
@SATA_SS_IPM_MASK = common dso_local global i32 0, align 4
@SATA_SS_IPM_ACTIVE = common dso_local global i32 0, align 4
@SATA_SS_DET_PHY_OFFLINE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"SATA offline status=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"SATA connect timeout time=%dus status=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"SATA connect time=%dus status=%08x\0A\00", align 1
@SATA_SE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_channel*)* @mvs_sata_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_sata_connect(%struct.mvs_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvs_channel* %0, %struct.mvs_channel** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %66, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %69

10:                                               ; preds = %7
  %11 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %12 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SATA_SS, align 4
  %15 = call i32 @ATA_INL(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SATA_SS_DET_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @SATA_SS_DET_NO_DEVICE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %10
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SATA_SS_DET_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @SATA_SS_DET_PHY_ONLINE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SATA_SS_SPD_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @SATA_SS_SPD_NO_SPEED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SATA_SS_IPM_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @SATA_SS_IPM_ACTIVE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %69

41:                                               ; preds = %34, %28, %22
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SATA_SS_DET_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SATA_SS_DET_PHY_OFFLINE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %52 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  store i32 0, i32* %2, align 4
  br label %104

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = icmp sge i32 %61, 100
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %69

64:                                               ; preds = %60, %57
  %65 = call i32 @DELAY(i32 100)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %7

69:                                               ; preds = %63, %40, %7
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 1000
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %72, %69
  %76 = load i64, i64* @bootverbose, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %80 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %82, 100
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %75
  store i32 0, i32* %2, align 4
  br label %104

87:                                               ; preds = %72
  %88 = load i64, i64* @bootverbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %92 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = mul nsw i32 %94, 100
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %87
  %99 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %100 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SATA_SE, align 4
  %103 = call i32 @ATA_OUTL(i32 %101, i32 %102, i32 -1)
  store i32 1, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %86, %56
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
