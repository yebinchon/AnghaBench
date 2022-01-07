; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_mark_ce_flags.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_mark_ce_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@the_index = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.TYPE_3__** null, align 8
@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4
@CE_ENTRY_CHANGED = common dso_local global i32 0, align 4
@active_cache_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @mark_ce_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_ce_flags(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @cache_name_pos(i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 0, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cache, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %18, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i32 @mark_fsmonitor_invalid(i32* @the_index, %struct.TYPE_3__* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cache, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %27
  store i32 %35, i32* %33, align 4
  br label %47

36:                                               ; preds = %17
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cache, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %38
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %36, %26
  %48 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %49 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cache, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %49, i64 %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %48
  store i32 %56, i32* %54, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @cache_tree_invalidate_path(i32* @the_index, i8* %57)
  %59 = load i32, i32* @CE_ENTRY_CHANGED, align 4
  %60 = load i32, i32* @active_cache_changed, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @active_cache_changed, align 4
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cache_name_pos(i8*, i32) #1

declare dso_local i32 @mark_fsmonitor_invalid(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @cache_tree_invalidate_path(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
