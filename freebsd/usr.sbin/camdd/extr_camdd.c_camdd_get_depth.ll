; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_get_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_get_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_dev = type { i32, i32, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camdd_get_depth(%struct.camdd_dev* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.camdd_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.camdd_dev* %0, %struct.camdd_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.camdd_dev*, %struct.camdd_dev** %6, align 8
  %12 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.camdd_dev*, %struct.camdd_dev** %6, align 8
  %15 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.camdd_dev*, %struct.camdd_dev** %6, align 8
  %20 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.camdd_dev*, %struct.camdd_dev** %6, align 8
  %23 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.camdd_dev*, %struct.camdd_dev** %6, align 8
  %28 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.camdd_dev*, %struct.camdd_dev** %6, align 8
  %31 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %38

36:                                               ; preds = %5
  %37 = load i32*, i32** %8, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %26
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.camdd_dev*, %struct.camdd_dev** %6, align 8
  %42 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.camdd_dev*, %struct.camdd_dev** %6, align 8
  %47 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
