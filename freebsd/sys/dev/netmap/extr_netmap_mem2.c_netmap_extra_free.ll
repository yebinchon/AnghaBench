; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_extra_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_extra_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { %struct.netmap_mem_d*, %struct.TYPE_2__ }
%struct.netmap_mem_d = type { %struct.netmap_obj_pool* }
%struct.netmap_obj_pool = type { i32 }
%struct.TYPE_2__ = type { %struct.lut_entry* }
%struct.lut_entry = type { i32* }

@NETMAP_BUF_POOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"freeing the extra list\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"breaking with head %d\00", align 1
@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"freed %d buffers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_adapter*, i32)* @netmap_extra_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_extra_free(%struct.netmap_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lut_entry*, align 8
  %6 = alloca %struct.netmap_mem_d*, align 8
  %7 = alloca %struct.netmap_obj_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.lut_entry*, %struct.lut_entry** %13, align 8
  store %struct.lut_entry* %14, %struct.lut_entry** %5, align 8
  %15 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %15, i32 0, i32 0
  %17 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %16, align 8
  store %struct.netmap_mem_d* %17, %struct.netmap_mem_d** %6, align 8
  %18 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %19 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %18, i32 0, i32 0
  %20 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %19, align 8
  %21 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %22 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %20, i64 %21
  store %struct.netmap_obj_pool* %22, %struct.netmap_obj_pool** %7, align 8
  %23 = call i32 @nm_prdis(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %52, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %7, align 8
  %30 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %55

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.lut_entry*, %struct.lut_entry** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lut_entry, %struct.lut_entry* %37, i64 %39
  %41 = getelementptr inbounds %struct.lut_entry, %struct.lut_entry* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 0, i32* %45, align 4
  %46 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @netmap_obj_free(%struct.netmap_obj_pool* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %55

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %24

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @nm_prerr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @netmap_debug, align 4
  %63 = load i32, i32* @NM_DEBUG_MEM, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @nm_prinf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %61
  ret void
}

declare dso_local i32 @nm_prdis(i8*) #1

declare dso_local i64 @netmap_obj_free(%struct.netmap_obj_pool*, i32) #1

declare dso_local i32 @nm_prerr(i8*, i32) #1

declare dso_local i32 @nm_prinf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
