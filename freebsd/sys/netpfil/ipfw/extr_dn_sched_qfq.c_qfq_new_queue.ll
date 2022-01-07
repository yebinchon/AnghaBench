; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_new_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_new_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_queue = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.qfq_sched = type { i64, i64, i32* }
%struct.qfq_class = type { i64, i64, i32* }

@QFQ_MAX_WEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"rounding weight to 1\00", align 1
@ONE_FP = common dso_local global i64 0, align 8
@QFQ_MAX_WSUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_queue*)* @qfq_new_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_new_queue(%struct.dn_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dn_queue*, align 8
  %4 = alloca %struct.qfq_sched*, align 8
  %5 = alloca %struct.qfq_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dn_queue* %0, %struct.dn_queue** %3, align 8
  %8 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %9 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = inttoptr i64 %11 to %struct.qfq_sched*
  store %struct.qfq_sched* %12, %struct.qfq_sched** %4, align 8
  %13 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %14 = bitcast %struct.dn_queue* %13 to %struct.qfq_class*
  store %struct.qfq_class* %14, %struct.qfq_class** %5, align 8
  %15 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %16 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %24 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %32 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @QFQ_MAX_WEIGHT, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %1
  store i64 1, i64* %7, align 8
  %40 = call i32 @D(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* @ONE_FP, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sdiv i64 %42, %43
  %45 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %46 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* @ONE_FP, align 8
  %48 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %49 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sdiv i64 %47, %50
  store i64 %51, i64* %7, align 8
  %52 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %53 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @QFQ_MAX_WSUM, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %41
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %2, align 4
  br label %89

61:                                               ; preds = %41
  %62 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %63 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %66 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @qfq_calc_index(i64 %64, i64 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %70 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %76 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %79 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load i64, i64* @ONE_FP, align 8
  %83 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %84 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sdiv i64 %82, %85
  %87 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %88 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %61, %59
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @D(i8*) #1

declare dso_local i32 @qfq_calc_index(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
