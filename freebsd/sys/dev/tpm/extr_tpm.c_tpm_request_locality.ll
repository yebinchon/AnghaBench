; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_request_locality.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TPM_ACCESS = common dso_local global i32 0, align 4
@TPM_ACCESS_VALID = common dso_local global i32 0, align 4
@TPM_ACCESS_ACTIVE_LOCALITY = common dso_local global i32 0, align 4
@TPM_ACCESS_REQUEST_USE = common dso_local global i32 0, align 4
@TPM_ACCESS_TMO = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tpm_locality\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TPM_ACCESS_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_request_locality(%struct.tpm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %96

13:                                               ; preds = %2
  %14 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %18 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TPM_ACCESS, align 4
  %21 = call i32 @bus_space_read_1(i32 %16, i32 %19, i32 %20)
  %22 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %23 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %27 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %96

31:                                               ; preds = %13
  %32 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %33 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %36 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TPM_ACCESS, align 4
  %39 = load i32, i32* @TPM_ACCESS_REQUEST_USE, align 4
  %40 = call i32 @bus_space_write_1(i32 %34, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @TPM_ACCESS_TMO, align 4
  %42 = call i32 @tpm_tmotohz(i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %82, %31
  %44 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %45 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TPM_ACCESS, align 4
  %51 = call i32 @bus_space_read_1(i32 %46, i32 %49, i32 %50)
  %52 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %53 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %57 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %58 = or i32 %56, %57
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %43
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %7, align 4
  %63 = icmp ne i32 %61, 0
  br label %64

64:                                               ; preds = %60, %43
  %65 = phi i1 [ false, %43 ], [ %63, %60 ]
  br i1 %65, label %66, label %83

66:                                               ; preds = %64
  %67 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %68 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PRIBIO, align 4
  %71 = load i32, i32* @PCATCH, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @tsleep(i32 %69, i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @EWOULDBLOCK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %96

82:                                               ; preds = %76, %66
  br label %43

83:                                               ; preds = %64
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %86 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %90 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %91 = or i32 %89, %90
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @EBUSY, align 4
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %93, %80, %30, %11
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @tpm_tmotohz(i32) #1

declare dso_local i32 @tsleep(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
