; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_ramtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_ramtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_softc*)* @hifn_ramtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_ramtype(%struct.hifn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.hifn_softc* %0, %struct.hifn_softc** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 32
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %13
  store i32 85, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %16
  store i32 85, i32* %17, align 4
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %24 = call i64 @hifn_writeramaddr(%struct.hifn_softc* %22, i32 0, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %77

27:                                               ; preds = %21
  %28 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %30 = call i64 @hifn_readramaddr(%struct.hifn_softc* %28, i32 0, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %77

33:                                               ; preds = %27
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %36 = call i64 @bcmp(i32* %34, i32* %35, i32 32)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %77

41:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 32
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %48
  store i32 170, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %51
  store i32 170, i32* %52, align 4
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %59 = call i64 @hifn_writeramaddr(%struct.hifn_softc* %57, i32 0, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %77

62:                                               ; preds = %56
  %63 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %65 = call i64 @hifn_readramaddr(%struct.hifn_softc* %63, i32 0, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %77

68:                                               ; preds = %62
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %71 = call i64 @bcmp(i32* %69, i32* %70, i32 32)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %75 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  store i32 0, i32* %2, align 4
  br label %77

76:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %73, %67, %61, %38, %32, %26
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @hifn_writeramaddr(%struct.hifn_softc*, i32, i32*) #1

declare dso_local i64 @hifn_readramaddr(%struct.hifn_softc*, i32, i32*) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
