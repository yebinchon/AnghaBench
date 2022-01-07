; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_lock_order_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_lock_order_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.witness_lock_order_data** }
%struct.witness_lock_order_data = type { %struct.witness_lock_order_data*, i32 }
%struct.witness = type { i64 }
%struct.witness_lock_order_key = type { i64, i64 }

@w_rmatrix = common dso_local global i32** null, align 8
@WITNESS_LOCK_ORDER_KNOWN = common dso_local global i32 0, align 4
@w_lohash = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.witness_lock_order_data* (%struct.witness*, %struct.witness*)* @witness_lock_order_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.witness_lock_order_data* @witness_lock_order_get(%struct.witness* %0, %struct.witness* %1) #0 {
  %3 = alloca %struct.witness*, align 8
  %4 = alloca %struct.witness*, align 8
  %5 = alloca %struct.witness_lock_order_data*, align 8
  %6 = alloca %struct.witness_lock_order_key, align 8
  %7 = alloca i32, align 4
  store %struct.witness* %0, %struct.witness** %3, align 8
  store %struct.witness* %1, %struct.witness** %4, align 8
  store %struct.witness_lock_order_data* null, %struct.witness_lock_order_data** %5, align 8
  %8 = load %struct.witness*, %struct.witness** %3, align 8
  %9 = icmp ne %struct.witness* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.witness*, %struct.witness** %4, align 8
  %12 = icmp ne %struct.witness* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @MPASS(i32 %15)
  %17 = load %struct.witness*, %struct.witness** %3, align 8
  %18 = getelementptr inbounds %struct.witness, %struct.witness* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.witness_lock_order_key, %struct.witness_lock_order_key* %6, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load %struct.witness*, %struct.witness** %4, align 8
  %22 = getelementptr inbounds %struct.witness, %struct.witness* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.witness_lock_order_key, %struct.witness_lock_order_key* %6, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.witness_lock_order_key, %struct.witness_lock_order_key* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @WITNESS_INDEX_ASSERT(i64 %26)
  %28 = getelementptr inbounds %struct.witness_lock_order_key, %struct.witness_lock_order_key* %6, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @WITNESS_INDEX_ASSERT(i64 %29)
  %31 = load i32**, i32*** @w_rmatrix, align 8
  %32 = load %struct.witness*, %struct.witness** %3, align 8
  %33 = getelementptr inbounds %struct.witness, %struct.witness* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.witness*, %struct.witness** %4, align 8
  %38 = getelementptr inbounds %struct.witness, %struct.witness* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WITNESS_LOCK_ORDER_KNOWN, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %13
  br label %70

46:                                               ; preds = %13
  %47 = bitcast %struct.witness_lock_order_key* %6 to i8*
  %48 = call i32 @witness_hash_djb2(i8* %47, i32 16)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @w_lohash, i32 0, i32 0), align 8
  %50 = urem i32 %48, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.witness_lock_order_data**, %struct.witness_lock_order_data*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @w_lohash, i32 0, i32 1), align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %51, i64 %53
  %55 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %54, align 8
  store %struct.witness_lock_order_data* %55, %struct.witness_lock_order_data** %5, align 8
  br label %56

56:                                               ; preds = %65, %46
  %57 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  %58 = icmp ne %struct.witness_lock_order_data* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  %61 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %60, i32 0, i32 1
  %62 = call i64 @witness_lock_order_key_equal(i32* %61, %struct.witness_lock_order_key* %6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  %66 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  %67 = getelementptr inbounds %struct.witness_lock_order_data, %struct.witness_lock_order_data* %66, i32 0, i32 0
  %68 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %67, align 8
  store %struct.witness_lock_order_data* %68, %struct.witness_lock_order_data** %5, align 8
  br label %56

69:                                               ; preds = %64, %56
  br label %70

70:                                               ; preds = %69, %45
  %71 = load %struct.witness_lock_order_data*, %struct.witness_lock_order_data** %5, align 8
  ret %struct.witness_lock_order_data* %71
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @WITNESS_INDEX_ASSERT(i64) #1

declare dso_local i32 @witness_hash_djb2(i8*, i32) #1

declare dso_local i64 @witness_lock_order_key_equal(i32*, %struct.witness_lock_order_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
