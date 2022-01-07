; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@ath_txbuf = common dso_local global i32 0, align 4
@ATH_MAX_SCATTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tx_mgmt\00", align 1
@ath_txbuf_mgmt = common dso_local global i32 0, align 4
@ATH_TXDESC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"beacon\00", align 1
@ATH_BCBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_desc_alloc(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 3
  %8 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 2
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ath_txbuf, align 4
  %14 = load i32, i32* @ATH_MAX_SCATTER, align 4
  %15 = call i32 @ath_descdma_setup(%struct.ath_softc* %5, i32* %7, i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %73

20:                                               ; preds = %1
  %21 = load i32, i32* @ath_txbuf, align 4
  %22 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 1
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ath_txbuf_mgmt, align 4
  %33 = load i32, i32* @ATH_TXDESC, align 4
  %34 = call i32 @ath_descdma_setup(%struct.ath_softc* %24, i32* %26, i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %20
  %38 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %39 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 3
  %41 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 2
  %43 = call i32 @ath_descdma_cleanup(%struct.ath_softc* %38, i32* %40, i32* %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %73

45:                                               ; preds = %20
  %46 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %47 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 6
  %49 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 5
  %51 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATH_BCBUF, align 4
  %55 = call i32 @ath_descdma_setup(%struct.ath_softc* %46, i32* %48, i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %45
  %59 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %60 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %60, i32 0, i32 3
  %62 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %62, i32 0, i32 2
  %64 = call i32 @ath_descdma_cleanup(%struct.ath_softc* %59, i32* %61, i32* %63)
  %65 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %66 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 1
  %68 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 0
  %70 = call i32 @ath_descdma_cleanup(%struct.ath_softc* %65, i32* %67, i32* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %58, %37, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @ath_descdma_setup(%struct.ath_softc*, i32*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ath_descdma_cleanup(%struct.ath_softc*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
