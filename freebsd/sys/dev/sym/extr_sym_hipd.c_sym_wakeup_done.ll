; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_wakeup_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_wakeup_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64* }

@MA_OWNED = common dso_local global i32 0, align 4
@MAX_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: bad DSA (%x) in done queue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @sym_wakeup_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_wakeup_done(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @SYM_LOCK_ASSERT(i32 %7)
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %1, %56
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @scr_to_cpu(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %57

24:                                               ; preds = %12
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @MAX_QUEUE, align 4
  %34 = mul nsw i32 %33, 2
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @sym_ccb_from_dsa(%struct.TYPE_6__* %38, i64 %39)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = call i32 (...) @MEMORY_BARRIER()
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @sym_complete_ok(%struct.TYPE_6__* %45, i64 %46)
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %56

50:                                               ; preds = %37
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = call i8* @sym_name(%struct.TYPE_6__* %51)
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  br label %12

57:                                               ; preds = %23
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i64 @scr_to_cpu(i64) #1

declare dso_local i64 @sym_ccb_from_dsa(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @MEMORY_BARRIER(...) #1

declare dso_local i32 @sym_complete_ok(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @sym_name(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
