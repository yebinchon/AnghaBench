; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_hash_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_hash_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.witness** }
%struct.witness = type { %struct.witness*, i32 }

@witness_cold = common dso_local global i64 0, align 8
@w_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@w_hash = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.witness* (i8*)* @witness_hash_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.witness* @witness_hash_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.witness*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @MPASS(i32 %7)
  %9 = load i64, i64* @witness_cold, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* @w_mtx, i32 %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @witness_hash_djb2(i8* %15, i32 0)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @w_hash, i32 0, i32 0), align 8
  %18 = urem i64 %16, %17
  store i64 %18, i64* %4, align 8
  %19 = load %struct.witness**, %struct.witness*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @w_hash, i32 0, i32 1), align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.witness*, %struct.witness** %19, i64 %20
  %22 = load %struct.witness*, %struct.witness** %21, align 8
  store %struct.witness* %22, %struct.witness** %3, align 8
  br label %23

23:                                               ; preds = %34, %14
  %24 = load %struct.witness*, %struct.witness** %3, align 8
  %25 = icmp ne %struct.witness* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.witness*, %struct.witness** %3, align 8
  %28 = getelementptr inbounds %struct.witness, %struct.witness* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @strcmp(i32 %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.witness*, %struct.witness** %3, align 8
  %36 = getelementptr inbounds %struct.witness, %struct.witness* %35, i32 0, i32 0
  %37 = load %struct.witness*, %struct.witness** %36, align 8
  store %struct.witness* %37, %struct.witness** %3, align 8
  br label %23

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.witness*, %struct.witness** %3, align 8
  ret %struct.witness* %40
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @witness_hash_djb2(i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
