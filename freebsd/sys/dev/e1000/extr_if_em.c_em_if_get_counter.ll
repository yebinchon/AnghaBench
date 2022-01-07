; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifnet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @em_if_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @em_if_get_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.ifnet* @iflib_get_ifp(i32 %10)
  store %struct.ifnet* %11, %struct.ifnet** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %71 [
    i32 130, label %13
    i32 129, label %18
    i32 128, label %57
  ]

13:                                               ; preds = %2
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %21, %25
  %27 = load %struct.adapter*, %struct.adapter** %6, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %26, %30
  %32 = load %struct.adapter*, %struct.adapter** %6, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  %42 = load %struct.adapter*, %struct.adapter** %6, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %41, %45
  %47 = load %struct.adapter*, %struct.adapter** %6, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %46, %50
  %52 = load %struct.adapter*, %struct.adapter** %6, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  store i64 %56, i64* %3, align 8
  br label %75

57:                                               ; preds = %2
  %58 = load %struct.adapter*, %struct.adapter** %6, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.adapter*, %struct.adapter** %6, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %61, %65
  %67 = load %struct.adapter*, %struct.adapter** %6, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  store i64 %70, i64* %3, align 8
  br label %75

71:                                               ; preds = %2
  %72 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @if_get_counter_default(%struct.ifnet* %72, i32 %73)
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %71, %57, %18, %13
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
