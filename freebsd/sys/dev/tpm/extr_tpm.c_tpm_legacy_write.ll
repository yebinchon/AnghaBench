; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32, i32 }

@TPM_BUFSIZ = common dso_local global i32 0, align 4
@TPM_LEGACY_LAST = common dso_local global i32 0, align 4
@TPM_LEGACY_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_legacy_write(%struct.tpm_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tpm_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %45, %3
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TPM_BUFSIZ, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %28 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TPM_LEGACY_LAST, align 4
  %31 = call i32 @bus_space_write_1(i32 %26, i32 %29, i32 1, i32 %30)
  %32 = load i32, i32* @TPM_LEGACY_DELAY, align 4
  %33 = call i32 @DELAY(i32 %32)
  br label %34

34:                                               ; preds = %23, %19, %16
  %35 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %36 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tpm_softc*, %struct.tpm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %41, align 4
  %44 = call i32 @bus_space_write_1(i32 %37, i32 %40, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @TPM_LEGACY_DELAY, align 4
  %47 = call i32 @DELAY(i32 %46)
  br label %12

48:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
