; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_getburst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_getburst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32, i32 }

@TPM_BURST_TMO = common dso_local global i32 0, align 4
@TPM_STS = common dso_local global i64 0, align 8
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tpm_getburst\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_getburst(%struct.tpm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %3, align 8
  %7 = load i32, i32* @TPM_BURST_TMO, align 4
  %8 = call i32 @tpm_tmotohz(i32 %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %57, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %13, 0
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %58

18:                                               ; preds = %16
  %19 = load %struct.tpm_softc*, %struct.tpm_softc** %3, align 8
  %20 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tpm_softc*, %struct.tpm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @TPM_STS, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @bus_space_read_1(i32 %21, i32 %24, i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.tpm_softc*, %struct.tpm_softc** %3, align 8
  %29 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tpm_softc*, %struct.tpm_softc** %3, align 8
  %32 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @TPM_STS, align 8
  %35 = add nsw i64 %34, 2
  %36 = call i32 @bus_space_read_1(i32 %30, i32 %33, i64 %35)
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %18
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %59

44:                                               ; preds = %18
  %45 = load %struct.tpm_softc*, %struct.tpm_softc** %3, align 8
  %46 = load i32, i32* @PRIBIO, align 4
  %47 = load i32, i32* @PCATCH, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @tsleep(%struct.tpm_softc* %45, i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @EWOULDBLOCK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %59

57:                                               ; preds = %52, %44
  br label %9

58:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %56, %42
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @tpm_tmotohz(i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i64) #1

declare dso_local i32 @tsleep(%struct.tpm_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
