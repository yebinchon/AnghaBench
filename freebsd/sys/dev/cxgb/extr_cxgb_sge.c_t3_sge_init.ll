; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sge_params = type { i32 }

@F_DROPPKT = common dso_local global i32 0, align 4
@F_FLMODE = common dso_local global i32 0, align 4
@F_AVOIDCQOVFL = common dso_local global i32 0, align 4
@F_CQCRDTCTRL = common dso_local global i32 0, align 4
@F_CONGMODE = common dso_local global i32 0, align 4
@F_TNLFLMODE = common dso_local global i32 0, align 4
@F_FATLPERREN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@F_BIGENDIANINGRESS = common dso_local global i32 0, align 4
@F_ISCSICOALESCING = common dso_local global i32 0, align 4
@USING_MSIX = common dso_local global i32 0, align 4
@USING_MSI = common dso_local global i32 0, align 4
@F_ONEINTMULTQ = common dso_local global i32 0, align 4
@F_OPTONEINTMULTQ = common dso_local global i32 0, align 4
@A_SG_CONTROL = common dso_local global i32 0, align 4
@A_SG_EGR_RCQ_DRB_THRSH = common dso_local global i32 0, align 4
@A_SG_TIMER_TICK = common dso_local global i32 0, align 4
@A_SG_CMDQ_CREDIT_TH = common dso_local global i32 0, align 4
@A_SG_HI_DRB_HI_THRSH = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@A_SG_HI_DRB_LO_THRSH = common dso_local global i32 0, align 4
@A_SG_LO_DRB_HI_THRSH = common dso_local global i32 0, align 4
@A_SG_LO_DRB_LO_THRSH = common dso_local global i32 0, align 4
@A_SG_OCO_BASE = common dso_local global i32 0, align 4
@A_SG_DRB_PRI_THRESH = common dso_local global i32 0, align 4
@F_EGRGENCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_sge_init(%struct.TYPE_7__* %0, %struct.sge_params* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.sge_params* %1, %struct.sge_params** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @F_DROPPKT, align 4
  %8 = call i32 @V_PKTSHIFT(i32 2)
  %9 = or i32 %7, %8
  %10 = load i32, i32* @F_FLMODE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @F_AVOIDCQOVFL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @F_CQCRDTCTRL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @F_CONGMODE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @F_TNLFLMODE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @F_FATLPERREN, align 4
  %21 = or i32 %19, %20
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = sub nsw i64 %22, 11
  %24 = call i32 @V_HOSTPAGESIZE(i64 %23)
  %25 = or i32 %21, %24
  %26 = load i32, i32* @F_BIGENDIANINGRESS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  %36 = call i32 @V_USERSPACESIZE(i32 %35)
  %37 = or i32 %27, %36
  %38 = load i32, i32* @F_ISCSICOALESCING, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @USING_MSIX, align 4
  %50 = load i32, i32* @USING_MSI, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @F_ONEINTMULTQ, align 4
  %56 = load i32, i32* @F_OPTONEINTMULTQ, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %45
  br label %61

61:                                               ; preds = %60, %34
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = load i32, i32* @A_SG_CONTROL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @t3_write_reg(%struct.TYPE_7__* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = load i32, i32* @A_SG_EGR_RCQ_DRB_THRSH, align 4
  %68 = call i32 @V_HIRCQDRBTHRSH(i32 512)
  %69 = call i32 @V_LORCQDRBTHRSH(i32 512)
  %70 = or i32 %68, %69
  %71 = call i32 @t3_write_reg(%struct.TYPE_7__* %66, i32 %67, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = load i32, i32* @A_SG_TIMER_TICK, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = call i32 @core_ticks_per_usec(%struct.TYPE_7__* %74)
  %76 = sdiv i32 %75, 10
  %77 = call i32 @t3_write_reg(%struct.TYPE_7__* %72, i32 %73, i32 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = load i32, i32* @A_SG_CMDQ_CREDIT_TH, align 4
  %80 = call i32 @V_THRESHOLD(i32 32)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = call i32 @core_ticks_per_usec(%struct.TYPE_7__* %81)
  %83 = mul nsw i32 200, %82
  %84 = call i32 @V_TIMEOUT(i32 %83)
  %85 = or i32 %80, %84
  %86 = call i32 @t3_write_reg(%struct.TYPE_7__* %78, i32 %79, i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = load i32, i32* @A_SG_HI_DRB_HI_THRSH, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @T3_REV_C, align 8
  %94 = icmp slt i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1000, i32 500
  %97 = call i32 @t3_write_reg(%struct.TYPE_7__* %87, i32 %88, i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = load i32, i32* @A_SG_HI_DRB_LO_THRSH, align 4
  %100 = call i32 @t3_write_reg(%struct.TYPE_7__* %98, i32 %99, i32 256)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = load i32, i32* @A_SG_LO_DRB_HI_THRSH, align 4
  %103 = call i32 @t3_write_reg(%struct.TYPE_7__* %101, i32 %102, i32 1000)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = load i32, i32* @A_SG_LO_DRB_LO_THRSH, align 4
  %106 = call i32 @t3_write_reg(%struct.TYPE_7__* %104, i32 %105, i32 256)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = load i32, i32* @A_SG_OCO_BASE, align 4
  %109 = call i32 @V_BASE1(i32 4095)
  %110 = call i32 @t3_write_reg(%struct.TYPE_7__* %107, i32 %108, i32 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = load i32, i32* @A_SG_DRB_PRI_THRESH, align 4
  %113 = call i32 @t3_write_reg(%struct.TYPE_7__* %111, i32 %112, i32 64512)
  ret void
}

declare dso_local i32 @V_PKTSHIFT(i32) #1

declare dso_local i32 @V_HOSTPAGESIZE(i64) #1

declare dso_local i32 @V_USERSPACESIZE(i32) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @V_HIRCQDRBTHRSH(i32) #1

declare dso_local i32 @V_LORCQDRBTHRSH(i32) #1

declare dso_local i32 @core_ticks_per_usec(%struct.TYPE_7__*) #1

declare dso_local i32 @V_THRESHOLD(i32) #1

declare dso_local i32 @V_TIMEOUT(i32) #1

declare dso_local i32 @V_BASE1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
