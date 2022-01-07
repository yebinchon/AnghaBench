; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.timeval = type { i64, i32 }

@UIO_READ = common dso_local global i32 0, align 4
@TPM_LEGACY_ABRT = common dso_local global i32 0, align 4
@TPM_LEGACY_TMO = common dso_local global i32 0, align 4
@TPM_LEGACY_SLEEP = common dso_local global i32 0, align 4
@TPM_LEGACY_BUSY = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"legacy_tpm_end\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TPM_LEGACY_RE = common dso_local global i32 0, align 4
@TPM_LEGACY_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_legacy_end(%struct.tpm_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UIO_READ, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13, %3
  %18 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %19 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %22 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TPM_LEGACY_ABRT, align 4
  %25 = call i32 @bus_space_write_1(i32 %20, i32 %23, i32 1, i32 %24)
  br label %81

26:                                               ; preds = %13
  %27 = load i32, i32* @TPM_LEGACY_TMO, align 4
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = call i32 @tvtohz(%struct.timeval* %8)
  %31 = load i32, i32* @TPM_LEGACY_SLEEP, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %65, %26
  %34 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %35 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %38 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bus_space_read_1(i32 %36, i32 %39, i32 1)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @TPM_LEGACY_BUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  %47 = icmp ne i32 %45, 0
  br label %48

48:                                               ; preds = %44, %33
  %49 = phi i1 [ false, %33 ], [ %47, %44 ]
  br i1 %49, label %50, label %66

50:                                               ; preds = %48
  %51 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %52 = load i32, i32* @PRIBIO, align 4
  %53 = load i32, i32* @PCATCH, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TPM_LEGACY_SLEEP, align 4
  %56 = call i32 @tsleep(%struct.tpm_softc* %51, i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @EWOULDBLOCK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %4, align 4
  br label %83

65:                                               ; preds = %59, %50
  br label %33

66:                                               ; preds = %48
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @TPM_LEGACY_BUSY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  store i32 %72, i32* %4, align 4
  br label %83

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @TPM_LEGACY_RE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %4, align 4
  br label %83

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %17
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %78, %71, %63
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @tsleep(%struct.tpm_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
