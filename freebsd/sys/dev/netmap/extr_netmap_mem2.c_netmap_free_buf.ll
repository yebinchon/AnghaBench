; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_free_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { %struct.netmap_obj_pool* }
%struct.netmap_obj_pool = type { i32 }

@NETMAP_BUF_POOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Cannot free buf#%d: should be in [2, %d[\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_mem_d*, i32)* @netmap_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_free_buf(%struct.netmap_mem_d* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_mem_d*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_obj_pool*, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %7 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %6, i32 0, i32 0
  %8 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %7, align 8
  %9 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %10 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %8, i64 %9
  store %struct.netmap_obj_pool* %10, %struct.netmap_obj_pool** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %5, align 8
  %16 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %5, align 8
  %22 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nm_prerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %29

25:                                               ; preds = %13
  %26 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @netmap_obj_free(%struct.netmap_obj_pool* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @nm_prerr(i8*, i32, i32) #1

declare dso_local i32 @netmap_obj_free(%struct.netmap_obj_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
