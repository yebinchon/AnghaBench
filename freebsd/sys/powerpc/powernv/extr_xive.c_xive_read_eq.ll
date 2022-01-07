; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_read_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_read_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_queue = type { i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xive_queue*)* @xive_read_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_read_eq(%struct.xive_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xive_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.xive_queue* %0, %struct.xive_queue** %3, align 8
  %5 = load %struct.xive_queue*, %struct.xive_queue** %3, align 8
  %6 = getelementptr inbounds %struct.xive_queue, %struct.xive_queue* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.xive_queue*, %struct.xive_queue** %3, align 8
  %9 = getelementptr inbounds %struct.xive_queue, %struct.xive_queue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be32toh(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 31
  %16 = load %struct.xive_queue*, %struct.xive_queue** %3, align 8
  %17 = getelementptr inbounds %struct.xive_queue, %struct.xive_queue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.xive_queue*, %struct.xive_queue** %3, align 8
  %23 = getelementptr inbounds %struct.xive_queue, %struct.xive_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  %26 = load %struct.xive_queue*, %struct.xive_queue** %3, align 8
  %27 = getelementptr inbounds %struct.xive_queue, %struct.xive_queue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %25, %29
  %31 = load %struct.xive_queue*, %struct.xive_queue** %3, align 8
  %32 = getelementptr inbounds %struct.xive_queue, %struct.xive_queue* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.xive_queue*, %struct.xive_queue** %3, align 8
  %34 = getelementptr inbounds %struct.xive_queue, %struct.xive_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load %struct.xive_queue*, %struct.xive_queue** %3, align 8
  %39 = getelementptr inbounds %struct.xive_queue, %struct.xive_queue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %21
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 2147483647
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
