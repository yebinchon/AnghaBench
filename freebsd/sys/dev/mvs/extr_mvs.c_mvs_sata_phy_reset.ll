; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_sata_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_sata_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SATA_SC_SPD_SPEED_GEN1 = common dso_local global i32 0, align 4
@SATA_SC_SPD_SPEED_GEN2 = common dso_local global i32 0, align 4
@SATA_SC_SPD_SPEED_GEN3 = common dso_local global i32 0, align 4
@SATA_SC = common dso_local global i32 0, align 4
@SATA_SC_DET_RESET = common dso_local global i32 0, align 4
@SATA_SC_IPM_DIS_PARTIAL = common dso_local global i32 0, align 4
@SATA_SC_IPM_DIS_SLUMBER = common dso_local global i32 0, align 4
@SATA_SC_DET_IDLE = common dso_local global i32 0, align 4
@SATA_SC_DET_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_sata_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_sata_phy_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mvs_channel* @device_get_softc(i32 %7)
  store %struct.mvs_channel* %8, %struct.mvs_channel** %4, align 8
  %9 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %10 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %13 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 15, i32 0
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @SATA_SC_SPD_SPEED_GEN1, align 4
  store i32 %25, i32* %6, align 4
  br label %39

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @SATA_SC_SPD_SPEED_GEN2, align 4
  store i32 %30, i32* %6, align 4
  br label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @SATA_SC_SPD_SPEED_GEN3, align 4
  store i32 %35, i32* %6, align 4
  br label %37

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %34
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %41 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SATA_SC, align 4
  %44 = load i32, i32* @SATA_SC_DET_RESET, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SATA_SC_IPM_DIS_PARTIAL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SATA_SC_IPM_DIS_SLUMBER, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @ATA_OUTL(i32 %42, i32 %43, i32 %50)
  %52 = call i32 @DELAY(i32 1000)
  %53 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %54 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SATA_SC, align 4
  %57 = load i32, i32* @SATA_SC_DET_IDLE, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %61 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %39
  br label %69

65:                                               ; preds = %39
  %66 = load i32, i32* @SATA_SC_IPM_DIS_PARTIAL, align 4
  %67 = load i32, i32* @SATA_SC_IPM_DIS_SLUMBER, align 4
  %68 = or i32 %66, %67
  br label %69

69:                                               ; preds = %65, %64
  %70 = phi i32 [ 0, %64 ], [ %68, %65 ]
  %71 = or i32 %59, %70
  %72 = call i32 @ATA_OUTL(i32 %55, i32 %56, i32 %71)
  %73 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %74 = call i32 @mvs_sata_connect(%struct.mvs_channel* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %69
  %77 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %78 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.mvs_channel*, %struct.mvs_channel** %4, align 8
  %83 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SATA_SC, align 4
  %86 = load i32, i32* @SATA_SC_DET_DISABLE, align 4
  %87 = call i32 @ATA_OUTL(i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %76
  store i32 0, i32* %2, align 4
  br label %90

89:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mvs_sata_connect(%struct.mvs_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
