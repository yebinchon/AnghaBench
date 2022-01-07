; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_lookup.c_nllookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_lookup.c_nllookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@nname = common dso_local global i32 0, align 4
@nl = common dso_local global %struct.TYPE_4__* null, align 8
@LOOKUPDEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @nllookup(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @nname, align 4
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %52, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %15, %16
  %18 = ashr i64 %17, 1
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %14
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %2, align 8
  br label %54

39:                                               ; preds = %26, %14
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i64, i64* %5, align 8
  store i64 %48, i64* %6, align 8
  br label %52

49:                                               ; preds = %39
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %49, %47
  br label %10

53:                                               ; preds = %10
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
