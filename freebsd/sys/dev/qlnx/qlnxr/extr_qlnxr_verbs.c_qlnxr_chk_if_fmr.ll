; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_chk_if_fmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_chk_if_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_qp = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_12__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@IB_WC_FAST_REG_MR = common dso_local global i64 0, align 8
@IB_WC_REG_MR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_qp*)* @qlnxr_chk_if_fmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_chk_if_fmr(%struct.qlnxr_qp* %0) #0 {
  %2 = alloca %struct.qlnxr_qp*, align 8
  store %struct.qlnxr_qp* %0, %struct.qlnxr_qp** %2, align 8
  %3 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %2, align 8
  %4 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %3, i32 0, i32 1
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %6 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %2, align 8
  %7 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IB_WC_FAST_REG_MR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %2, align 8
  %17 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %2, align 8
  %20 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %15, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
