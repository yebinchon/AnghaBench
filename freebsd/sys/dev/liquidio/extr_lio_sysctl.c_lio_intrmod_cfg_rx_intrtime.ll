; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_intrmod_cfg_rx_intrtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_intrmod_cfg_rx_intrtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.octeon_device* }
%struct.octeon_device = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_intrmod_cfg = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, %struct.octeon_intrmod_cfg*, i8*)* @lio_intrmod_cfg_rx_intrtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_intrmod_cfg_rx_intrtime(%struct.lio* %0, %struct.octeon_intrmod_cfg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio*, align 8
  %6 = alloca %struct.octeon_intrmod_cfg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %5, align 8
  store %struct.octeon_intrmod_cfg* %1, %struct.octeon_intrmod_cfg** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.lio*, %struct.lio** %5, align 8
  %13 = getelementptr inbounds %struct.lio, %struct.lio* %12, i32 0, i32 0
  %14 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  store %struct.octeon_device* %14, %struct.octeon_device** %8, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %64 [
    i32 128, label %18
  ]

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.octeon_intrmod_cfg*, %struct.octeon_intrmod_cfg** %6, align 8
  %23 = getelementptr inbounds %struct.octeon_intrmod_cfg, %struct.octeon_intrmod_cfg* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @lio_cn23xx_pf_get_oq_ticks(%struct.octeon_device* %28, i8* %29)
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %54, %27
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %39 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(i32 %45)
  %47 = load %struct.octeon_intrmod_cfg*, %struct.octeon_intrmod_cfg** %6, align 8
  %48 = getelementptr inbounds %struct.octeon_intrmod_cfg, %struct.octeon_intrmod_cfg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %50, 32
  %52 = or i32 %49, %51
  %53 = call i32 @lio_write_csr64(%struct.octeon_device* %44, i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.octeon_intrmod_cfg*, %struct.octeon_intrmod_cfg** %6, align 8
  %60 = getelementptr inbounds %struct.octeon_intrmod_cfg, %struct.octeon_intrmod_cfg* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %63 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %66

64:                                               ; preds = %3
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %64
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @lio_cn23xx_pf_get_oq_ticks(%struct.octeon_device*, i8*) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @LIO_CN23XX_SLI_OQ_PKT_INT_LEVELS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
