; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_tpl_id2name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_tpl_id2name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ntpl = common dso_local global i64 0, align 8
@tpllist = common dso_local global %struct.TYPE_4__** null, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_tpl_id2name(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @TPL_LIST_RLOCK()
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @ntpl, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @tpllist, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strlen(i32 %24)
  %26 = icmp ugt i64 %16, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @tpllist, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @strlcpy(i8* %28, i32 %36, i64 %37)
  br label %41

39:                                               ; preds = %15, %12
  %40 = load i32, i32* @EOVERFLOW, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %27
  br label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOENT, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = call i32 (...) @TPL_LIST_RUNLOCK()
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @TPL_LIST_RLOCK(...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @TPL_LIST_RUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
