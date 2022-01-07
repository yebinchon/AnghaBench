; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_elapsed_ms.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_elapsed_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elapsed_ms(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.timeval*, %struct.timeval** %3, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.timeval*, %struct.timeval** %4, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.timeval*, %struct.timeval** %4, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 1000000, %16
  %18 = load %struct.timeval*, %struct.timeval** %3, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.timeval*, %struct.timeval** %3, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.timeval*, %struct.timeval** %4, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.timeval*, %struct.timeval** %3, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.timeval*, %struct.timeval** %4, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %23, %13
  %42 = load i64, i64* %5, align 8
  %43 = udiv i64 %42, 1000
  store i64 %43, i64* %5, align 8
  %44 = load %struct.timeval*, %struct.timeval** %3, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.timeval*, %struct.timeval** %4, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = mul nsw i64 %50, 1000
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
