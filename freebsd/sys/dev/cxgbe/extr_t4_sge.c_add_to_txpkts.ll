; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_add_to_txpkts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_add_to_txpkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.txpkts = type { i32, i32, i32, i32 }

@EQ_ESIZE = common dso_local global i32 0, align 4
@SGE_MAX_WR_NDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.txpkts*, i32)* @add_to_txpkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_txpkts(%struct.mbuf* %0, %struct.txpkts* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.txpkts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.txpkts* %1, %struct.txpkts** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %13 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %18 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ true, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = call i64 @cannot_use_txpkts(%struct.mbuf* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %95

29:                                               ; preds = %21
  %30 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %31 = call i32 @mbuf_nsegs(%struct.mbuf* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %33 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %95

40:                                               ; preds = %36, %29
  %41 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %42 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %43, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 65535
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %95

52:                                               ; preds = %40
  %53 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %54 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @txpkts0_len16(i32 %58)
  store i32 %59, i32* %9, align 4
  br label %62

60:                                               ; preds = %52
  %61 = call i32 (...) @txpkts1_len16()
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %64 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @EQ_ESIZE, align 4
  %69 = sdiv i32 %68, 16
  %70 = call i32 @howmany(i32 %67, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @SGE_MAX_WR_NDESC, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %62
  store i32 1, i32* %4, align 4
  br label %95

79:                                               ; preds = %74
  %80 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %81 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %86 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.txpkts*, %struct.txpkts** %6, align 8
  %89 = getelementptr inbounds %struct.txpkts, %struct.txpkts* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @set_mbuf_len16(%struct.mbuf* %92, i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %79, %78, %51, %39, %28
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @cannot_use_txpkts(%struct.mbuf*) #1

declare dso_local i32 @mbuf_nsegs(%struct.mbuf*) #1

declare dso_local i32 @txpkts0_len16(i32) #1

declare dso_local i32 @txpkts1_len16(...) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @set_mbuf_len16(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
