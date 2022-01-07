; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_get_flit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_get_flit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist_seg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sglist_seg*, i32, i32)* @get_flit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_flit(%struct.sglist_seg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sglist_seg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sglist_seg* %0, %struct.sglist_seg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sdiv i32 %10, 3
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = srem i32 %13, 3
  switch i32 %14, label %57 [
    i32 0, label %15
    i32 1, label %40
    i32 2, label %48
  ]

15:                                               ; preds = %3
  %16 = load %struct.sglist_seg*, %struct.sglist_seg** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %16, i64 %18
  %20 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %15
  %28 = load %struct.sglist_seg*, %struct.sglist_seg** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %28, i64 %31
  %33 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %27, %15
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @htobe64(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %3
  %41 = load %struct.sglist_seg*, %struct.sglist_seg** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %41, i64 %43
  %45 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @htobe64(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %3
  %49 = load %struct.sglist_seg*, %struct.sglist_seg** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %49, i64 %52
  %54 = getelementptr inbounds %struct.sglist_seg, %struct.sglist_seg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @htobe64(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %48, %40, %37
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @htobe64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
