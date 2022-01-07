; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_mwrite_bap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_mwrite_bap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32 }
%struct.mbuf = type { i64, i64, %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wi_softc*, i32, i32, %struct.mbuf*, i32)* @wi_mwrite_bap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_mwrite_bap(%struct.wi_softc* %0, i32 %1, i32 %2, %struct.mbuf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mbuf*, align 8
  store %struct.wi_softc* %0, %struct.wi_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %15, %struct.mbuf** %14, align 8
  br label %16

16:                                               ; preds = %84, %5
  %17 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %88

24:                                               ; preds = %22
  %25 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %84

30:                                               ; preds = %24
  %31 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @min(i64 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = srem i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %13, align 4
  %44 = srem i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42, %30
  %47 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.wi_softc*, %struct.wi_softc** %7, align 8
  %50 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %49, i32 0, i32 0
  %51 = ptrtoint i32* %50 to i64
  %52 = call i32 @m_copydata(%struct.mbuf* %47, i32 0, i32 %48, i64 %51)
  %53 = load %struct.wi_softc*, %struct.wi_softc** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.wi_softc*, %struct.wi_softc** %7, align 8
  %57 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %56, i32 0, i32 0
  %58 = ptrtoint i32* %57 to i64
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @wi_write_bap(%struct.wi_softc* %53, i32 %54, i32 %55, i64 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %89

61:                                               ; preds = %42
  %62 = load %struct.wi_softc*, %struct.wi_softc** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @wi_write_bap(%struct.wi_softc* %62, i32 %63, i32 %64, i64 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %89

73:                                               ; preds = %61
  %74 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %73, %29
  %85 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 2
  %87 = load %struct.mbuf*, %struct.mbuf** %86, align 8
  store %struct.mbuf* %87, %struct.mbuf** %14, align 8
  br label %16

88:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %71, %46
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i64) #1

declare dso_local i32 @wi_write_bap(%struct.wi_softc*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
