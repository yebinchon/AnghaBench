; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_reset_obj_allocator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_reset_obj_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i64, i64, i64, i64, i64, %struct.TYPE_2__*, i32, i64, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@M_NETMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_obj_pool*)* @netmap_reset_obj_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_reset_obj_allocator(%struct.netmap_obj_pool* %0) #0 {
  %2 = alloca %struct.netmap_obj_pool*, align 8
  %3 = alloca i64, align 8
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %2, align 8
  %4 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %5 = icmp eq %struct.netmap_obj_pool* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %89

7:                                                ; preds = %1
  %8 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %9 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %8, i32 0, i32 9
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %14 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %13, i32 0, i32 9
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @nm_os_free(i32* %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %19 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %18, i32 0, i32 9
  store i32* null, i32** %19, align 8
  %20 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %21 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %20, i32 0, i32 8
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %26 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @nm_os_free(i32* %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %31 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %30, i32 0, i32 8
  store i32* null, i32** %31, align 8
  %32 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %33 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %89

37:                                               ; preds = %29
  %38 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %39 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %46 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %43
  %50 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %51 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %50, i32 0, i32 5
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %58 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @M_NETMAP, align 4
  %61 = call i32 @contigfree(i32 %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49
  %63 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %64 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %3, align 8
  br label %43

68:                                               ; preds = %43
  %69 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %70 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %69, i32 0, i32 5
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %73 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @nm_free_lut(%struct.TYPE_2__* %71, i64 %74)
  br label %76

76:                                               ; preds = %68, %37
  %77 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %78 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %77, i32 0, i32 5
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %78, align 8
  %79 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %80 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %82 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %84 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %86 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %2, align 8
  %88 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %76, %36, %6
  ret void
}

declare dso_local i32 @nm_os_free(i32*) #1

declare dso_local i32 @contigfree(i32, i32, i32) #1

declare dso_local i32 @nm_free_lut(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
