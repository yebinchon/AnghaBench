; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_free_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_free_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32 }
%struct.ubsec_q = type { i32, i64, i32*, i32*, %struct.ubsec_q** }
%struct.cryptop = type { i8* }

@q_next = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubsec_softc*, %struct.ubsec_q*)* @ubsec_free_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_free_q(%struct.ubsec_softc* %0, %struct.ubsec_q* %1) #0 {
  %3 = alloca %struct.ubsec_softc*, align 8
  %4 = alloca %struct.ubsec_q*, align 8
  %5 = alloca %struct.ubsec_q*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %3, align 8
  store %struct.ubsec_q* %1, %struct.ubsec_q** %4, align 8
  %9 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %10 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %67, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %18 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %17, i32 0, i32 4
  %19 = load %struct.ubsec_q**, %struct.ubsec_q*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ubsec_q*, %struct.ubsec_q** %19, i64 %21
  %23 = load %struct.ubsec_q*, %struct.ubsec_q** %22, align 8
  %24 = icmp ne %struct.ubsec_q* %23, null
  br i1 %24, label %25, label %65

25:                                               ; preds = %16
  %26 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %27 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %26, i32 0, i32 4
  %28 = load %struct.ubsec_q**, %struct.ubsec_q*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ubsec_q*, %struct.ubsec_q** %28, i64 %30
  %32 = load %struct.ubsec_q*, %struct.ubsec_q** %31, align 8
  store %struct.ubsec_q* %32, %struct.ubsec_q** %5, align 8
  %33 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %34 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %25
  %38 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %39 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %42 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %47 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @m_freem(i32* %48)
  br label %50

50:                                               ; preds = %45, %37, %25
  %51 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %52 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.cryptop*
  store %struct.cryptop* %54, %struct.cryptop** %6, align 8
  %55 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %55, i32 0, i32 0
  %57 = load %struct.ubsec_q*, %struct.ubsec_q** %5, align 8
  %58 = load i32, i32* @q_next, align 4
  %59 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %56, %struct.ubsec_q* %57, i32 %58)
  %60 = load i8*, i8** @EFAULT, align 8
  %61 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %62 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %64 = call i32 @crypto_done(%struct.cryptop* %63)
  br label %66

65:                                               ; preds = %16
  br label %70

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %12

70:                                               ; preds = %65, %12
  %71 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %72 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %77 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %80 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %85 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @m_freem(i32* %86)
  br label %88

88:                                               ; preds = %83, %75, %70
  %89 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %90 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.cryptop*
  store %struct.cryptop* %92, %struct.cryptop** %6, align 8
  %93 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %93, i32 0, i32 0
  %95 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %96 = load i32, i32* @q_next, align 4
  %97 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %94, %struct.ubsec_q* %95, i32 %96)
  %98 = load i8*, i8** @EFAULT, align 8
  %99 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %100 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %102 = call i32 @crypto_done(%struct.cryptop* %101)
  ret i32 0
}

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.ubsec_q*, i32) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
