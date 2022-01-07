; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_new_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_new_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_queue = type { i64, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rr_queue = type { i64, i64, i64 }
%struct.rr_si = type { i32 }

@DN_SCHED_RR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"quantum too large, truncating to 4G - 1\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"called, q->quantum %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_queue*)* @rr_new_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_new_queue(%struct.dn_queue* %0) #0 {
  %2 = alloca %struct.dn_queue*, align 8
  %3 = alloca %struct.rr_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.dn_queue* %0, %struct.dn_queue** %2, align 8
  %5 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %6 = bitcast %struct.dn_queue* %5 to %struct.rr_queue*
  store %struct.rr_queue* %6, %struct.rr_queue** %3, align 8
  %7 = load i32, i32* @DN_SCHED_RR, align 4
  %8 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %9 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 8
  %12 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %13 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %21 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %19, %27
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp uge i64 %29, 4294967296
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 @D(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i64 4294967295, i64* %4, align 8
  br label %33

33:                                               ; preds = %31, %1
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %36 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %38 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ND(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %42 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %45 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %47 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %49 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %33
  %54 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %55 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %56 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = inttoptr i64 %58 to %struct.rr_si*
  %60 = call i32 @rr_append(%struct.rr_queue* %54, %struct.rr_si* %59)
  br label %61

61:                                               ; preds = %53, %33
  ret i32 0
}

declare dso_local i32 @D(i8*) #1

declare dso_local i32 @ND(i8*, i64) #1

declare dso_local i32 @rr_append(%struct.rr_queue*, %struct.rr_si*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
