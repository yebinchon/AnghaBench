; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_tis12_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_tis12_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32, i32, i32 }

@TPM_DATA = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_READ_TMO = common dso_local global i32 0, align 4
@TPM_STS_DATA_EXPECT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TPM_STS_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_tis12_write(%struct.tpm_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %15 = call i32 @tpm_request_locality(%struct.tpm_softc* %14, i32 0)
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %112

19:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %79, %19
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %20
  %27 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %28 = call i32 @tpm_getburst(%struct.tpm_softc* %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %54, %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %33, %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %57

40:                                               ; preds = %38
  %41 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %42 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %45 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TPM_DATA, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %8, align 8
  %50 = load i32, i32* %48, align 4
  %51 = call i32 @bus_space_write_1(i32 %43, i32 %46, i32 %47, i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  br label %29

57:                                               ; preds = %38
  %58 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %59 = load i32, i32* @TPM_STS_VALID, align 4
  %60 = load i32, i32* @TPM_READ_TMO, align 4
  %61 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %62 = call i32 @tpm_waitfor(%struct.tpm_softc* %58, i32 %59, i32 %60, %struct.tpm_softc* %61)
  store i32 %62, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %112

66:                                               ; preds = %57
  %67 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %68 = call i32 @tpm_status(%struct.tpm_softc* %67)
  %69 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %70 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %72 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TPM_STS_DATA_EXPECT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @EIO, align 4
  store i32 %78, i32* %4, align 4
  br label %112

79:                                               ; preds = %66
  br label %20

80:                                               ; preds = %20
  %81 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %82 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %85 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TPM_DATA, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %8, align 8
  %90 = load i32, i32* %88, align 4
  %91 = call i32 @bus_space_write_1(i32 %83, i32 %86, i32 %87, i32 %90)
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  %94 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %95 = load i32, i32* @TPM_STS_VALID, align 4
  %96 = load i32, i32* @TPM_READ_TMO, align 4
  %97 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %98 = call i32 @tpm_waitfor(%struct.tpm_softc* %94, i32 %95, i32 %96, %struct.tpm_softc* %97)
  store i32 %98, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %80
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %112

102:                                              ; preds = %80
  %103 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %104 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @TPM_STS_DATA_EXPECT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @EIO, align 4
  store i32 %110, i32* %4, align 4
  br label %112

111:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %109, %100, %77, %64, %17
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @tpm_request_locality(%struct.tpm_softc*, i32) #1

declare dso_local i32 @tpm_getburst(%struct.tpm_softc*) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @tpm_waitfor(%struct.tpm_softc*, i32, i32, %struct.tpm_softc*) #1

declare dso_local i32 @tpm_status(%struct.tpm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
