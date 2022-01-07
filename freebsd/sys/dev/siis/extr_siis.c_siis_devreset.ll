; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_devreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_devreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i32 }

@SIIS_P_CTLSET = common dso_local global i32 0, align 4
@SIIS_P_CTL_DEV_RESET = common dso_local global i32 0, align 4
@SIIS_P_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"device reset stuck (timeout 100ms) status = %08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @siis_devreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_devreset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.siis_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.siis_channel* @device_get_softc(i32 %7)
  store %struct.siis_channel* %8, %struct.siis_channel** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %10 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SIIS_P_CTLSET, align 4
  %13 = load i32, i32* @SIIS_P_CTL_DEV_RESET, align 4
  %14 = call i32 @ATA_OUTL(i32 %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %34, %1
  %16 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %17 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SIIS_P_STS, align 4
  %20 = call i32 @ATA_INL(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @SIIS_P_CTL_DEV_RESET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = call i32 @DELAY(i32 100)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = icmp sgt i32 %26, 1000
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EBUSY, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %24
  br label %15

35:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
