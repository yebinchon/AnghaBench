; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tsb.c_tsb_tte_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tsb.c_tsb_tte_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }

@kernel_pmap = common dso_local global i64 0, align 8
@tsb_nlookup_k = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@tsb_nlookup_u = common dso_local global i32 0, align 4
@TS_MIN = common dso_local global i64 0, align 8
@TS_MAX = common dso_local global i64 0, align 8
@TSB_BUCKET_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tte* @tsb_tte_lookup(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.tte*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tte*, align 8
  %7 = alloca %struct.tte*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @kernel_pmap, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @tsb_nlookup_k, align 4
  %15 = call i32 @PMAP_STATS_INC(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.tte* @tsb_kvtotte(i32 %16)
  store %struct.tte* %17, %struct.tte** %7, align 8
  %18 = load %struct.tte*, %struct.tte** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @tte_match(%struct.tte* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load %struct.tte*, %struct.tte** %7, align 8
  store %struct.tte* %23, %struct.tte** %3, align 8
  br label %65

24:                                               ; preds = %13
  br label %64

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @MA_OWNED, align 4
  %28 = call i32 @PMAP_LOCK_ASSERT(i64 %26, i32 %27)
  %29 = load i32, i32* @tsb_nlookup_u, align 4
  %30 = call i32 @PMAP_STATS_INC(i32 %29)
  %31 = load i64, i64* @TS_MIN, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %60, %25
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @TS_MAX, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.tte* @tsb_vtobucket(i64 %37, i64 %38, i32 %39)
  store %struct.tte* %40, %struct.tte** %6, align 8
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %56, %36
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @TSB_BUCKET_SIZE, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.tte*, %struct.tte** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.tte, %struct.tte* %46, i64 %47
  store %struct.tte* %48, %struct.tte** %7, align 8
  %49 = load %struct.tte*, %struct.tte** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @tte_match(%struct.tte* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load %struct.tte*, %struct.tte** %7, align 8
  store %struct.tte* %54, %struct.tte** %3, align 8
  br label %65

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %41

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %32

63:                                               ; preds = %32
  br label %64

64:                                               ; preds = %63, %24
  store %struct.tte* null, %struct.tte** %3, align 8
  br label %65

65:                                               ; preds = %64, %53, %22
  %66 = load %struct.tte*, %struct.tte** %3, align 8
  ret %struct.tte* %66
}

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local %struct.tte* @tsb_kvtotte(i32) #1

declare dso_local i64 @tte_match(%struct.tte*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i64, i32) #1

declare dso_local %struct.tte* @tsb_vtobucket(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
