; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_deref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_deref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32, i32, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.netmap_mem_d*)* }
%struct.netmap_adapter = type { i64 }

@NETMAP_BUF_POOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_mem_deref(%struct.netmap_mem_d* %0, %struct.netmap_adapter* %1) #0 {
  %3 = alloca %struct.netmap_mem_d*, align 8
  %4 = alloca %struct.netmap_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %3, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %7 = call i32 @NMA_LOCK(%struct.netmap_mem_d* %6)
  %8 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %14 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %19 = call i32 @netmap_mem_unmap(i32* %17, %struct.netmap_adapter* %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %22 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  %26 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %27 = call i32 @netmap_mem_init_bitmaps(%struct.netmap_mem_d* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %30 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.netmap_mem_d*)*, i32 (%struct.netmap_mem_d*)** %32, align 8
  %34 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %35 = call i32 %33(%struct.netmap_mem_d* %34)
  %36 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %37 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %44 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %46 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %28
  %48 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %49 = call i32 @NMA_UNLOCK(%struct.netmap_mem_d* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @NMA_LOCK(%struct.netmap_mem_d*) #1

declare dso_local i32 @netmap_mem_unmap(i32*, %struct.netmap_adapter*) #1

declare dso_local i32 @netmap_mem_init_bitmaps(%struct.netmap_mem_d*) #1

declare dso_local i32 @NMA_UNLOCK(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
