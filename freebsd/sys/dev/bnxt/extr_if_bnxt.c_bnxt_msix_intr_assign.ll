; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_msix_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_msix_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_8__, i32, %struct.bnxt_softc*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@IFLIB_INTR_ADMIN = common dso_local global i32 0, align 4
@bnxt_handle_def_cp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"def_cp\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to register default completion ring handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@IFLIB_INTR_RX = common dso_local global i32 0, align 4
@bnxt_handle_rx_cp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to register RX completion ring handler\0A\00", align 1
@IFLIB_INTR_TX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"tx_cp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bnxt_msix_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_msix_intr_assign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.bnxt_softc* @iflib_get_softc(i32 %10)
  store %struct.bnxt_softc* %11, %struct.bnxt_softc** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* @IFLIB_INTR_ADMIN, align 4
  %23 = load i32, i32* @bnxt_handle_def_cp, align 4
  %24 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %25 = call i32 @iflib_irq_alloc_generic(i32 %12, i32* %15, i64 %21, i32 %22, i32 %23, %struct.bnxt_softc* %24, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @iflib_get_dev(i32 %29)
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %130

33:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %84, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %37 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %34
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @snprintf(i8* %43, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %48 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %47, i32 0, i32 2
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i64 %51
  %53 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %52, i32 0, i32 1
  %54 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %55 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %54, i32 0, i32 2
  %56 = load %struct.bnxt_softc*, %struct.bnxt_softc** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %56, i64 %58
  %60 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  %64 = load i32, i32* @IFLIB_INTR_RX, align 4
  %65 = load i32, i32* @bnxt_handle_rx_cp, align 4
  %66 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %67 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %66, i32 0, i32 2
  %68 = load %struct.bnxt_softc*, %struct.bnxt_softc** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %68, i64 %70
  %72 = load i32, i32* %8, align 4
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %74 = call i32 @iflib_irq_alloc_generic(i32 %46, i32* %53, i64 %63, i32 %64, i32 %65, %struct.bnxt_softc* %71, i32 %72, i8* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %42
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @iflib_get_dev(i32 %78)
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  br label %106

83:                                               ; preds = %42
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %34

87:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %101, %87
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %91 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %90, i32 0, i32 3
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @IFLIB_INTR_TX, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @iflib_softirq_alloc_generic(i32 %97, i32* null, i32 %98, i32* null, i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %88

104:                                              ; preds = %88
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %130

106:                                              ; preds = %77
  br label %107

107:                                              ; preds = %120, %106
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %113 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %112, i32 0, i32 2
  %114 = load %struct.bnxt_softc*, %struct.bnxt_softc** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %114, i64 %116
  %118 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %117, i32 0, i32 1
  %119 = call i32 @iflib_irq_free(i32 %111, i32* %118)
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %8, align 4
  br label %107

123:                                              ; preds = %107
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %126 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = call i32 @iflib_irq_free(i32 %124, i32* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %123, %104, %28
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.bnxt_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_irq_alloc_generic(i32, i32*, i64, i32, i32, %struct.bnxt_softc*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @iflib_softirq_alloc_generic(i32, i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @iflib_irq_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
