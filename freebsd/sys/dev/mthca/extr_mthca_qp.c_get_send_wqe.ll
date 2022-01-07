; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_get_send_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_get_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_qp = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i8* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mthca_qp*, i32)* @get_send_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_send_wqe(%struct.mthca_qp* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mthca_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.mthca_qp* %0, %struct.mthca_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %12 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %17 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %15, i64 %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %23 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %21, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %20, i64 %27
  store i8* %28, i8** %3, align 8
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %31 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %35 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %39 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %37, %41
  %43 = add nsw i32 %36, %42
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %51 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.mthca_qp*, %struct.mthca_qp** %4, align 8
  %55 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %53, %57
  %59 = add nsw i32 %52, %58
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %49, i64 %63
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %29, %10
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
