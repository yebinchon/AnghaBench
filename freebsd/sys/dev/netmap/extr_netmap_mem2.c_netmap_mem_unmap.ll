; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i32, i32, i64 }
%struct.netmap_adapter = type { i32*, i32, %struct.netmap_lut }
%struct.netmap_lut = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"unmapping and freeing plut for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_obj_pool*, %struct.netmap_adapter*)* @netmap_mem_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mem_unmap(%struct.netmap_obj_pool* %0, %struct.netmap_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_obj_pool*, align 8
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netmap_lut*, align 8
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %4, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %5, align 8
  %9 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %10 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %12, i32 0, i32 2
  store %struct.netmap_lut* %13, %struct.netmap_lut** %8, align 8
  %14 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %15 = icmp eq %struct.netmap_adapter* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %80

22:                                               ; preds = %16
  %23 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nm_prdis(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.netmap_lut*, %struct.netmap_lut** %8, align 8
  %28 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp eq %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %80

32:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %struct.netmap_lut*, %struct.netmap_lut** %8, align 8
  %39 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %37
  %48 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %49 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = load %struct.netmap_lut*, %struct.netmap_lut** %8, align 8
  %54 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %61 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netmap_unload_map(%struct.netmap_adapter* %48, i32 %52, i64* %59, i32 %62)
  br label %64

64:                                               ; preds = %47, %37
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %67 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %33

73:                                               ; preds = %33
  %74 = load %struct.netmap_lut*, %struct.netmap_lut** %8, align 8
  %75 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = call i32 @nm_free_plut(%struct.TYPE_2__* %76)
  %78 = load %struct.netmap_lut*, %struct.netmap_lut** %8, align 8
  %79 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %78, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %31, %21
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @nm_prdis(i8*, i32) #1

declare dso_local i32 @netmap_unload_map(%struct.netmap_adapter*, i32, i64*, i32) #1

declare dso_local i32 @nm_free_plut(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
