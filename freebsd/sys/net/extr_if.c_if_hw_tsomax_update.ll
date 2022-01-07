; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_hw_tsomax_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_hw_tsomax_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.ifnet_hw_tsomax = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_hw_tsomax_update(%struct.TYPE_3__* %0, %struct.ifnet_hw_tsomax* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.ifnet_hw_tsomax*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.ifnet_hw_tsomax* %1, %struct.ifnet_hw_tsomax** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %45, %37
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
