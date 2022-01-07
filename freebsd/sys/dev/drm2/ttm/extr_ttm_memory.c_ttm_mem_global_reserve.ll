; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_global_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_global_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, i32, %struct.ttm_mem_zone** }
%struct.ttm_mem_zone = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PRIV_VM_MLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, %struct.ttm_mem_zone*, i64, i32)* @ttm_mem_global_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_global_reserve(%struct.ttm_mem_global* %0, %struct.ttm_mem_zone* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca %struct.ttm_mem_zone*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %5, align 8
  store %struct.ttm_mem_zone* %1, %struct.ttm_mem_zone** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %15, i32 0, i32 1
  %17 = call i32 @mtx_lock(i32* %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %61, %4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %18
  %25 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %25, i32 0, i32 2
  %27 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %27, i64 %29
  %31 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %30, align 8
  store %struct.ttm_mem_zone* %31, %struct.ttm_mem_zone** %12, align 8
  %32 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %33 = icmp ne %struct.ttm_mem_zone* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %36 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %37 = icmp ne %struct.ttm_mem_zone* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %61

39:                                               ; preds = %34, %24
  %40 = load i32, i32* @curthread, align 4
  %41 = load i32, i32* @PRIV_VM_MLOCK, align 4
  %42 = call i64 @priv_check(i32 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %46 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i64 [ %47, %44 ], [ %51, %48 ]
  store i64 %53, i64* %9, align 8
  %54 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %55 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %100

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %18

64:                                               ; preds = %18
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %95, %67
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %71 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %76 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %75, i32 0, i32 2
  %77 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %77, i64 %79
  %81 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %80, align 8
  store %struct.ttm_mem_zone* %81, %struct.ttm_mem_zone** %12, align 8
  %82 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %83 = icmp ne %struct.ttm_mem_zone* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %86 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %87 = icmp ne %struct.ttm_mem_zone* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %95

89:                                               ; preds = %84, %74
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %92 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %89, %88
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %68

98:                                               ; preds = %68
  br label %99

99:                                               ; preds = %98, %64
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %99, %59
  %101 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %102 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %101, i32 0, i32 1
  %103 = call i32 @mtx_unlock(i32* %102)
  %104 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %105 = call i32 @ttm_check_swapping(%struct.ttm_mem_global* %104)
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @priv_check(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ttm_check_swapping(%struct.ttm_mem_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
