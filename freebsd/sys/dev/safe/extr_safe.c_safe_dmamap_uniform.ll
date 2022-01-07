; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_dmamap_uniform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_dmamap_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_operand = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SAFE_MAX_DSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safe_operand*)* @safe_dmamap_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_dmamap_uniform(%struct.safe_operand* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.safe_operand*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.safe_operand* %0, %struct.safe_operand** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.safe_operand*, %struct.safe_operand** %3, align 8
  %7 = getelementptr inbounds %struct.safe_operand, %struct.safe_operand* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %45, %10
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.safe_operand*, %struct.safe_operand** %3, align 8
  %15 = getelementptr inbounds %struct.safe_operand, %struct.safe_operand* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = icmp slt i64 %13, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %11
  %20 = load %struct.safe_operand*, %struct.safe_operand** %3, align 8
  %21 = getelementptr inbounds %struct.safe_operand, %struct.safe_operand* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SAFE_MAX_DSIZE, align 4
  %29 = srem i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %51

32:                                               ; preds = %19
  %33 = load %struct.safe_operand*, %struct.safe_operand** %3, align 8
  %34 = getelementptr inbounds %struct.safe_operand, %struct.safe_operand* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SAFE_MAX_DSIZE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 2, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %11

48:                                               ; preds = %11
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %31
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
