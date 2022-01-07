; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_init_bitmaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_init_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { %struct.netmap_obj_pool* }
%struct.netmap_obj_pool = type { i32, i32*, i32 }

@NETMAP_POOLS_NR = common dso_local global i32 0, align 4
@NETMAP_BUF_POOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s: not enough buffers\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_mem_d*)* @netmap_mem_init_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mem_init_bitmaps(%struct.netmap_mem_d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netmap_mem_d*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netmap_obj_pool*, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %13 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %12, i32 0, i32 0
  %14 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %14, i64 %16
  store %struct.netmap_obj_pool* %17, %struct.netmap_obj_pool** %6, align 8
  %18 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %6, align 8
  %19 = call i32 @netmap_init_obj_allocator_bitmap(%struct.netmap_obj_pool* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %74

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %30 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %29, i32 0, i32 0
  %31 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %30, align 8
  %32 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %33 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %31, i64 %32
  %34 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %39 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %38, i32 0, i32 0
  %40 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %39, align 8
  %41 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %42 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %40, i64 %41
  %43 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @nm_prerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %74

47:                                               ; preds = %28
  %48 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %49 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %48, i32 0, i32 0
  %50 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %49, align 8
  %51 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %52 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %50, i64 %51
  %53 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 2
  store i32 %55, i32* %53, align 8
  %56 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %57 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %56, i32 0, i32 0
  %58 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %57, align 8
  %59 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %60 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %58, i64 %59
  %61 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %47
  %65 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %66 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %65, i32 0, i32 0
  %67 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %66, align 8
  %68 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %69 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %67, i64 %68
  %70 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 -4, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %47
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %37, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @netmap_init_obj_allocator_bitmap(%struct.netmap_obj_pool*) #1

declare dso_local i32 @nm_prerr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
