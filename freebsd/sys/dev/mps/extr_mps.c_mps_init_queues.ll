; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_init_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, i32, i32, i32, i32, i64, i64*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*)* @mps_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_init_queues(%struct.mps_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mps_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %3, align 8
  %5 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 8
  %13 = call i32 @memset(i32* %8, i32 255, i32 %12)
  %14 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %33, %39
  %41 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %41, i32 0, i32 6
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %40, i64* %46, align 8
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %24

50:                                               ; preds = %24
  %51 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mps_softc*, %struct.mps_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
