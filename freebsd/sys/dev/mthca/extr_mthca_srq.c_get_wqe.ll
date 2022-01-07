; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_srq.c_get_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_srq.c_get_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_srq = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mthca_srq*, i32)* @get_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_wqe(%struct.mthca_srq* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mthca_srq*, align 8
  %5 = alloca i32, align 4
  store %struct.mthca_srq* %0, %struct.mthca_srq** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %12 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %18 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %15, i64 %21
  store i8* %22, i8** %3, align 8
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %25 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %30 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %28, %31
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.mthca_srq*, %struct.mthca_srq** %4, align 8
  %41 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %39, %42
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %38, i64 %47
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %23, %10
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
