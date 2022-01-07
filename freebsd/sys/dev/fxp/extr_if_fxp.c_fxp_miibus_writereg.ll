; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32 }

@FXP_CSR_MDICONTROL = common dso_local global i32 0, align 4
@FXP_MDI_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fxp_miibus_writereg: timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fxp_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxp_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fxp_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.fxp_softc* @device_get_softc(i32 %11)
  store %struct.fxp_softc* %12, %struct.fxp_softc** %9, align 8
  store i32 10000, i32* %10, align 4
  %13 = load %struct.fxp_softc*, %struct.fxp_softc** %9, align 8
  %14 = load i32, i32* @FXP_CSR_MDICONTROL, align 4
  %15 = load i32, i32* @FXP_MDI_WRITE, align 4
  %16 = shl i32 %15, 26
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %16, %18
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 21
  %22 = or i32 %19, %21
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 65535
  %25 = or i32 %22, %24
  %26 = call i32 @CSR_WRITE_4(%struct.fxp_softc* %13, i32 %14, i32 %25)
  br label %27

27:                                               ; preds = %39, %4
  %28 = load %struct.fxp_softc*, %struct.fxp_softc** %9, align 8
  %29 = load i32, i32* @FXP_CSR_MDICONTROL, align 4
  %30 = call i32 @CSR_READ_4(%struct.fxp_softc* %28, i32 %29)
  %31 = and i32 %30, 268435456
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %34, 0
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ false, %27 ], [ %36, %33 ]
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call i32 @DELAY(i32 10)
  br label %27

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  ret i32 0
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
