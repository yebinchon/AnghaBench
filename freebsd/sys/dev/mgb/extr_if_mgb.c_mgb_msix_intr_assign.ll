; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_msix_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_msix_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"num rxqsets/txqsets != 1 \00", align 1
@IFLIB_INTR_ADMIN = common dso_local global i32 0, align 4
@mgb_admin_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to register admin interrupt handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@IFLIB_INTR_RX = common dso_local global i32 0, align 4
@mgb_rxq_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to register rxq %d interrupt handler\0A\00", align 1
@MGB_INTR_VEC_RX_MAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"txq%d\00", align 1
@IFLIB_INTR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mgb_msix_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_msix_intr_assign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mgb_softc*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.mgb_softc* @iflib_get_softc(i32 %12)
  store %struct.mgb_softc* %13, %struct.mgb_softc** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_3__* @iflib_get_softc_ctx(i32 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i1 [ false, %2 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %31 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @IFLIB_INTR_ADMIN, align 4
  %35 = load i32, i32* @mgb_admin_intr, align 4
  %36 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %37 = call i32 @iflib_irq_alloc_generic(i32 %29, i32* %31, i32 %33, i32 %34, i32 %35, %struct.mgb_softc* %36, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %42 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %109

46:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %86, %46
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @snprintf(i8* %56, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %61 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @IFLIB_INTR_RX, align 4
  %65 = load i32, i32* @mgb_rxq_intr, align 4
  %66 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %69 = call i32 @iflib_irq_alloc_generic(i32 %59, i32* %61, i32 %63, i32 %64, i32 %65, %struct.mgb_softc* %66, i32 %67, i8* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %53
  %73 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %74 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %109

79:                                               ; preds = %53
  %80 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %81 = load i32, i32* @MGB_INTR_VEC_RX_MAP, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @MGB_INTR_VEC_MAP(i32 %82, i32 %83)
  %85 = call i32 @CSR_UPDATE_REG(%struct.mgb_softc* %80, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %47

89:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @snprintf(i8* %97, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @IFLIB_INTR_TX, align 4
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %104 = call i32 @iflib_softirq_alloc_generic(i32 %100, i32* null, i32 %101, i32* null, i32 %102, i8* %103)
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %90

108:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %72, %40
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local %struct.TYPE_3__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @iflib_irq_alloc_generic(i32, i32*, i32, i32, i32, %struct.mgb_softc*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CSR_UPDATE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @MGB_INTR_VEC_MAP(i32, i32) #1

declare dso_local i32 @iflib_softirq_alloc_generic(i32, i32*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
