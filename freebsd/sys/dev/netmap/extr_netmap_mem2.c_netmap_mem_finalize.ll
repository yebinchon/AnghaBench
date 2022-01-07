; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.netmap_mem_d*)* }
%struct.netmap_adapter = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@NETMAP_BUF_POOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_mem_finalize(%struct.netmap_mem_d* %0, %struct.netmap_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_mem_d*, align 8
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %4, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %8 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %9 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @nm_mem_assign_group(%struct.netmap_mem_d* %7, i64 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %17 = call i32 @NMA_LOCK(%struct.netmap_mem_d* %16)
  %18 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %19 = call i64 @netmap_mem_config(%struct.netmap_mem_d* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %56

22:                                               ; preds = %15
  %23 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %24 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %28 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.netmap_mem_d*)*, i32 (%struct.netmap_mem_d*)** %30, align 8
  %32 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %33 = call i32 %31(%struct.netmap_mem_d* %32)
  %34 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %35 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %37 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %22
  %41 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %47 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %52 = call i32 @netmap_mem_map(i32* %50, %struct.netmap_adapter* %51)
  %53 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %54 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %45, %40, %22
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %58 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %61 = call i32 @NMA_UNLOCK(%struct.netmap_mem_d* %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %66 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %67 = call i32 @netmap_mem_deref(%struct.netmap_mem_d* %65, %struct.netmap_adapter* %66)
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @nm_mem_assign_group(%struct.netmap_mem_d*, i64) #1

declare dso_local i32 @NMA_LOCK(%struct.netmap_mem_d*) #1

declare dso_local i64 @netmap_mem_config(%struct.netmap_mem_d*) #1

declare dso_local i32 @netmap_mem_map(i32*, %struct.netmap_adapter*) #1

declare dso_local i32 @NMA_UNLOCK(%struct.netmap_mem_d*) #1

declare dso_local i32 @netmap_mem_deref(%struct.netmap_mem_d*, %struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
