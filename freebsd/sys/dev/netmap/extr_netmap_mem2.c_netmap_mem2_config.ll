; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"reconfiguring\00", align 1
@NETMAP_MEM_FINALIZED = common dso_local global i32 0, align 4
@NETMAP_POOLS_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_mem_d*)* @netmap_mem2_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mem2_config(%struct.netmap_mem_d* %0) #0 {
  %2 = alloca %struct.netmap_mem_d*, align 8
  %3 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %2, align 8
  %4 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %5 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call i32 @netmap_mem_params_changed(%struct.TYPE_2__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %82

10:                                               ; preds = %1
  %11 = call i32 @nm_prdis(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %13 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NETMAP_MEM_FINALIZED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %25 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @netmap_reset_obj_allocator(i32* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load i32, i32* @NETMAP_MEM_FINALIZED, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %38 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %34, %10
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %78, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %48 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %54 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %62 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netmap_config_obj_allocator(i32* %52, i32 %60, i32 %68)
  %70 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %71 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %73 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %46
  br label %82

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %42

81:                                               ; preds = %42
  br label %82

82:                                               ; preds = %81, %76, %9
  %83 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %2, align 8
  %84 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  ret i32 %85
}

declare dso_local i32 @netmap_mem_params_changed(%struct.TYPE_2__*) #1

declare dso_local i32 @nm_prdis(i8*) #1

declare dso_local i32 @netmap_reset_obj_allocator(i32*) #1

declare dso_local i32 @netmap_config_obj_allocator(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
