; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_enable_diag_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_enable_diag_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }

@MPT_OFFSET_DIAGNOSTIC = common dso_local global i32 0, align 4
@MPI_DIAG_DRWE = common dso_local global i32 0, align 4
@MPT_OFFSET_SEQUENCE = common dso_local global i32 0, align 4
@MPI_WRSEQ_1ST_KEY_VALUE = common dso_local global i32 0, align 4
@MPI_WRSEQ_2ND_KEY_VALUE = common dso_local global i32 0, align 4
@MPI_WRSEQ_3RD_KEY_VALUE = common dso_local global i32 0, align 4
@MPI_WRSEQ_4TH_KEY_VALUE = common dso_local global i32 0, align 4
@MPI_WRSEQ_5TH_KEY_VALUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_enable_diag_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_enable_diag_mode(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store i32 20, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = load i32, i32* @MPT_OFFSET_DIAGNOSTIC, align 4
  %12 = call i32 @mpt_read(%struct.mpt_softc* %10, i32 %11)
  %13 = load i32, i32* @MPI_DIAG_DRWE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %42

17:                                               ; preds = %9
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %19 = load i32, i32* @MPT_OFFSET_SEQUENCE, align 4
  %20 = call i32 @mpt_write(%struct.mpt_softc* %18, i32 %19, i32 255)
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %22 = load i32, i32* @MPT_OFFSET_SEQUENCE, align 4
  %23 = load i32, i32* @MPI_WRSEQ_1ST_KEY_VALUE, align 4
  %24 = call i32 @mpt_write(%struct.mpt_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %26 = load i32, i32* @MPT_OFFSET_SEQUENCE, align 4
  %27 = load i32, i32* @MPI_WRSEQ_2ND_KEY_VALUE, align 4
  %28 = call i32 @mpt_write(%struct.mpt_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %30 = load i32, i32* @MPT_OFFSET_SEQUENCE, align 4
  %31 = load i32, i32* @MPI_WRSEQ_3RD_KEY_VALUE, align 4
  %32 = call i32 @mpt_write(%struct.mpt_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %34 = load i32, i32* @MPT_OFFSET_SEQUENCE, align 4
  %35 = load i32, i32* @MPI_WRSEQ_4TH_KEY_VALUE, align 4
  %36 = call i32 @mpt_write(%struct.mpt_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %38 = load i32, i32* @MPT_OFFSET_SEQUENCE, align 4
  %39 = load i32, i32* @MPI_WRSEQ_5TH_KEY_VALUE, align 4
  %40 = call i32 @mpt_write(%struct.mpt_softc* %37, i32 %38, i32 %39)
  %41 = call i32 @DELAY(i32 100000)
  br label %5

42:                                               ; preds = %16, %5
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mpt_read(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_write(%struct.mpt_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
