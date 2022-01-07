; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BXE_RECOVERY_WAIT = common dso_local global i64 0, align 8
@BXE_STATE_OPEN = common dso_local global i64 0, align 8
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@BXE_RECOVERY_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"bxe%d: Recovery started errors 0x%x recovery state 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxe_handle_error(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %3 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %4 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BXE_RECOVERY_WAIT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BXE_STATE_OPEN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %22 = call i32 @bxe_int_disable(%struct.bxe_softc* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LINK_STATE_DOWN, align 4
  %34 = call i32 @if_link_state_change(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i64, i64* @BXE_RECOVERY_INIT, align 8
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @BLOGI(%struct.bxe_softc* %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %45, i64 %48)
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %51 = call i32 @bxe_parity_recover(%struct.bxe_softc* %50)
  br label %52

52:                                               ; preds = %8, %35, %9
  ret void
}

declare dso_local i32 @bxe_int_disable(%struct.bxe_softc*) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @BLOGI(%struct.bxe_softc*, i8*, i32, i64, i64) #1

declare dso_local i32 @bxe_parity_recover(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
