; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_reset_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_reset_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32, i32* }

@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"resetting %p\00", align 1
@NETMAP_POOLS_NR = common dso_local global i32 0, align 4
@NETMAP_MEM_FINALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_mem_d*)* @netmap_mem_reset_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_mem_reset_all(%struct.netmap_mem_d* %0) #0 {
  %2 = alloca %struct.netmap_mem_d*, align 8
  %3 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %2, align 8
  %4 = load i32, i32* @netmap_debug, align 4
  %5 = load i32, i32* @NM_DEBUG_MEM, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %10 = call i32 @nm_prinf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.netmap_mem_d* %9)
  br label %11

11:                                               ; preds = %8, %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %18 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @netmap_reset_obj_allocator(i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* @NETMAP_MEM_FINALIZED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %31 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  ret void
}

declare dso_local i32 @nm_prinf(i8*, %struct.netmap_mem_d*) #1

declare dso_local i32 @netmap_reset_obj_allocator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
