; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c___netmap_mem_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c___netmap_mem_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i64 }

@nm_mem_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__netmap_mem_put(%struct.netmap_mem_d* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.netmap_mem_d*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @nm_mem_list_lock, align 4
  %9 = call i32 @NM_MTX_LOCK(i32 %8)
  %10 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %11 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %20 = call i32 @nm_mem_release_id(%struct.netmap_mem_d* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @NM_DBG_REFC(%struct.netmap_mem_d* %22, i8* %23, i32 %24)
  %26 = load i32, i32* @nm_mem_list_lock, align 4
  %27 = call i32 @NM_MTX_UNLOCK(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %32 = call i32 @netmap_mem_delete(%struct.netmap_mem_d* %31)
  br label %33

33:                                               ; preds = %30, %21
  ret void
}

declare dso_local i32 @NM_MTX_LOCK(i32) #1

declare dso_local i32 @nm_mem_release_id(%struct.netmap_mem_d*) #1

declare dso_local i32 @NM_DBG_REFC(%struct.netmap_mem_d*, i8*, i32) #1

declare dso_local i32 @NM_MTX_UNLOCK(i32) #1

declare dso_local i32 @netmap_mem_delete(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
