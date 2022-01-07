; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i32 }

@PMAP_TSB_THRESH = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_unwire(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tte*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PMAP_LOCK(i32 %9)
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* @PMAP_TSB_THRESH, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @tsb_foreach(i32 %17, i32* null, i64 %18, i64 %19, i32 (i32, i32*, %struct.tte*, i64)* @pmap_unwire_tte)
  br label %43

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %38, %21
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.tte* @tsb_tte_lookup(i32 %28, i64 %29)
  store %struct.tte* %30, %struct.tte** %8, align 8
  %31 = icmp ne %struct.tte* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.tte*, %struct.tte** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @pmap_unwire_tte(i32 %33, i32* null, %struct.tte* %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %23

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @PMAP_UNLOCK(i32 %44)
  ret void
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @tsb_foreach(i32, i32*, i64, i64, i32 (i32, i32*, %struct.tte*, i64)*) #1

declare dso_local i32 @pmap_unwire_tte(i32, i32*, %struct.tte*, i64) #1

declare dso_local %struct.tte* @tsb_tte_lookup(i32, i64) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
