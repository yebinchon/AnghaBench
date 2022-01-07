; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bhnd_nexus.c_bhnd_nexus_is_hw_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bhnd_nexus.c_bhnd_nexus_is_hw_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { %struct.bhnd_chipid }
%struct.bhnd_chipid = type { i64, i64 }

@BHND_CHIPID_BCM4706 = common dso_local global i64 0, align 8
@BHND_PKGID_BCM4706L = common dso_local global i64 0, align 8
@BHND_COREID_4706_GMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bhnd_nexus_is_hw_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nexus_is_hw_disabled(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_platform*, align 8
  %7 = alloca %struct.bhnd_chipid*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call %struct.bcm_platform* (...) @bcm_get_platform()
  store %struct.bcm_platform* %8, %struct.bcm_platform** %6, align 8
  %9 = load %struct.bcm_platform*, %struct.bcm_platform** %6, align 8
  %10 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %9, i32 0, i32 0
  store %struct.bhnd_chipid* %10, %struct.bhnd_chipid** %7, align 8
  %11 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %7, align 8
  %12 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BHND_CHIPID_BCM4706, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %7, align 8
  %18 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BHND_PKGID_BCM4706L, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @bhnd_get_device(i32 %23)
  %25 = load i64, i64* @BHND_COREID_4706_GMAC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @bhnd_get_core_unit(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %27, %22, %16, %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.bcm_platform* @bcm_get_platform(...) #1

declare dso_local i64 @bhnd_get_device(i32) #1

declare dso_local i64 @bhnd_get_core_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
