; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_add_dmac_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_add_dmac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4
@bgx_vnic = common dso_local global %struct.bgx** null, align 8
@.str = private unnamed_addr constant [51 x i8] c"BGX%d not yet initialized, ignoring DMAC addition\0A\00", align 1
@MAX_DMAC_PER_LMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Max DMAC filters for LMAC%d reached, ignoring\0A\00", align 1
@MAX_DMAC_PER_LMAC_TNS_BYPASS_MODE = common dso_local global i32 0, align 4
@BGX_CMR_RX_DMACX_CAM = common dso_local global i64 0, align 8
@BGX_CMRX_RX_DMAC_CTL = common dso_local global i64 0, align 8
@CAM_ACCEPT = common dso_local global i32 0, align 4
@MCAST_MODE_CAM_FILTER = common dso_local global i32 0, align 4
@BCAST_ACCEPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_add_dmac_addr(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bgx*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_BGX_PER_CN88XX, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bgx*, %struct.bgx** %16, i64 %18
  %20 = load %struct.bgx*, %struct.bgx** %19, align 8
  store %struct.bgx* %20, %struct.bgx** %10, align 8
  %21 = load %struct.bgx*, %struct.bgx** %10, align 8
  %22 = icmp eq %struct.bgx* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %113

26:                                               ; preds = %4
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %27, 281474976710656
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = shl i64 %30, 49
  %32 = or i64 %28, %31
  store i64 %32, i64* %5, align 8
  %33 = load %struct.bgx*, %struct.bgx** %10, align 8
  %34 = getelementptr inbounds %struct.bgx, %struct.bgx* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MAX_DMAC_PER_LMAC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load %struct.bgx*, %struct.bgx** %10, align 8
  %45 = getelementptr inbounds %struct.bgx, %struct.bgx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %113

49:                                               ; preds = %26
  %50 = load %struct.bgx*, %struct.bgx** %10, align 8
  %51 = getelementptr inbounds %struct.bgx, %struct.bgx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX_DMAC_PER_LMAC_TNS_BYPASS_MODE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.bgx*, %struct.bgx** %10, align 8
  %62 = getelementptr inbounds %struct.bgx, %struct.bgx* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %49
  %69 = load %struct.bgx*, %struct.bgx** %10, align 8
  %70 = getelementptr inbounds %struct.bgx, %struct.bgx* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @MAX_DMAC_PER_LMAC, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = add i64 %78, %83
  store i64 %84, i64* %9, align 8
  %85 = load %struct.bgx*, %struct.bgx** %10, align 8
  %86 = load i64, i64* @BGX_CMR_RX_DMACX_CAM, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %86, %87
  %89 = load i64, i64* %5, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @bgx_reg_write(%struct.bgx* %85, i32 0, i64 %88, i32 %90)
  %92 = load %struct.bgx*, %struct.bgx** %10, align 8
  %93 = getelementptr inbounds %struct.bgx, %struct.bgx* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.bgx*, %struct.bgx** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i64, i64* @BGX_CMRX_RX_DMAC_CTL, align 8
  %104 = load i32, i32* @CAM_ACCEPT, align 4
  %105 = shl i32 %104, 3
  %106 = load i32, i32* @MCAST_MODE_CAM_FILTER, align 4
  %107 = shl i32 %106, 1
  %108 = or i32 %105, %107
  %109 = load i32, i32* @BCAST_ACCEPT, align 4
  %110 = shl i32 %109, 0
  %111 = or i32 %108, %110
  %112 = call i32 @bgx_reg_write(%struct.bgx* %101, i32 %102, i64 %103, i32 %111)
  br label %113

113:                                              ; preds = %68, %43, %23
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
