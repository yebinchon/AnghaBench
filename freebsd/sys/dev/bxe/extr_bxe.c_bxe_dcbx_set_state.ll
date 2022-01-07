; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dcbx_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dcbx_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@BXE_DCBX_ENABLED_INVALID = common dso_local global i64 0, align 8
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DCB state [%s:%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@BXE_DCBX_ENABLED_OFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"user-mode\00", align 1
@BXE_DCBX_ENABLED_ON_NEG_OFF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"on-chip static\00", align 1
@BXE_DCBX_ENABLED_ON_NEG_ON = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"on-chip with negotiation\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_dcbx_set_state(%struct.bxe_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %8 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %24

17:                                               ; preds = %3
  %18 = load i64, i64* @FALSE, align 8
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* @BXE_DCBX_ENABLED_INVALID, align 8
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %17, %10
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %26 = load i32, i32* @DBG_LOAD, align 4
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @BXE_DCBX_ENABLED_OFF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %48

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @BXE_DCBX_ENABLED_ON_NEG_OFF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %46

40:                                               ; preds = %35
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @BXE_DCBX_ENABLED_ON_NEG_ON, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  br label %46

46:                                               ; preds = %40, %39
  %47 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %39 ], [ %45, %40 ]
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %34 ], [ %47, %46 ]
  %50 = call i32 @BLOGD(%struct.bxe_softc* %25, i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %49)
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
