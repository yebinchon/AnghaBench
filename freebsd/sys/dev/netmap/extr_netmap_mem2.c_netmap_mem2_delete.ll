; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32* }

@NETMAP_POOLS_NR = common dso_local global i32 0, align 4
@nm_mem = common dso_local global %struct.netmap_mem_d zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_mem_d*)* @netmap_mem2_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_mem2_delete(%struct.netmap_mem_d* %0) #0 {
  %2 = alloca %struct.netmap_mem_d*, align 8
  %3 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %10 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @netmap_destroy_obj_allocator(i32* %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %21 = call i32 @NMA_LOCK_DESTROY(%struct.netmap_mem_d* %20)
  %22 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %23 = icmp ne %struct.netmap_mem_d* %22, @nm_mem
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %26 = call i32 @nm_os_free(%struct.netmap_mem_d* %25)
  br label %27

27:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @netmap_destroy_obj_allocator(i32*) #1

declare dso_local i32 @NMA_LOCK_DESTROY(%struct.netmap_mem_d*) #1

declare dso_local i32 @nm_os_free(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
