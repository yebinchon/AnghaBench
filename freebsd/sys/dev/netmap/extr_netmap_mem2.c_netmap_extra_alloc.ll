; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_extra_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_extra_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { %struct.netmap_mem_d* }
%struct.netmap_mem_d = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"no more buffers after %d of %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"allocate buffer %d -> %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @netmap_extra_alloc(%struct.netmap_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.netmap_adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netmap_mem_d*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %12, i32 0, i32 0
  %14 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %13, align 8
  store %struct.netmap_mem_d* %14, %struct.netmap_mem_d** %7, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %7, align 8
  %16 = call i32 @NMA_LOCK(%struct.netmap_mem_d* %15)
  %17 = load i64*, i64** %5, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %7, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = call i64* @netmap_buf_malloc(%struct.netmap_mem_d* %25, i64* %9, i64* %26)
  store i64* %27, i64** %11, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @nm_prerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i64, i64* %10, align 8
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  br label %46

36:                                               ; preds = %22
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @nm_prdis(i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load i64, i64* %10, align 8
  %42 = load i64*, i64** %11, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %18

46:                                               ; preds = %30, %18
  %47 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %7, align 8
  %48 = call i32 @NMA_UNLOCK(%struct.netmap_mem_d* %47)
  %49 = load i64, i64* %8, align 8
  ret i64 %49
}

declare dso_local i32 @NMA_LOCK(%struct.netmap_mem_d*) #1

declare dso_local i64* @netmap_buf_malloc(%struct.netmap_mem_d*, i64*, i64*) #1

declare dso_local i32 @nm_prerr(i8*, i64, i64) #1

declare dso_local i32 @nm_prdis(i32, i8*, i64, i64) #1

declare dso_local i32 @NMA_UNLOCK(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
