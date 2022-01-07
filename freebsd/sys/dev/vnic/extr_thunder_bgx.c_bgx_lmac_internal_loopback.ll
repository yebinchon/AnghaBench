; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_internal_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_lmac_internal_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.lmac* }
%struct.lmac = type { i64 }

@bgx_vnic = common dso_local global %struct.bgx** null, align 8
@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4
@BGX_GMP_PCS_MRX_CTL = common dso_local global i32 0, align 4
@PCS_MRX_CTL_LOOPBACK1 = common dso_local global i32 0, align 4
@BGX_SPUX_CONTROL1 = common dso_local global i32 0, align 4
@SPU_CTL_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_lmac_internal_loopback(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bgx*, align 8
  %10 = alloca %struct.lmac*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MAX_BGX_PER_CN88XX, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bgx*, %struct.bgx** %12, i64 %18
  %20 = load %struct.bgx*, %struct.bgx** %19, align 8
  store %struct.bgx* %20, %struct.bgx** %9, align 8
  %21 = load %struct.bgx*, %struct.bgx** %9, align 8
  %22 = icmp eq %struct.bgx* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %79

24:                                               ; preds = %4
  %25 = load %struct.bgx*, %struct.bgx** %9, align 8
  %26 = getelementptr inbounds %struct.bgx, %struct.bgx* %25, i32 0, i32 0
  %27 = load %struct.lmac*, %struct.lmac** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lmac, %struct.lmac* %27, i64 %29
  store %struct.lmac* %30, %struct.lmac** %10, align 8
  %31 = load %struct.lmac*, %struct.lmac** %10, align 8
  %32 = getelementptr inbounds %struct.lmac, %struct.lmac* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %24
  %36 = load %struct.bgx*, %struct.bgx** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %39 = call i32 @bgx_reg_read(%struct.bgx* %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @PCS_MRX_CTL_LOOPBACK1, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %51

46:                                               ; preds = %35
  %47 = load i32, i32* @PCS_MRX_CTL_LOOPBACK1, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.bgx*, %struct.bgx** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @bgx_reg_write(%struct.bgx* %52, i32 %53, i32 %54, i32 %55)
  br label %79

57:                                               ; preds = %24
  %58 = load %struct.bgx*, %struct.bgx** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %61 = call i32 @bgx_reg_read(%struct.bgx* %58, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @SPU_CTL_LOOPBACK, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @SPU_CTL_LOOPBACK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.bgx*, %struct.bgx** %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @bgx_reg_write(%struct.bgx* %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %23, %73, %51
  ret void
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
