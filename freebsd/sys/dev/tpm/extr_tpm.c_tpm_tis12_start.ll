; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_tis12_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_tis12_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32, i32, i32, i32, i32 }

@UIO_READ = common dso_local global i32 0, align 4
@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_READ_TMO = common dso_local global i32 0, align 4
@TPM_STS_CMD_READY = common dso_local global i32 0, align 4
@TPM_STS = common dso_local global i32 0, align 4
@TPM_READY_TMO = common dso_local global i32 0, align 4
@TPM_STS_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_tis12_start(%struct.tpm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @UIO_READ, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %12 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %13 = load i32, i32* @TPM_STS_VALID, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TPM_READ_TMO, align 4
  %16 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tpm_waitfor(%struct.tpm_softc* %11, i32 %14, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %23 = call i32 @tpm_request_locality(%struct.tpm_softc* %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %21
  %28 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %29 = call i32 @tpm_status(%struct.tpm_softc* %28)
  %30 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %31 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %33 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TPM_STS_CMD_READY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %60

39:                                               ; preds = %27
  %40 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %41 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %44 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TPM_STS, align 4
  %47 = load i32, i32* @TPM_STS_CMD_READY, align 4
  %48 = call i32 @bus_space_write_1(i32 %42, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %50 = load i32, i32* @TPM_STS_CMD_READY, align 4
  %51 = load i32, i32* @TPM_READY_TMO, align 4
  %52 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %53 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tpm_waitfor(%struct.tpm_softc* %49, i32 %50, i32 %51, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %38, %25, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @tpm_waitfor(%struct.tpm_softc*, i32, i32, i32) #1

declare dso_local i32 @tpm_request_locality(%struct.tpm_softc*, i32) #1

declare dso_local i32 @tpm_status(%struct.tpm_softc*) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
