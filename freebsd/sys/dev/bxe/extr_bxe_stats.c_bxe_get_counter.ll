; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.bxe_eth_stats }
%struct.bxe_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bxe_get_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.bxe_eth_stats*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.bxe_softc* @if_getsoftc(i32 %8)
  store %struct.bxe_softc* %9, %struct.bxe_softc** %6, align 8
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 0
  store %struct.bxe_eth_stats* %11, %struct.bxe_eth_stats** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %97 [
    i32 131, label %13
    i32 128, label %25
    i32 134, label %37
    i32 130, label %41
    i32 133, label %45
    i32 129, label %73
    i32 132, label %81
    i32 135, label %85
  ]

13:                                               ; preds = %2
  %14 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %15 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %14, i32 0, i32 19
  %16 = call i64 @bxe_hilo(i32* %15)
  %17 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %18 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %17, i32 0, i32 3
  %19 = call i64 @bxe_hilo(i32* %18)
  %20 = add nsw i64 %16, %19
  %21 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %22 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %21, i32 0, i32 18
  %23 = call i64 @bxe_hilo(i32* %22)
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %3, align 8
  br label %101

25:                                               ; preds = %2
  %26 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %27 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %26, i32 0, i32 17
  %28 = call i64 @bxe_hilo(i32* %27)
  %29 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %30 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %29, i32 0, i32 16
  %31 = call i64 @bxe_hilo(i32* %30)
  %32 = add nsw i64 %28, %31
  %33 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %34 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %33, i32 0, i32 15
  %35 = call i64 @bxe_hilo(i32* %34)
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %3, align 8
  br label %101

37:                                               ; preds = %2
  %38 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %39 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %38, i32 0, i32 14
  %40 = call i64 @bxe_hilo(i32* %39)
  store i64 %40, i64* %3, align 8
  br label %101

41:                                               ; preds = %2
  %42 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %43 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %42, i32 0, i32 13
  %44 = call i64 @bxe_hilo(i32* %43)
  store i64 %44, i64* %3, align 8
  br label %101

45:                                               ; preds = %2
  %46 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %47 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %46, i32 0, i32 12
  %48 = call i64 @bxe_hilo(i32* %47)
  %49 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %50 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %49, i32 0, i32 11
  %51 = call i64 @bxe_hilo(i32* %50)
  %52 = add nsw i64 %48, %51
  %53 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %54 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %53, i32 0, i32 10
  %55 = call i64 @bxe_hilo(i32* %54)
  %56 = add nsw i64 %52, %55
  %57 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %58 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %57, i32 0, i32 9
  %59 = call i64 @bxe_hilo(i32* %58)
  %60 = add nsw i64 %56, %59
  %61 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %62 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %61, i32 0, i32 8
  %63 = call i64 @bxe_hilo(i32* %62)
  %64 = add nsw i64 %60, %63
  %65 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %66 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %65, i32 0, i32 7
  %67 = call i64 @bxe_hilo(i32* %66)
  %68 = add nsw i64 %64, %67
  %69 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %70 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %69, i32 0, i32 6
  %71 = call i64 @bxe_hilo(i32* %70)
  %72 = add nsw i64 %68, %71
  store i64 %72, i64* %3, align 8
  br label %101

73:                                               ; preds = %2
  %74 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %75 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %74, i32 0, i32 5
  %76 = call i64 @bxe_hilo(i32* %75)
  %77 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %78 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %77, i32 0, i32 4
  %79 = call i64 @bxe_hilo(i32* %78)
  %80 = add nsw i64 %76, %79
  store i64 %80, i64* %3, align 8
  br label %101

81:                                               ; preds = %2
  %82 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %83 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %82, i32 0, i32 3
  %84 = call i64 @bxe_hilo(i32* %83)
  store i64 %84, i64* %3, align 8
  br label %101

85:                                               ; preds = %2
  %86 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %87 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %86, i32 0, i32 2
  %88 = call i64 @bxe_hilo(i32* %87)
  %89 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %90 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %89, i32 0, i32 1
  %91 = call i64 @bxe_hilo(i32* %90)
  %92 = add nsw i64 %88, %91
  %93 = load %struct.bxe_eth_stats*, %struct.bxe_eth_stats** %7, align 8
  %94 = getelementptr inbounds %struct.bxe_eth_stats, %struct.bxe_eth_stats* %93, i32 0, i32 0
  %95 = call i64 @bxe_hilo(i32* %94)
  %96 = add nsw i64 %92, %95
  store i64 %96, i64* %3, align 8
  br label %101

97:                                               ; preds = %2
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @if_get_counter_default(i32 %98, i32 %99)
  store i64 %100, i64* %3, align 8
  br label %101

101:                                              ; preds = %97, %85, %81, %73, %45, %41, %37, %25, %13
  %102 = load i64, i64* %3, align 8
  ret i64 %102
}

declare dso_local %struct.bxe_softc* @if_getsoftc(i32) #1

declare dso_local i64 @bxe_hilo(i32*) #1

declare dso_local i64 @if_get_counter_default(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
