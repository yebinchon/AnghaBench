; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_max_ticks_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_max_ticks_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_hpts_entry = type { i32, i64, i64, i64, i64, i64 }

@NUM_OF_HPTSI_SLOTS = common dso_local global i64 0, align 8
@combined_wheel_wrap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcp_hpts_entry*, i64, i64*)* @max_ticks_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max_ticks_available(%struct.tcp_hpts_entry* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcp_hpts_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.tcp_hpts_entry* %0, %struct.tcp_hpts_entry** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %13 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %23 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i64, i64* @NUM_OF_HPTSI_SLOTS, align 8
  %29 = sub nsw i64 %28, 1
  store i64 %29, i64* %9, align 8
  br label %33

30:                                               ; preds = %21
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64*, i64** %7, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  br label %75

40:                                               ; preds = %16, %3
  %41 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* @NUM_OF_HPTSI_SLOTS, align 8
  %48 = sub nsw i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %52

49:                                               ; preds = %40
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64*, i64** %7, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %60 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %66 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @hpts_ticks_diff(i64 %67, i64 %68)
  store i64 %69, i64* %8, align 8
  br label %71

70:                                               ; preds = %58
  store i64 1, i64* %8, align 8
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i64, i64* @NUM_OF_HPTSI_SLOTS, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %4, align 8
  br label %123

75:                                               ; preds = %39
  %76 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %77 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %80 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i64 1, i64* %8, align 8
  br label %92

84:                                               ; preds = %75
  %85 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %86 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %89 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @hpts_ticks_diff(i64 %87, i64 %90)
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %84, %83
  %93 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %94 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %100 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @hpts_ticks_diff(i64 %101, i64 %102)
  store i64 %103, i64* %10, align 8
  br label %105

104:                                              ; preds = %92
  store i64 0, i64* %10, align 8
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i64, i64* @NUM_OF_HPTSI_SLOTS, align 8
  %107 = load i64, i64* %8, align 8
  %108 = sub nsw i64 %106, %107
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp sle i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i32, i32* @combined_wheel_wrap, align 4
  %114 = call i32 @counter_u64_add(i32 %113, i32 1)
  %115 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %116 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %7, align 8
  store i64 %117, i64* %118, align 8
  store i64 0, i64* %4, align 8
  br label %123

119:                                              ; preds = %105
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = sub nsw i64 %120, %121
  store i64 %122, i64* %4, align 8
  br label %123

123:                                              ; preds = %119, %112, %71
  %124 = load i64, i64* %4, align 8
  ret i64 %124
}

declare dso_local i64 @hpts_ticks_diff(i64, i64) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
