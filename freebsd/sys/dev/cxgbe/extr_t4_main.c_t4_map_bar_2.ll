; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_map_bar_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_map_bar_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, i32, %struct.TYPE_2__, i32, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot map doorbell BAR.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@DOORBELL_UDB = common dso_local global i32 0, align 4
@t5_write_combine = common dso_local global i64 0, align 8
@PAT_WRITE_COMBINING = common dso_local global i32 0, align 4
@DOORBELL_WCWR = common dso_local global i32 0, align 4
@DOORBELL_UDBWC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't enable write combining: %d\0A\00", align 1
@A_SGE_STAT_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_map_bar_2(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call i64 @is_t4(%struct.adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %117

15:                                               ; preds = %9, %1
  %16 = call i32 @PCIR_BAR(i32 2)
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SYS_RES_MEMORY, align 4
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 6
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i32* @bus_alloc_resource_any(i32 %21, i32 %22, i32* %24, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %15
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %117

39:                                               ; preds = %15
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @rman_get_virtual(i32* %42)
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = call i64 @chip_id(%struct.adapter* %46)
  %48 = load i64, i64* @CHELSIO_T5, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %39
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 1
  %53 = load i32, i32* @DOORBELL_UDB, align 4
  %54 = call i32 @setbit(i32* %52, i32 %53)
  %55 = load i64, i64* @t5_write_combine, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %50
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @rman_get_size(i32* %64)
  %66 = load i32, i32* @PAT_WRITE_COMBINING, align 4
  %67 = call i32 @pmap_change_attr(i32 %61, i32 %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %57
  %71 = load %struct.adapter*, %struct.adapter** %3, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 1
  %73 = load i32, i32* @DOORBELL_UDB, align 4
  %74 = call i32 @clrbit(i32* %72, i32 %73)
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = load i32, i32* @DOORBELL_WCWR, align 4
  %78 = call i32 @setbit(i32* %76, i32 %77)
  %79 = load %struct.adapter*, %struct.adapter** %3, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 1
  %81 = load i32, i32* @DOORBELL_UDBWC, align 4
  %82 = call i32 @setbit(i32* %80, i32 %81)
  br label %89

83:                                               ; preds = %57
  %84 = load %struct.adapter*, %struct.adapter** %3, align 8
  %85 = getelementptr inbounds %struct.adapter, %struct.adapter* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %70
  %90 = load %struct.adapter*, %struct.adapter** %3, align 8
  %91 = call i64 @is_t5(%struct.adapter* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 @V_STATMODE(i32 0)
  br label %97

95:                                               ; preds = %89
  %96 = call i32 @V_T6_STATMODE(i32 0)
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %5, align 4
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = load i32, i32* @A_SGE_STAT_CFG, align 4
  %101 = call i32 @V_STATSOURCE_T5(i32 7)
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @t4_write_reg(%struct.adapter* %99, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %97, %50
  br label %106

106:                                              ; preds = %105, %39
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 1
  %109 = load i32, i32* @DOORBELL_UDBWC, align 4
  %110 = call i64 @isset(i32* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  %114 = load %struct.adapter*, %struct.adapter** %3, align 8
  %115 = getelementptr inbounds %struct.adapter, %struct.adapter* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %106, %33, %14
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @rman_get_virtual(i32*) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i32 @pmap_change_attr(i32, i32, i32) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @clrbit(i32*, i32) #1

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i32 @V_STATMODE(i32) #1

declare dso_local i32 @V_T6_STATMODE(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_STATSOURCE_T5(i32) #1

declare dso_local i64 @isset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
