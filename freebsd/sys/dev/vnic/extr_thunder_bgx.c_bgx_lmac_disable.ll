; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i64, i32, %struct.lmac* }
%struct.lmac = type { i32*, i32, i32, i32 }

@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@BGX_MODE_XFI = common dso_local global i64 0, align 8
@BGX_MODE_XLAUI = common dso_local global i64 0, align 8
@BGX_MODE_40G_KR = common dso_local global i64 0, align 8
@BGX_MODE_10G_KR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"LMAC%d missing interface to PHY\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"LMAC%d could not disconnect PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*, i64)* @bgx_lmac_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_lmac_disable(%struct.bgx* %0, i64 %1) #0 {
  %3 = alloca %struct.bgx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lmac*, align 8
  %6 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bgx*, %struct.bgx** %3, align 8
  %8 = getelementptr inbounds %struct.bgx, %struct.bgx* %7, i32 0, i32 2
  %9 = load %struct.lmac*, %struct.lmac** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.lmac, %struct.lmac* %9, i64 %10
  store %struct.lmac* %11, %struct.lmac** %5, align 8
  %12 = load %struct.lmac*, %struct.lmac** %5, align 8
  %13 = getelementptr inbounds %struct.lmac, %struct.lmac* %12, i32 0, i32 3
  %14 = call i32 @callout_drain(i32* %13)
  %15 = load %struct.lmac*, %struct.lmac** %5, align 8
  %16 = getelementptr inbounds %struct.lmac, %struct.lmac* %15, i32 0, i32 2
  %17 = call i32 @mtx_destroy(i32* %16)
  %18 = load %struct.bgx*, %struct.bgx** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @BGX_CMRX_CFG, align 4
  %21 = call i32 @bgx_reg_read(%struct.bgx* %18, i64 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -32769
  store i32 %23, i32* %6, align 4
  %24 = load %struct.bgx*, %struct.bgx** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @BGX_CMRX_CFG, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bgx_reg_write(%struct.bgx* %24, i64 %25, i32 %26, i32 %27)
  %29 = load %struct.bgx*, %struct.bgx** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @bgx_flush_dmac_addrs(%struct.bgx* %29, i64 %30)
  %32 = load %struct.bgx*, %struct.bgx** %3, align 8
  %33 = getelementptr inbounds %struct.bgx, %struct.bgx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BGX_MODE_XFI, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %2
  %38 = load %struct.bgx*, %struct.bgx** %3, align 8
  %39 = getelementptr inbounds %struct.bgx, %struct.bgx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BGX_MODE_XLAUI, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %37
  %44 = load %struct.bgx*, %struct.bgx** %3, align 8
  %45 = getelementptr inbounds %struct.bgx, %struct.bgx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BGX_MODE_40G_KR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %43
  %50 = load %struct.bgx*, %struct.bgx** %3, align 8
  %51 = getelementptr inbounds %struct.bgx, %struct.bgx* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BGX_MODE_10G_KR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %49
  %56 = load %struct.lmac*, %struct.lmac** %5, align 8
  %57 = getelementptr inbounds %struct.lmac, %struct.lmac* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.bgx*, %struct.bgx** %3, align 8
  %62 = getelementptr inbounds %struct.bgx, %struct.bgx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %85

66:                                               ; preds = %55
  %67 = load %struct.lmac*, %struct.lmac** %5, align 8
  %68 = getelementptr inbounds %struct.lmac, %struct.lmac* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.lmac*, %struct.lmac** %5, align 8
  %71 = getelementptr inbounds %struct.lmac, %struct.lmac* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i64 @LMAC_PHY_DISCONNECT(i32* %69, i32 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.bgx*, %struct.bgx** %3, align 8
  %78 = getelementptr inbounds %struct.bgx, %struct.bgx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  br label %85

82:                                               ; preds = %66
  %83 = load %struct.lmac*, %struct.lmac** %5, align 8
  %84 = getelementptr inbounds %struct.lmac, %struct.lmac* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %60, %76, %82, %49, %43, %37, %2
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i64, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i64, i32, i32) #1

declare dso_local i32 @bgx_flush_dmac_addrs(%struct.bgx*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @LMAC_PHY_DISCONNECT(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
