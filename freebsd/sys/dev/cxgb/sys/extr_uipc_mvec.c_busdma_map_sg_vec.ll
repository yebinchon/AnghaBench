; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/sys/extr_uipc_mvec.c_busdma_map_sg_vec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/sys/extr_uipc_mvec.c_busdma_map_sg_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @busdma_map_sg_vec(i32 %0, i32 %1, %struct.mbuf* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %21, %5
  %13 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %14 = icmp ne %struct.mbuf* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @busdma_map_mbuf_fast(i32 %16, i32 %17, %struct.mbuf* %18, i32* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  store %struct.mbuf* %29, %struct.mbuf** %8, align 8
  br label %12

30:                                               ; preds = %12
  ret void
}

declare dso_local i32 @busdma_map_mbuf_fast(i32, i32, %struct.mbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
