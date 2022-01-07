; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_bridge.c_pkt_queued.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_bridge.c_pkt_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_desc = type { i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_queued(%struct.nm_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.nm_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nm_desc* %0, %struct.nm_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.nm_desc*, %struct.nm_desc** %3, align 8
  %11 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %28, %9
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.nm_desc*, %struct.nm_desc** %3, align 8
  %16 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.nm_desc*, %struct.nm_desc** %3, align 8
  %21 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @NETMAP_TXRING(i32 %22, i64 %23)
  %25 = call i64 @nm_ring_space(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %13

31:                                               ; preds = %13
  br label %55

32:                                               ; preds = %2
  %33 = load %struct.nm_desc*, %struct.nm_desc** %3, align 8
  %34 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %51, %32
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.nm_desc*, %struct.nm_desc** %3, align 8
  %39 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.nm_desc*, %struct.nm_desc** %3, align 8
  %44 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @NETMAP_RXRING(i32 %45, i64 %46)
  %48 = call i64 @nm_ring_space(i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %31
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  ret i32 %57
}

declare dso_local i64 @nm_ring_space(i32) #1

declare dso_local i32 @NETMAP_TXRING(i32, i64) #1

declare dso_local i32 @NETMAP_RXRING(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
