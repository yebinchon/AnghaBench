; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_free_fp_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_free_fp_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.bxe_fastpath* }
%struct.bxe_fastpath = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"failed to claim all rx mbufs (%d left)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to claim all sge mbufs (%d left)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to release tx mbufs (%d left)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_free_fp_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_free_fp_buffers(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_fastpath*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %76, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %5
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 1
  %14 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %14, i64 %16
  store %struct.bxe_fastpath* %17, %struct.bxe_fastpath** %3, align 8
  %18 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %19 = call i32 @bxe_free_rx_bd_chain(%struct.bxe_fastpath* %18)
  %20 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %21 = call i32 @bxe_free_tpa_pool(%struct.bxe_fastpath* %20)
  %22 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %23 = call i32 @bxe_free_sge_chain(%struct.bxe_fastpath* %22)
  %24 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %25 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %11
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %32 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @BLOGE(%struct.bxe_softc* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %29, %11
  %37 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %38 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %44 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %45 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @BLOGE(%struct.bxe_softc* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %51 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %58 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @BLOGE(%struct.bxe_softc* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %64 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %70 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %71 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @BLOGE(%struct.bxe_softc* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %68, %62
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %5

79:                                               ; preds = %5
  ret void
}

declare dso_local i32 @bxe_free_rx_bd_chain(%struct.bxe_fastpath*) #1

declare dso_local i32 @bxe_free_tpa_pool(%struct.bxe_fastpath*) #1

declare dso_local i32 @bxe_free_sge_chain(%struct.bxe_fastpath*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
