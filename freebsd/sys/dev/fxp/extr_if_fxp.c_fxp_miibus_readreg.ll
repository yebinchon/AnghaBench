; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32 }

@FXP_CSR_MDICONTROL = common dso_local global i32 0, align 4
@FXP_MDI_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fxp_miibus_readreg: timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @fxp_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxp_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fxp_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.fxp_softc* @device_get_softc(i32 %10)
  store %struct.fxp_softc* %11, %struct.fxp_softc** %7, align 8
  store i32 10000, i32* %8, align 4
  %12 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %13 = load i32, i32* @FXP_CSR_MDICONTROL, align 4
  %14 = load i32, i32* @FXP_MDI_READ, align 4
  %15 = shl i32 %14, 26
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 16
  %18 = or i32 %15, %17
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 21
  %21 = or i32 %18, %20
  %22 = call i32 @CSR_WRITE_4(%struct.fxp_softc* %12, i32 %13, i32 %21)
  br label %23

23:                                               ; preds = %35, %3
  %24 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %25 = load i32, i32* @FXP_CSR_MDICONTROL, align 4
  %26 = call i32 @CSR_READ_4(%struct.fxp_softc* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = and i32 %26, 268435456
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %30, 0
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i1 [ false, %23 ], [ %32, %29 ]
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = call i32 @DELAY(i32 10)
  br label %23

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 65535
  ret i32 %45
}

declare dso_local %struct.fxp_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.fxp_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
