; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_lna_div.c_ath_lna_div_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_lna_div.c_ath_lna_div_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_diag = type { i32, i64, i64, i32, i32 }

@ATH_DIAG_ID = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH_DIAG_DYN = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_lna_div_ioctl(%struct.ath_softc* %0, %struct.ath_diag* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_diag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_diag* %1, %struct.ath_diag** %4, align 8
  %11 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %12 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ATH_DIAG_ID, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %16 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %17 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %20 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %23 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ATH_DIAG_IN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %2
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @M_TEMP, align 4
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = call i8* @malloc(i64 %29, i32 %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %10, align 4
  br label %71

37:                                               ; preds = %28
  %38 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %39 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @copyin(i32 %40, i8* %41, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %71

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %50 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ATH_DIAG_DYN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @M_TEMP, align 4
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = load i32, i32* @M_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @malloc(i64 %56, i32 %57, i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %10, align 4
  br label %71

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i32, i32* %5, align 4
  switch i32 %68, label %69 [
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %64, %46, %35
  %72 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %73 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ATH_DIAG_IN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* @M_TEMP, align 4
  %84 = call i32 @free(i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %78, %71
  %86 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %87 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ATH_DIAG_DYN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i8*, i8** %7, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* @M_TEMP, align 4
  %98 = call i32 @free(i8* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %92, %85
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i64) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
