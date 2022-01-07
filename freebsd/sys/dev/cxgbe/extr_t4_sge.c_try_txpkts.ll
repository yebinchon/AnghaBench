; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_try_txpkts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_try_txpkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.txpkts = type { i32, i32, i32, i32 }

@EQ_ESIZE = common dso_local global i32 0, align 4
@SGE_MAX_WR_NDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.mbuf*, %struct.txpkts*, i32)* @try_txpkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_txpkts(%struct.mbuf* %0, %struct.mbuf* %1, %struct.txpkts* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.txpkts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.txpkts* %2, %struct.txpkts** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %16 = call i64 @cannot_use_txpkts(%struct.mbuf* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %20 = call i64 @cannot_use_txpkts(%struct.mbuf* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %4
  store i32 1, i32* %5, align 4
  br label %91

23:                                               ; preds = %18
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = call i32 @mbuf_nsegs(%struct.mbuf* %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = call i32 @mbuf_nsegs(%struct.mbuf* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.txpkts*, %struct.txpkts** %8, align 8
  %34 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = call i32 (...) @txpkts1_len16()
  store i32 %35, i32* %14, align 4
  store i32 %35, i32* %13, align 4
  br label %43

36:                                               ; preds = %23
  %37 = load %struct.txpkts*, %struct.txpkts** %8, align 8
  %38 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @txpkts0_len16(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @txpkts0_len16(i32 %41)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = call i32 @howmany(i32 4, i32 16)
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.txpkts*, %struct.txpkts** %8, align 8
  %50 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.txpkts*, %struct.txpkts** %8, align 8
  %52 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EQ_ESIZE, align 4
  %55 = sdiv i32 %54, 16
  %56 = call i32 @howmany(i32 %53, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @SGE_MAX_WR_NDESC, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %43
  store i32 1, i32* %5, align 4
  br label %91

65:                                               ; preds = %60
  %66 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %69, %73
  %75 = load %struct.txpkts*, %struct.txpkts** %8, align 8
  %76 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.txpkts*, %struct.txpkts** %8, align 8
  %78 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 65535
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  br label %91

82:                                               ; preds = %65
  %83 = load %struct.txpkts*, %struct.txpkts** %8, align 8
  %84 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %83, i32 0, i32 3
  store i32 2, i32* %84, align 4
  %85 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @set_mbuf_len16(%struct.mbuf* %85, i32 %86)
  %88 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @set_mbuf_len16(%struct.mbuf* %88, i32 %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %82, %81, %64, %22
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @cannot_use_txpkts(%struct.mbuf*) #1

declare dso_local i32 @mbuf_nsegs(%struct.mbuf*) #1

declare dso_local i32 @txpkts1_len16(...) #1

declare dso_local i32 @txpkts0_len16(i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @set_mbuf_len16(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
