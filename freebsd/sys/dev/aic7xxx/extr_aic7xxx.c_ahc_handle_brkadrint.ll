; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_brkadrint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_handle_brkadrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.ahc_softc = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@num_errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: brkadrint, %s at seqaddr = 0x%x\0A\00", align 1
@ahc_hard_errors = common dso_local global %struct.TYPE_2__* null, align 8
@SEQADDR0 = common dso_local global i32 0, align 4
@SEQADDR1 = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@ALL_CHANNELS = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@CAM_NO_HBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_handle_brkadrint(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = load i32, i32* @ERROR, align 4
  %7 = call i32 @ahc_inb(%struct.ahc_softc* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @num_errors, align 4
  %14 = icmp slt i32 %12, %13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %8

23:                                               ; preds = %15
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %25 = call i8* @ahc_name(%struct.ahc_softc* %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahc_hard_errors, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = load i32, i32* @SEQADDR0, align 4
  %34 = call i32 @ahc_inb(%struct.ahc_softc* %32, i32 %33)
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = load i32, i32* @SEQADDR1, align 4
  %37 = call i32 @ahc_inb(%struct.ahc_softc* %35, i32 %36)
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %31, i32 %39)
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %42 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %41)
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %44 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %45 = load i32, i32* @ALL_CHANNELS, align 4
  %46 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %47 = load i32, i32* @SCB_LIST_NULL, align 4
  %48 = load i32, i32* @ROLE_UNKNOWN, align 4
  %49 = load i32, i32* @CAM_NO_HBA, align 4
  %50 = call i32 @ahc_abort_scbs(%struct.ahc_softc* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %52 = call i32 @ahc_shutdown(%struct.ahc_softc* %51)
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_abort_scbs(%struct.ahc_softc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_shutdown(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
