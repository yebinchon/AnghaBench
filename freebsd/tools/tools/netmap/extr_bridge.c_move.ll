; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_bridge.c_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_bridge.c_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_desc = type { i64, i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.netmap_ring = type { i32 }

@NR_REG_SW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"host->net\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"net->host\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"txring %p rxring %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nm_desc*, %struct.nm_desc*, i64)* @move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move(%struct.nm_desc* %0, %struct.nm_desc* %1, i64 %2) #0 {
  %4 = alloca %struct.nm_desc*, align 8
  %5 = alloca %struct.nm_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netmap_ring*, align 8
  %8 = alloca %struct.netmap_ring*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.nm_desc* %0, %struct.nm_desc** %4, align 8
  store %struct.nm_desc* %1, %struct.nm_desc** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.nm_desc*, %struct.nm_desc** %4, align 8
  %14 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.nm_desc*, %struct.nm_desc** %5, align 8
  %17 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.nm_desc*, %struct.nm_desc** %4, align 8
  %20 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NR_REG_SW, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  store i8* %26, i8** %12, align 8
  br label %27

27:                                               ; preds = %68, %65, %58, %3
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.nm_desc*, %struct.nm_desc** %4, align 8
  %30 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.nm_desc*, %struct.nm_desc** %5, align 8
  %36 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i1 [ false, %27 ], [ %38, %33 ]
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  %42 = load %struct.nm_desc*, %struct.nm_desc** %4, align 8
  %43 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call %struct.netmap_ring* @NETMAP_RXRING(i32 %44, i64 %45)
  store %struct.netmap_ring* %46, %struct.netmap_ring** %8, align 8
  %47 = load %struct.nm_desc*, %struct.nm_desc** %5, align 8
  %48 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call %struct.netmap_ring* @NETMAP_TXRING(i32 %49, i64 %50)
  store %struct.netmap_ring* %51, %struct.netmap_ring** %7, align 8
  %52 = load %struct.netmap_ring*, %struct.netmap_ring** %7, align 8
  %53 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %54 = call i32 @ND(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.netmap_ring* %52, %struct.netmap_ring* %53)
  %55 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %56 = call i64 @nm_ring_empty(%struct.netmap_ring* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %27

61:                                               ; preds = %41
  %62 = load %struct.netmap_ring*, %struct.netmap_ring** %7, align 8
  %63 = call i64 @nm_ring_empty(%struct.netmap_ring* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %27

68:                                               ; preds = %61
  %69 = load %struct.netmap_ring*, %struct.netmap_ring** %8, align 8
  %70 = load %struct.netmap_ring*, %struct.netmap_ring** %7, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @process_rings(%struct.netmap_ring* %69, %struct.netmap_ring* %70, i64 %71, i8* %72)
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %9, align 8
  br label %27

76:                                               ; preds = %39
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  ret i32 %78
}

declare dso_local %struct.netmap_ring* @NETMAP_RXRING(i32, i64) #1

declare dso_local %struct.netmap_ring* @NETMAP_TXRING(i32, i64) #1

declare dso_local i32 @ND(i8*, %struct.netmap_ring*, %struct.netmap_ring*) #1

declare dso_local i64 @nm_ring_empty(%struct.netmap_ring*) #1

declare dso_local i64 @process_rings(%struct.netmap_ring*, %struct.netmap_ring*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
