; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_partition_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_partition_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@A_TP_PMM_SIZE = common dso_local global i32 0, align 4
@A_TP_PMM_TX_BASE = common dso_local global i32 0, align 4
@A_TP_PMM_TX_PAGE_SIZE = common dso_local global i32 0, align 4
@A_TP_PMM_TX_MAX_PAGE = common dso_local global i32 0, align 4
@A_TP_PARA_REG3 = common dso_local global i32 0, align 4
@M_TXDATAACKIDX = common dso_local global i64 0, align 8
@A_TP_PMM_RX_BASE = common dso_local global i32 0, align 4
@A_TP_PMM_RX_PAGE_SIZE = common dso_local global i32 0, align 4
@A_TP_PMM_RX_MAX_PAGE = common dso_local global i32 0, align 4
@A_TP_CMM_MM_MAX_PSTRUCT = common dso_local global i32 0, align 4
@TCB_SIZE = common dso_local global i32 0, align 4
@SG_EGR_CNTX_BADDR = common dso_local global i32 0, align 4
@SG_CQ_CONTEXT_BADDR = common dso_local global i32 0, align 4
@A_TP_CMM_TIMER_BASE = common dso_local global i32 0, align 4
@TP_CMM_MM_BASE = common dso_local global i32 0, align 4
@TP_CMM_MM_PS_FLST_BASE = common dso_local global i32 0, align 4
@TP_CMM_MM_RX_FLST_BASE = common dso_local global i32 0, align 4
@TP_CMM_MM_TX_FLST_BASE = common dso_local global i32 0, align 4
@A_CIM_SDRAM_BASE_ADDR = common dso_local global i32 0, align 4
@A_CIM_SDRAM_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.tp_params*)* @partition_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @partition_mem(%struct.TYPE_10__* %0, %struct.tp_params* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.tp_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.tp_params* %1, %struct.tp_params** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = call i32 @t3_mc5_size(i32* %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 22, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp ule i32 %19, 16384
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp ule i32 %23, 65536
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 2, i32* %8, align 4
  store i32 18, i32* %9, align 4
  br label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp ule i32 %27, 262144
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 3, i32* %8, align 4
  store i32 20, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %25
  br label %32

32:                                               ; preds = %31, %21
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = load i32, i32* @A_TP_PMM_SIZE, align 4
  %36 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %37 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %40 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 16
  %43 = or i32 %38, %42
  %44 = call i32 @t3_write_reg(%struct.TYPE_10__* %34, i32 %35, i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = load i32, i32* @A_TP_PMM_TX_BASE, align 4
  %47 = call i32 @t3_write_reg(%struct.TYPE_10__* %45, i32 %46, i32 0)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load i32, i32* @A_TP_PMM_TX_PAGE_SIZE, align 4
  %50 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %51 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @t3_write_reg(%struct.TYPE_10__* %48, i32 %49, i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = load i32, i32* @A_TP_PMM_TX_MAX_PAGE, align 4
  %56 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %57 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @t3_write_reg(%struct.TYPE_10__* %54, i32 %55, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load i32, i32* @A_TP_PARA_REG3, align 4
  %62 = load i64, i64* @M_TXDATAACKIDX, align 8
  %63 = call i32 @V_TXDATAACKIDX(i64 %62)
  %64 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %65 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @fls(i32 %66)
  %68 = sub nsw i64 %67, 12
  %69 = call i32 @V_TXDATAACKIDX(i64 %68)
  %70 = call i32 @t3_set_reg_field(%struct.TYPE_10__* %60, i32 %61, i32 %63, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = load i32, i32* @A_TP_PMM_RX_BASE, align 4
  %73 = call i32 @t3_write_reg(%struct.TYPE_10__* %71, i32 %72, i32 0)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = load i32, i32* @A_TP_PMM_RX_PAGE_SIZE, align 4
  %76 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %77 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @t3_write_reg(%struct.TYPE_10__* %74, i32 %75, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = load i32, i32* @A_TP_PMM_RX_MAX_PAGE, align 4
  %82 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %83 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @t3_write_reg(%struct.TYPE_10__* %80, i32 %81, i32 %84)
  %86 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %87 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %90 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %88, %91
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 48
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = urem i32 %95, 24
  %97 = load i32, i32* %6, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = load i32, i32* @A_TP_CMM_MM_MAX_PSTRUCT, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @t3_write_reg(%struct.TYPE_10__* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @TCB_SIZE, align 4
  %105 = mul i32 %103, %104
  store i32 %105, i32* %5, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @SG_EGR_CNTX_BADDR, align 4
  %109 = call i32 @mem_region(%struct.TYPE_10__* %106, i32 %107, i32 4194304, i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @SG_CQ_CONTEXT_BADDR, align 4
  %113 = call i32 @mem_region(%struct.TYPE_10__* %110, i32 %111, i32 4194304, i32 %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = load i32, i32* @A_TP_CMM_TIMER_BASE, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @V_CMTIMERMAXNUM(i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @t3_write_reg(%struct.TYPE_10__* %114, i32 %115, i32 %119)
  %121 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %122 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %124, %125
  %127 = add nsw i32 %126, 4194304
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = mul i32 %132, 64
  %134 = load i32, i32* @TP_CMM_MM_BASE, align 4
  %135 = call i32 @mem_region(%struct.TYPE_10__* %130, i32 %131, i32 %133, i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = udiv i32 %138, 24
  %140 = mul i32 64, %139
  %141 = load i32, i32* @TP_CMM_MM_PS_FLST_BASE, align 4
  %142 = call i32 @mem_region(%struct.TYPE_10__* %136, i32 %137, i32 %140, i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %146 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = udiv i32 %147, 24
  %149 = mul i32 64, %148
  %150 = load i32, i32* @TP_CMM_MM_RX_FLST_BASE, align 4
  %151 = call i32 @mem_region(%struct.TYPE_10__* %143, i32 %144, i32 %149, i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %155 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = udiv i32 %156, 24
  %158 = mul i32 64, %157
  %159 = load i32, i32* @TP_CMM_MM_TX_FLST_BASE, align 4
  %160 = call i32 @mem_region(%struct.TYPE_10__* %152, i32 %153, i32 %158, i32 %159)
  %161 = load i32, i32* %5, align 4
  %162 = add i32 %161, 4095
  %163 = and i32 %162, -4096
  store i32 %163, i32* %5, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = load i32, i32* @A_CIM_SDRAM_BASE_ADDR, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @t3_write_reg(%struct.TYPE_10__* %164, i32 %165, i32 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = load i32, i32* @A_CIM_SDRAM_ADDR_SIZE, align 4
  %170 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %171 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %5, align 4
  %174 = sub i32 %172, %173
  %175 = call i32 @t3_write_reg(%struct.TYPE_10__* %168, i32 %169, i32 %174)
  %176 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %177 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %5, align 4
  %180 = sub i32 %178, %179
  %181 = sub i32 %180, 3145728
  %182 = udiv i32 %181, 3072
  %183 = sub i32 %182, 32
  store i32 %183, i32* %7, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = call i32 @t3_mc5_size(i32* %185)
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sub i32 %186, %191
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sub i32 %192, %197
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = sub i32 %198, %203
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %5, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %33
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* %7, align 4
  %211 = sub i32 %209, %210
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add i32 %216, %211
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %208, %33
  ret void
}

declare dso_local i32 @t3_mc5_size(i32*) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @V_TXDATAACKIDX(i64) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @mem_region(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @V_CMTIMERMAXNUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
