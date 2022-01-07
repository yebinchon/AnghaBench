; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_check_update_times_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_filter.c_check_update_times_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_filter_small = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@NUM_FILTER_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.time_filter_small*, i8*, i8*)* @check_update_times_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_update_times_small(%struct.time_filter_small* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.time_filter_small*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.time_filter_small* %0, %struct.time_filter_small** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %127, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %130

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %20 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %18 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %10, align 8
  %31 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %32 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = mul nsw i32 %33, %36
  %38 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %39 = sdiv i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp uge i8* %42, %43
  br i1 %44, label %45, label %126

45:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %102, %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %48
  %53 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %54 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %62 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ult i8* %60, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %52
  %71 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %72 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %80 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i8* %78, i8** %85, align 8
  %86 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %87 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %95 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i8* %93, i8** %100, align 8
  store i32 1, i32* %9, align 4
  br label %105

101:                                              ; preds = %52
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %48

105:                                              ; preds = %70, %48
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %111 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i8* %109, i8** %116, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %119 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i8* %117, i8** %124, align 8
  br label %125

125:                                              ; preds = %108, %105
  br label %126

126:                                              ; preds = %125, %17
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %12

130:                                              ; preds = %12
  %131 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  %133 = load i8*, i8** %6, align 8
  %134 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %135 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = ptrtoint i8* %133 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = inttoptr i64 %144 to i8*
  store i8* %145, i8** %10, align 8
  %146 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %147 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %149, %150
  %152 = mul nsw i32 %148, %151
  %153 = load i32, i32* @NUM_FILTER_ENTRIES, align 4
  %154 = sdiv i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** %11, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = icmp uge i8* %157, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %130
  %161 = load i8*, i8** %5, align 8
  %162 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %163 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %162, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  store i8* %161, i8** %168, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = load %struct.time_filter_small*, %struct.time_filter_small** %4, align 8
  %171 = getelementptr inbounds %struct.time_filter_small, %struct.time_filter_small* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  store i8* %169, i8** %176, align 8
  br label %177

177:                                              ; preds = %160, %130
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
