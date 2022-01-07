; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_flush_cache_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cachelib.c_flush_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry_ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.cache_mp_entry_ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.cache_common_entry_ = type { i32, i64, %struct.cache_policy_**, %struct.TYPE_9__ }
%struct.cache_policy_ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@CET_COMMON = common dso_local global i64 0, align 8
@cache_lifetime_common_continue_func = common dso_local global i32 0, align 4
@cache_elemsize_common_continue_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry_*)* @flush_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_cache_entry(%struct.cache_entry_* %0) #0 {
  %2 = alloca %struct.cache_entry_*, align 8
  %3 = alloca %struct.cache_mp_entry_*, align 8
  %4 = alloca %struct.cache_common_entry_*, align 8
  %5 = alloca %struct.cache_policy_*, align 8
  %6 = alloca %struct.cache_policy_*, align 8
  store %struct.cache_entry_* %0, %struct.cache_entry_** %2, align 8
  store %struct.cache_policy_* null, %struct.cache_policy_** %6, align 8
  %7 = load %struct.cache_entry_*, %struct.cache_entry_** %2, align 8
  %8 = getelementptr inbounds %struct.cache_entry_, %struct.cache_entry_* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CET_COMMON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %1
  %15 = load %struct.cache_entry_*, %struct.cache_entry_** %2, align 8
  %16 = bitcast %struct.cache_entry_* %15 to %struct.cache_common_entry_*
  store %struct.cache_common_entry_* %16, %struct.cache_common_entry_** %4, align 8
  %17 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %18 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %25 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %23, %14
  %31 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %32 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %31, i32 0, i32 2
  %33 = load %struct.cache_policy_**, %struct.cache_policy_*** %32, align 8
  %34 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %33, i64 0
  %35 = load %struct.cache_policy_*, %struct.cache_policy_** %34, align 8
  store %struct.cache_policy_* %35, %struct.cache_policy_** %5, align 8
  %36 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %37 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %42 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %41, i32 0, i32 2
  %43 = load %struct.cache_policy_**, %struct.cache_policy_*** %42, align 8
  %44 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %43, i64 1
  %45 = load %struct.cache_policy_*, %struct.cache_policy_** %44, align 8
  store %struct.cache_policy_* %45, %struct.cache_policy_** %6, align 8
  br label %46

46:                                               ; preds = %40, %30
  %47 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %48 = load %struct.cache_policy_*, %struct.cache_policy_** %5, align 8
  %49 = load %struct.cache_policy_*, %struct.cache_policy_** %6, align 8
  %50 = load i32, i32* @cache_lifetime_common_continue_func, align 4
  %51 = call i32 @flush_cache_policy(%struct.cache_common_entry_* %47, %struct.cache_policy_* %48, %struct.cache_policy_* %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %23
  %53 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %54 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %52
  %59 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %60 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %63 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %61, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %58
  %68 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %69 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %74 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %73, i32 0, i32 2
  %75 = load %struct.cache_policy_**, %struct.cache_policy_*** %74, align 8
  %76 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %75, i64 1
  %77 = load %struct.cache_policy_*, %struct.cache_policy_** %76, align 8
  store %struct.cache_policy_* %77, %struct.cache_policy_** %5, align 8
  %78 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %79 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %78, i32 0, i32 2
  %80 = load %struct.cache_policy_**, %struct.cache_policy_*** %79, align 8
  %81 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %80, i64 0
  %82 = load %struct.cache_policy_*, %struct.cache_policy_** %81, align 8
  store %struct.cache_policy_* %82, %struct.cache_policy_** %6, align 8
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %85 = getelementptr inbounds %struct.cache_common_entry_, %struct.cache_common_entry_* %84, i32 0, i32 2
  %86 = load %struct.cache_policy_**, %struct.cache_policy_*** %85, align 8
  %87 = getelementptr inbounds %struct.cache_policy_*, %struct.cache_policy_** %86, i64 0
  %88 = load %struct.cache_policy_*, %struct.cache_policy_** %87, align 8
  store %struct.cache_policy_* %88, %struct.cache_policy_** %5, align 8
  store %struct.cache_policy_* null, %struct.cache_policy_** %6, align 8
  br label %89

89:                                               ; preds = %83, %72
  %90 = load %struct.cache_common_entry_*, %struct.cache_common_entry_** %4, align 8
  %91 = load %struct.cache_policy_*, %struct.cache_policy_** %5, align 8
  %92 = load %struct.cache_policy_*, %struct.cache_policy_** %6, align 8
  %93 = load i32, i32* @cache_elemsize_common_continue_func, align 4
  %94 = call i32 @flush_cache_policy(%struct.cache_common_entry_* %90, %struct.cache_policy_* %91, %struct.cache_policy_* %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %58, %52
  br label %133

96:                                               ; preds = %1
  %97 = load %struct.cache_entry_*, %struct.cache_entry_** %2, align 8
  %98 = bitcast %struct.cache_entry_* %97 to %struct.cache_mp_entry_*
  store %struct.cache_mp_entry_* %98, %struct.cache_mp_entry_** %3, align 8
  %99 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %3, align 8
  %100 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %96
  %106 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %3, align 8
  %107 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %105, %96
  %113 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %3, align 8
  %114 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %3, align 8
  %118 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %116, %120
  %122 = load %struct.cache_mp_entry_*, %struct.cache_mp_entry_** %3, align 8
  %123 = getelementptr inbounds %struct.cache_mp_entry_, %struct.cache_mp_entry_* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %121, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load %struct.cache_entry_*, %struct.cache_entry_** %2, align 8
  %130 = call i32 @clear_cache_entry(%struct.cache_entry_* %129)
  br label %131

131:                                              ; preds = %128, %112
  br label %132

132:                                              ; preds = %131, %105
  br label %133

133:                                              ; preds = %132, %95
  ret void
}

declare dso_local i32 @flush_cache_policy(%struct.cache_common_entry_*, %struct.cache_policy_*, %struct.cache_policy_*, i32) #1

declare dso_local i32 @clear_cache_entry(%struct.cache_entry_*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
