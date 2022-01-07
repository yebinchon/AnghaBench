; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_errata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { i32, i32 }

@MVS_Q_SOC65 = common dso_local global i32 0, align 4
@SATA_PHYM3 = common dso_local global i32 0, align 4
@SATA_PHYM4 = common dso_local global i32 0, align 4
@SATA_PHYM9_GEN2 = common dso_local global i32 0, align 4
@SATA_PHYM9_GEN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_errata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_errata(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mvs_channel* @device_get_softc(i32 %5)
  store %struct.mvs_channel* %6, %struct.mvs_channel** %3, align 8
  %7 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %8 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MVS_Q_SOC65, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %82

13:                                               ; preds = %1
  %14 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %15 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SATA_PHYM3, align 4
  %18 = call i32 @ATA_INL(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, -402653185
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 134217728
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, -1610612737
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, 536870912
  store i32 %26, i32* %4, align 4
  %27 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %28 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SATA_PHYM3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ATA_OUTL(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %34 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SATA_PHYM4, align 4
  %37 = call i32 @ATA_INL(i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, -2
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, 65536
  store i32 %41, i32* %4, align 4
  %42 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %43 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SATA_PHYM4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ATA_OUTL(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %49 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SATA_PHYM9_GEN2, align 4
  %52 = call i32 @ATA_INL(i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, -16
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, 8
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, -16385
  store i32 %58, i32* %4, align 4
  %59 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %60 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SATA_PHYM9_GEN2, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ATA_OUTL(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %66 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SATA_PHYM9_GEN1, align 4
  %69 = call i32 @ATA_INL(i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, -16
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, 8
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, -16385
  store i32 %75, i32* %4, align 4
  %76 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %77 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SATA_PHYM9_GEN1, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @ATA_OUTL(i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
