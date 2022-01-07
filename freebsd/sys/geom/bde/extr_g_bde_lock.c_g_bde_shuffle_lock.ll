; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_shuffle_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_shuffle_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NLOCK_FIELDS = common dso_local global i64 0, align 8
@SHA512_DIGEST_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*)* @g_bde_shuffle_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_shuffle_lock(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @NLOCK_FIELDS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i64, i64* %8, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %8, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %8, align 8
  br label %9

22:                                               ; preds = %9
  store i64 48, i64* %8, align 8
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @SHA512_DIGEST_LENGTH, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load i64*, i64** %3, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NLOCK_FIELDS, align 8
  %33 = urem i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i64*, i64** %3, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NLOCK_FIELDS, align 8
  %40 = udiv i64 %38, %39
  %41 = load i64, i64* @NLOCK_FIELDS, align 8
  %42 = urem i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %27
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %23

66:                                               ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
