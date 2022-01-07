; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tick.c_clock_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_tick.c_clock_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, i32)*, i64 }

@compare_ticks = common dso_local global i32 0, align 4
@counter_lower_last = common dso_local global i32 0, align 4
@counter_upper = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @clock_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.clock_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.clock_softc*
  store %struct.clock_softc* %10, %struct.clock_softc** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @DPCPU_GET(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @mips_rd_count()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @compare_ticks, align 4
  %15 = call i32 @DPCPU_GET(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @compare_ticks, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @DPCPU_SET(i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mips_wr_compare(i32 %25)
  br label %29

27:                                               ; preds = %1
  %28 = call i32 @mips_wr_compare(i32 -1)
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @counter_lower_last, align 4
  %32 = call i32 @DPCPU_GET(i32 %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @counter_upper, align 4
  %36 = load i32, i32* @counter_upper, align 4
  %37 = call i32 @DPCPU_GET(i32 %36)
  %38 = add nsw i32 %37, 1
  %39 = call i32 @DPCPU_SET(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* @counter_lower_last, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @DPCPU_SET(i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %91

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DPCPU_GET(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %4, align 4
  %56 = mul nsw i32 2, %55
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %46
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load %struct.clock_softc*, %struct.clock_softc** %3, align 8
  %67 = getelementptr inbounds %struct.clock_softc, %struct.clock_softc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.clock_softc*, %struct.clock_softc** %3, align 8
  %73 = getelementptr inbounds %struct.clock_softc, %struct.clock_softc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %74, align 8
  %76 = load %struct.clock_softc*, %struct.clock_softc** %3, align 8
  %77 = getelementptr inbounds %struct.clock_softc, %struct.clock_softc* %76, i32 0, i32 0
  %78 = load %struct.clock_softc*, %struct.clock_softc** %3, align 8
  %79 = getelementptr inbounds %struct.clock_softc, %struct.clock_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %75(%struct.TYPE_3__* %77, i32 %81)
  br label %83

83:                                               ; preds = %71, %65
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %61

87:                                               ; preds = %61
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @DPCPU_SET(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %40
  %92 = load %struct.clock_softc*, %struct.clock_softc** %3, align 8
  %93 = getelementptr inbounds %struct.clock_softc, %struct.clock_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load %struct.clock_softc*, %struct.clock_softc** %3, align 8
  %99 = getelementptr inbounds %struct.clock_softc, %struct.clock_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %100, align 8
  %102 = load %struct.clock_softc*, %struct.clock_softc** %3, align 8
  %103 = getelementptr inbounds %struct.clock_softc, %struct.clock_softc* %102, i32 0, i32 0
  %104 = load %struct.clock_softc*, %struct.clock_softc** %3, align 8
  %105 = getelementptr inbounds %struct.clock_softc, %struct.clock_softc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 %101(%struct.TYPE_3__* %103, i32 %107)
  br label %109

109:                                              ; preds = %97, %91
  %110 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %110
}

declare dso_local i32 @DPCPU_GET(i32) #1

declare dso_local i32 @mips_rd_count(...) #1

declare dso_local i32 @DPCPU_SET(i32, i32) #1

declare dso_local i32 @mips_wr_compare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
