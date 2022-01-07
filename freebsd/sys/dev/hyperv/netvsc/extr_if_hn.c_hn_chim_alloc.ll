; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chim_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chim_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32* }

@HN_NVS_CHIM_IDX_INVALID = common dso_local global i32 0, align 4
@LONG_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid i %d and idx %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*)* @hn_chim_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_chim_alloc(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %8 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %9 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %12 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* @HN_NVS_CHIM_IDX_INVALID, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %62, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @ffsl(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %62

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @LONG_BIT, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %39 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %42, i8* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @atomic_testandset_long(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %30
  br label %62

56:                                               ; preds = %30
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @LONG_BIT, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %6, align 4
  br label %65

62:                                               ; preds = %55, %29
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %15

65:                                               ; preds = %56, %15
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @ffsl(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_testandset_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
