; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_fatal_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_fatal_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"hardware error; resetting\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"len %u bytes\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"0x%08x 0x%08x 0x%08x, 0x%08x 0x%08x 0x%08x\0A\00", align 1
@ATH_RESET_NOLOSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ath_fatal_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_fatal_proc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ath_softc*
  store %struct.ath_softc* %10, %struct.ath_softc** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ath_hal_getfatalstate(i32 %23, i8** %8, i32* %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 24
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %30, i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %6, align 8
  %37 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %38 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %26, %16
  %60 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %61 = load i32, i32* @ATH_RESET_NOLOSS, align 4
  %62 = call i32 @ath_reset(%struct.ath_softc* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %15
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @ath_hal_getfatalstate(i32, i8**, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ath_reset(%struct.ath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
