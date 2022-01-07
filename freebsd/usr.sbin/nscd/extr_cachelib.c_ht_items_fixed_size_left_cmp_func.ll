; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_ht_items_fixed_size_left_cmp_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_ht_items_fixed_size_left_cmp_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_ht_item_data_ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ht_items_fixed_size_left_cmp_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_items_fixed_size_left_cmp_func(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cache_ht_item_data_*, align 8
  %7 = alloca %struct.cache_ht_item_data_*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cache_ht_item_data_*
  store %struct.cache_ht_item_data_* %11, %struct.cache_ht_item_data_** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cache_ht_item_data_*
  store %struct.cache_ht_item_data_* %13, %struct.cache_ht_item_data_** %7, align 8
  %14 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %15 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %7, align 8
  %21 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %27 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %7, align 8
  %30 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %2
  %34 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %35 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %7, align 8
  %38 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %43 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  br label %49

45:                                               ; preds = %33
  %46 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %7, align 8
  %47 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i64 [ %44, %41 ], [ %48, %45 ]
  store i64 %50, i64* %8, align 8
  %51 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %52 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %7, align 8
  %55 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @memcmp(i32* %53, i32* %56, i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %49
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %64 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %91

68:                                               ; preds = %61
  %69 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %70 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %7, align 8
  %73 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 -1, i32 1
  store i32 %77, i32* %3, align 4
  br label %91

78:                                               ; preds = %49
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %91

80:                                               ; preds = %2
  %81 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %82 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %7, align 8
  %85 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.cache_ht_item_data_*, %struct.cache_ht_item_data_** %6, align 8
  %88 = getelementptr inbounds %struct.cache_ht_item_data_, %struct.cache_ht_item_data_* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @memcmp(i32* %83, i32* %86, i64 %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %80, %78, %68, %67
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
