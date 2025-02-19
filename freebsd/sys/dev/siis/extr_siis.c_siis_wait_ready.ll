; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_wait_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { i32 }

@SIIS_P_STS = common dso_local global i32 0, align 4
@SIIS_P_CTL_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"port is not ready (timeout %dms) status = %08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @siis_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siis_wait_ready(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.siis_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.siis_channel* @device_get_softc(i32 %9)
  store %struct.siis_channel* %10, %struct.siis_channel** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %13 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SIIS_P_STS, align 4
  %16 = call i32 @ATA_INL(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @SIIS_P_CTL_READY, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  %21 = call i32 @DELAY(i32 1000)
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @EBUSY, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %20
  br label %11

33:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
