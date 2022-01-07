; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_phyp_softc = type { i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@H_GET_TERM_CHAR = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@HVTERMPROT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_phyp_softc*, i8*, i64)* @uart_phyp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_phyp_get(%struct.uart_phyp_softc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_phyp_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_phyp_softc* %0, %struct.uart_phyp_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %11 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %10, i32 0, i32 2
  %12 = call i32 @uart_lock(i32* %11)
  %13 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %14 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load i32, i32* @H_GET_TERM_CHAR, align 4
  %19 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %20 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %23 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %22, i32 0, i32 0
  %24 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %25 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = call i32 @phyp_pft_hcall(i32 %18, i32 %21, i32 0, i32 0, i32 0, i64* %23, i32* %28, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @H_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %17
  %39 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %40 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %39, i32 0, i32 2
  %41 = call i32 @uart_unlock(i32* %40)
  store i32 -1, i32* %4, align 4
  br label %133

42:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %45 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %50 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %49, i32 0, i32 2
  %51 = call i32 @uart_unlock(i32* %50)
  store i32 0, i32* %4, align 4
  br label %133

52:                                               ; preds = %43
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %55 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %60 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %64 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HVTERMPROT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %73 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 4
  %76 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %77 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %79 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %84 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %89 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memmove(i32* %82, i32* %87, i32 %91)
  br label %93

93:                                               ; preds = %71, %68, %62
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %96 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @memcpy(i8* %94, i32* %98, i64 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %103 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %107 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %93
  %111 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %112 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %117 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %123 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memmove(i32* %115, i32* %121, i32 %125)
  br label %127

127:                                              ; preds = %110, %93
  %128 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %5, align 8
  %129 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %128, i32 0, i32 2
  %130 = call i32 @uart_unlock(i32* %129)
  %131 = load i64, i64* %7, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %127, %48, %38
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @uart_lock(i32*) #1

declare dso_local i32 @phyp_pft_hcall(i32, i32, i32, i32, i32, i64*, i32*, i32*) #1

declare dso_local i32 @uart_unlock(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
