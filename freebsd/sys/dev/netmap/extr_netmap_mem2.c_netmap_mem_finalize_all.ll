; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_finalize_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_finalize_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NETMAP_MEM_FINALIZED = common dso_local global i32 0, align 4
@NETMAP_POOLS_NR = common dso_local global i32 0, align 4
@netmap_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"interfaces %zd KB, rings %zd KB, buffers %zd MB\00", align 1
@NETMAP_IF_POOL = common dso_local global i64 0, align 8
@NETMAP_RING_POOL = common dso_local global i64 0, align 8
@NETMAP_BUF_POOL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Free buffers: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_mem_d*)* @netmap_mem_finalize_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mem_finalize_all(%struct.netmap_mem_d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netmap_mem_d*, align 8
  %4 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %3, align 8
  %5 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %6 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @NETMAP_MEM_FINALIZED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %115

12:                                               ; preds = %1
  %13 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %14 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %16 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %49, %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %23 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = call i32 @netmap_finalize_obj_allocator(%struct.TYPE_2__* %27)
  %29 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %30 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %32 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %109

36:                                               ; preds = %21
  %37 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %38 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %46 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %54 = call i32 @netmap_mem_init_bitmaps(%struct.netmap_mem_d* %53)
  %55 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %56 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %58 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %109

62:                                               ; preds = %52
  %63 = load i32, i32* @NETMAP_MEM_FINALIZED, align 4
  %64 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %65 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i64, i64* @netmap_verbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %62
  %71 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %72 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* @NETMAP_IF_POOL, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 10
  %79 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %80 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @NETMAP_RING_POOL, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 10
  %87 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %88 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 20
  %95 = call i32 (i8*, i32, ...) @nm_prinf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %86, i32 %94)
  br label %96

96:                                               ; preds = %70, %62
  %97 = load i64, i64* @netmap_verbose, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %101 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, ...) @nm_prinf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %99, %96
  store i32 0, i32* %2, align 4
  br label %115

109:                                              ; preds = %61, %35
  %110 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %111 = call i32 @netmap_mem_reset_all(%struct.netmap_mem_d* %110)
  %112 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %113 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %108, %11
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @netmap_finalize_obj_allocator(%struct.TYPE_2__*) #1

declare dso_local i32 @netmap_mem_init_bitmaps(%struct.netmap_mem_d*) #1

declare dso_local i32 @nm_prinf(i8*, i32, ...) #1

declare dso_local i32 @netmap_mem_reset_all(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
