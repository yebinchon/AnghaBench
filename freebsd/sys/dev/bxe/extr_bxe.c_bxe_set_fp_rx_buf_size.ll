; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_fp_rx_buf_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_set_fp_rx_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IP_HEADER_ALIGNMENT_PADDING = common dso_local global i32 0, align 4
@ETH_OVERHEAD = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_set_fp_rx_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_set_fp_rx_buf_size(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load i32, i32* @IP_HEADER_ALIGNMENT_PADDING, align 4
  %6 = load i32, i32* @ETH_OVERHEAD, align 4
  %7 = add nsw i32 %5, %6
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %7, %10
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %126, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %15 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %129

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MCLBYTES, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  %31 = load i32, i32* @MCLBYTES, align 4
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %31, i32* %38, align 4
  br label %125

39:                                               ; preds = %18
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MJUMPAGESIZE, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  %52 = load i32, i32* @MJUMPAGESIZE, align 4
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %52, i32* %59, align 4
  br label %124

60:                                               ; preds = %39
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @MJUMPAGESIZE, align 4
  %63 = load i32, i32* @MCLBYTES, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i32, i32* @MCLBYTES, align 4
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  %75 = load i32, i32* @MCLBYTES, align 4
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %77 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %75, i32* %82, align 4
  br label %123

83:                                               ; preds = %60
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @MJUMPAGESIZE, align 4
  %86 = mul nsw i32 2, %85
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load i32, i32* @MJUMPAGESIZE, align 4
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %91 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %89, i32* %96, align 4
  %97 = load i32, i32* @MJUMPAGESIZE, align 4
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %99 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  br label %122

105:                                              ; preds = %83
  %106 = load i32, i32* @MCLBYTES, align 4
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %108 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  %114 = load i32, i32* @MCLBYTES, align 4
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %116 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i32 %114, i32* %121, align 4
  br label %122

122:                                              ; preds = %105, %88
  br label %123

123:                                              ; preds = %122, %66
  br label %124

124:                                              ; preds = %123, %43
  br label %125

125:                                              ; preds = %124, %22
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %12

129:                                              ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
