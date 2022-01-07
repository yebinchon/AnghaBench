; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_scb_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_scb_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32 }
%union.anon = type { [2 x i8*] }

@FXP_CSR_SCB_COMMAND = common dso_local global i32 0, align 4
@FXP_CSR_FC_THRESH = common dso_local global i32 0, align 4
@FXP_CSR_FC_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SCB timeout: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@FXP_CSR_SCB_STATACK = common dso_local global i32 0, align 4
@FXP_CSR_SCB_RUSCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_scb_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_scb_wait(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca i32, align 4
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  store i32 10000, i32* %4, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %7 = load i32, i32* @FXP_CSR_SCB_COMMAND, align 4
  %8 = call i8* @CSR_READ_1(%struct.fxp_softc* %6, i32 %7)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i1 [ false, %5 ], [ %13, %10 ]
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = call i32 @DELAY(i32 2)
  br label %5

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %23 = load i32, i32* @FXP_CSR_FC_THRESH, align 4
  %24 = call i8* @CSR_READ_1(%struct.fxp_softc* %22, i32 %23)
  %25 = bitcast %union.anon* %3 to [2 x i8*]*
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %25, i64 0, i64 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %28 = load i32, i32* @FXP_CSR_FC_STATUS, align 4
  %29 = call i8* @CSR_READ_1(%struct.fxp_softc* %27, i32 %28)
  %30 = bitcast %union.anon* %3 to [2 x i8*]*
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i64 0, i64 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %33 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %36 = load i32, i32* @FXP_CSR_SCB_COMMAND, align 4
  %37 = call i8* @CSR_READ_1(%struct.fxp_softc* %35, i32 %36)
  %38 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %39 = load i32, i32* @FXP_CSR_SCB_STATACK, align 4
  %40 = call i8* @CSR_READ_1(%struct.fxp_softc* %38, i32 %39)
  %41 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %42 = load i32, i32* @FXP_CSR_SCB_RUSCUS, align 4
  %43 = call i8* @CSR_READ_1(%struct.fxp_softc* %41, i32 %42)
  %44 = bitcast %union.anon* %3 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %40, i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %21, %18
  ret void
}

declare dso_local i8* @CSR_READ_1(%struct.fxp_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
