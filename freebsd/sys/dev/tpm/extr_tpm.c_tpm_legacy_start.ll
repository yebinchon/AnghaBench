; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.timeval = type { i64, i32 }

@UIO_READ = common dso_local global i32 0, align 4
@TPM_LEGACY_DA = common dso_local global i32 0, align 4
@TPM_LEGACY_TMO = common dso_local global i32 0, align 4
@TPM_LEGACY_SLEEP = common dso_local global i32 0, align 4
@TPM_LEGACY_BUSY = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"legacy_tpm_start\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TPM_LEGACY_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_legacy_start(%struct.tpm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @UIO_READ, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @TPM_LEGACY_DA, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @TPM_LEGACY_TMO, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = call i32 @tvtohz(%struct.timeval* %6)
  %23 = load i32, i32* @TPM_LEGACY_SLEEP, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %60, %17
  %26 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %27 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %30 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bus_space_read_1(i32 %28, i32 %31, i32 1)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @TPM_LEGACY_BUSY, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %40, 0
  br label %43

43:                                               ; preds = %39, %25
  %44 = phi i1 [ false, %25 ], [ %42, %39 ]
  br i1 %44, label %45, label %61

45:                                               ; preds = %43
  %46 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %47 = load i32, i32* @PRIBIO, align 4
  %48 = load i32, i32* @PCATCH, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TPM_LEGACY_SLEEP, align 4
  %51 = call i32 @tsleep(%struct.tpm_softc* %46, i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @EWOULDBLOCK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %72

60:                                               ; preds = %54, %45
  br label %25

61:                                               ; preds = %43
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @TPM_LEGACY_BUSY, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @EIO, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %58
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @tsleep(%struct.tpm_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
