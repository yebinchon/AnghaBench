; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm86context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm86_getptr(%struct.vm86context* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm86context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.vm86context* %0, %struct.vm86context** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %65, %4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.vm86context*, %struct.vm86context** %6, align 8
  %14 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %11
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.vm86context*, %struct.vm86context** %6, align 8
  %20 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %18, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %17
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.vm86context*, %struct.vm86context** %6, align 8
  %31 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp slt i64 %29, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.vm86context*, %struct.vm86context** %6, align 8
  %44 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %42, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.vm86context*, %struct.vm86context** %6, align 8
  %55 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 8
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  store i32 1, i32* %5, align 4
  br label %69

64:                                               ; preds = %28, %17
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %11

68:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
