; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32, i32, i32, i32 }

@tpm_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c": cannot map tpm registers (%d)\0A\00", align 1
@TPM_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c": %.4s %d.%d @0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_legacy_init(%struct.tpm_softc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %13 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @tpm_enabled, align 4
  %16 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %17 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %16, i32 0, i32 2
  %18 = call i32 @bus_space_map(i32 %14, i32 %15, i32 2, i32 0, i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* @tpm_enabled, align 4
  store i32 1, i32* %4, align 4
  br label %57

23:                                               ; preds = %3
  store i32 8, i32* %11, align 4
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %11, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %30 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tpm_softc*, %struct.tpm_softc** %5, align 8
  %33 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @TPM_ID, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call signext i8 @tpm_legacy_in(i32 %31, i32 %34, i64 %38)
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %41
  store i8 %39, i8* %42, align 1
  br label %24

43:                                               ; preds = %24
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i32, i32* @tpm_enabled, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %47, i32 %50, i32 %51)
  %53 = load i32, i32* @tpm_enabled, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @tpm_enabled, align 4
  %56 = ashr i32 %55, 16
  store i32 %56, i32* %9, align 4
  store i32 0, i32* @tpm_enabled, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %43, %20
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local signext i8 @tpm_legacy_in(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
