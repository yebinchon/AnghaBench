; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_memaddr_wait_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_memaddr_wait_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.mps_busdma_context = type { i32, i32, i64, i64*, i32, i32, i32 }

@M_MPSUSER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mps_memaddr_wait_cb(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mps_busdma_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mps_busdma_context*
  store %struct.mps_busdma_context* %13, %struct.mps_busdma_context** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %15 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mps_lock(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %20 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %22 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %27 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %36 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %35, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  store i64 %34, i64* %37, align 8
  br label %49

38:                                               ; preds = %25, %4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %44 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %54 = call i32 @wakeup(%struct.mps_busdma_context* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %57 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mps_unlock(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %64 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %67 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @bus_dmamap_unload(i32 %65, i32 %68)
  %70 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %71 = getelementptr inbounds %struct.mps_busdma_context, %struct.mps_busdma_context* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %55
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.mps_busdma_context*, %struct.mps_busdma_context** %9, align 8
  %78 = load i32, i32* @M_MPSUSER, align 4
  %79 = call i32 @free(%struct.mps_busdma_context* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  ret void
}

declare dso_local i32 @mps_lock(i32) #1

declare dso_local i32 @wakeup(%struct.mps_busdma_context*) #1

declare dso_local i32 @mps_unlock(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @free(%struct.mps_busdma_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
