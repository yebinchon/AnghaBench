; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mtxpool.c_mtx_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mtxpool.c_mtx_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx_pool = type { i32, i32* }

@M_MTXPOOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtx_pool_destroy(%struct.mtx_pool** %0) #0 {
  %2 = alloca %struct.mtx_pool**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtx_pool*, align 8
  store %struct.mtx_pool** %0, %struct.mtx_pool*** %2, align 8
  %5 = load %struct.mtx_pool**, %struct.mtx_pool*** %2, align 8
  %6 = load %struct.mtx_pool*, %struct.mtx_pool** %5, align 8
  store %struct.mtx_pool* %6, %struct.mtx_pool** %4, align 8
  %7 = load %struct.mtx_pool*, %struct.mtx_pool** %4, align 8
  %8 = getelementptr inbounds %struct.mtx_pool, %struct.mtx_pool* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.mtx_pool*, %struct.mtx_pool** %4, align 8
  %16 = getelementptr inbounds %struct.mtx_pool, %struct.mtx_pool* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @mtx_destroy(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %3, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.mtx_pool*, %struct.mtx_pool** %4, align 8
  %27 = load i32, i32* @M_MTXPOOL, align 4
  %28 = call i32 @free(%struct.mtx_pool* %26, i32 %27)
  %29 = load %struct.mtx_pool**, %struct.mtx_pool*** %2, align 8
  store %struct.mtx_pool* null, %struct.mtx_pool** %29, align 8
  ret void
}

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.mtx_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
