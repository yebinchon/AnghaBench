; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_free_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_free_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.netmap_mem_d = type { i32 }
%struct.netmap_slot = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%s: released some buffers, available: %u\00", align 1
@p = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_mem_d*, %struct.netmap_slot*, i64)* @netmap_free_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_free_bufs(%struct.netmap_mem_d* %0, %struct.netmap_slot* %1, i64 %2) #0 {
  %4 = alloca %struct.netmap_mem_d*, align 8
  %5 = alloca %struct.netmap_slot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %4, align 8
  store %struct.netmap_slot* %1, %struct.netmap_slot** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %28, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %13, i64 %14
  %16 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %4, align 8
  %21 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %21, i64 %22
  %24 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netmap_free_buf(%struct.netmap_mem_d* %20, i32 %25)
  br label %27

27:                                               ; preds = %19, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %7, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nm_prdis(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @netmap_free_buf(%struct.netmap_mem_d*, i32) #1

declare dso_local i32 @nm_prdis(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
