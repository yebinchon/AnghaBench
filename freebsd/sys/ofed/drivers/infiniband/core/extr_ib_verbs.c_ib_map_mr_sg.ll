; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_map_mr_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_map_mr_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*)* }
%struct.scatterlist = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_map_mr_sg(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %13 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*)*, i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*)** %15, align 8
  %17 = icmp ne i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*)* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %39

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %28 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %30 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*)*, i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*)** %32, align 8
  %34 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 %33(%struct.ib_mr* %34, %struct.scatterlist* %35, i32 %36, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %25, %22
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
