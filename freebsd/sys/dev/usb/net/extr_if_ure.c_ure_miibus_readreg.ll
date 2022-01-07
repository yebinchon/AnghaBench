; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { i32 }

@URE_GMEDIASTAT = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_OCP_BASE_MII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ure_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ure_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ure_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ure_softc* @device_get_softc(i32 %11)
  store %struct.ure_softc* %12, %struct.ure_softc** %8, align 8
  %13 = load %struct.ure_softc*, %struct.ure_softc** %8, align 8
  %14 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_owned(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.ure_softc*, %struct.ure_softc** %8, align 8
  %20 = call i32 @URE_LOCK(%struct.ure_softc* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @URE_GMEDIASTAT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.ure_softc*, %struct.ure_softc** %8, align 8
  %30 = call i32 @URE_UNLOCK(%struct.ure_softc* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.ure_softc*, %struct.ure_softc** %8, align 8
  %33 = load i32, i32* @URE_GMEDIASTAT, align 4
  %34 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %35 = call i32 @ure_read_1(%struct.ure_softc* %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %51

36:                                               ; preds = %21
  %37 = load %struct.ure_softc*, %struct.ure_softc** %8, align 8
  %38 = load i64, i64* @URE_OCP_BASE_MII, align 8
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i32 @ure_ocp_reg_read(%struct.ure_softc* %37, i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load %struct.ure_softc*, %struct.ure_softc** %8, align 8
  %48 = call i32 @URE_UNLOCK(%struct.ure_softc* %47)
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %31
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.ure_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @URE_LOCK(%struct.ure_softc*) #1

declare dso_local i32 @URE_UNLOCK(%struct.ure_softc*) #1

declare dso_local i32 @ure_read_1(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_ocp_reg_read(%struct.ure_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
