; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_hw_tsomax_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_hw_tsomax_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.ifnet_hw_tsomax = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_hw_tsomax_common(%struct.TYPE_3__* %0, %struct.ifnet_hw_tsomax* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.ifnet_hw_tsomax*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.ifnet_hw_tsomax* %1, %struct.ifnet_hw_tsomax** %4, align 8
  %5 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %6 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %14, %9
  %29 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38, %28
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %51 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %38, %33
  %53 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %67 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62, %52
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ifnet_hw_tsomax*, %struct.ifnet_hw_tsomax** %4, align 8
  %75 = getelementptr inbounds %struct.ifnet_hw_tsomax, %struct.ifnet_hw_tsomax* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %62, %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
