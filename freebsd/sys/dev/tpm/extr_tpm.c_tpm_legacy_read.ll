; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32, i32 }

@TPM_LEGACY_DA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TPM_LEGACY_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_legacy_read(%struct.tpm_softc* %0, i8* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_softc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  br label %18

18:                                               ; preds = %62, %5
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %65

26:                                               ; preds = %24
  store i32 1000, i32* %14, align 4
  br label %27

27:                                               ; preds = %46, %26
  %28 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %29 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %32 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bus_space_read_1(i32 %30, i32 %33, i32 1)
  %35 = load i32, i32* @TPM_LEGACY_DA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %14, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EIO, align 4
  store i32 %44, i32* %6, align 4
  br label %68

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = call i32 @DELAY(i32 1)
  br label %27

48:                                               ; preds = %27
  %49 = load i32, i32* @TPM_LEGACY_DELAY, align 4
  %50 = call i32 @DELAY(i32 %49)
  %51 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %52 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %55 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bus_space_read_1(i32 %53, i32 %56, i32 0)
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %12, align 8
  store i32 %57, i32* %58, align 4
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %9, align 4
  br label %18

65:                                               ; preds = %24
  %66 = load i64, i64* %13, align 8
  %67 = load i64*, i64** %10, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %43
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
