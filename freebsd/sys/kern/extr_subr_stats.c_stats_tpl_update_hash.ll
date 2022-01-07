; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_tpl_update_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_tpl_update_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblob_tpl = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.statsblob_tpl*)* @stats_tpl_update_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_tpl_update_hash(%struct.statsblob_tpl* %0) #0 {
  %2 = alloca %struct.statsblob_tpl*, align 8
  %3 = alloca i32, align 4
  store %struct.statsblob_tpl* %0, %struct.statsblob_tpl** %2, align 8
  %4 = call i32 (...) @TPL_LIST_WLOCK_ASSERT()
  %5 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %6 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = call i8* @hash32_str(i32* %9, i8* null)
  %11 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %12 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i8* %10, i8** %14, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %56, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %18 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = call i32 @NVOIS(%struct.TYPE_7__* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %15
  %23 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %24 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %22
  %35 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %36 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %46 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @hash32_str(i32* %44, i8* %49)
  %51 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %52 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  br label %55

55:                                               ; preds = %34, %22
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %61 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %64 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %69 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @hash32_buf(%struct.TYPE_7__* %62, i32 %67, i8* %72)
  %74 = load %struct.statsblob_tpl*, %struct.statsblob_tpl** %2, align 8
  %75 = getelementptr inbounds %struct.statsblob_tpl, %struct.statsblob_tpl* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* %73, i8** %77, align 8
  ret void
}

declare dso_local i32 @TPL_LIST_WLOCK_ASSERT(...) #1

declare dso_local i8* @hash32_str(i32*, i8*) #1

declare dso_local i32 @NVOIS(%struct.TYPE_7__*) #1

declare dso_local i8* @hash32_buf(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
