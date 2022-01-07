; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_config_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_config_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32* }
%struct.set_loopback = type { i64, i32 }

@MAX_LMAC = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*, %struct.set_loopback*)* @nic_config_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_config_loopback(%struct.nicpf* %0, %struct.set_loopback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca %struct.set_loopback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %4, align 8
  store %struct.set_loopback* %1, %struct.set_loopback** %5, align 8
  %8 = load %struct.set_loopback*, %struct.set_loopback** %5, align 8
  %9 = getelementptr inbounds %struct.set_loopback, %struct.set_loopback* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MAX_LMAC, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %17 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.set_loopback*, %struct.set_loopback** %5, align 8
  %20 = getelementptr inbounds %struct.set_loopback, %struct.set_loopback* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %26 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.set_loopback*, %struct.set_loopback** %5, align 8
  %29 = getelementptr inbounds %struct.set_loopback, %struct.set_loopback* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %35 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.set_loopback*, %struct.set_loopback** %5, align 8
  %40 = getelementptr inbounds %struct.set_loopback, %struct.set_loopback* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bgx_lmac_internal_loopback(i32 %36, i32 %37, i32 %38, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %15, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @bgx_lmac_internal_loopback(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
