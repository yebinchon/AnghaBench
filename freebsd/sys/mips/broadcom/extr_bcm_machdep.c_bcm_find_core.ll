; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_bcm_find_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_bcm_find_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bhnd_core_match = type { i32 }
%struct.bhnd_core_info = type { i32 }

@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@UINTPTR_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"core address %#jx overflows native address width\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_platform*, %struct.bhnd_core_match*, i64, %struct.bhnd_core_info*, i64*)* @bcm_find_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_find_core(%struct.bcm_platform* %0, %struct.bhnd_core_match* %1, i64 %2, %struct.bhnd_core_info* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm_platform*, align 8
  %8 = alloca %struct.bhnd_core_match*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bhnd_core_info*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.bcm_platform* %0, %struct.bcm_platform** %7, align 8
  store %struct.bhnd_core_match* %1, %struct.bhnd_core_match** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.bhnd_core_info* %3, %struct.bhnd_core_info** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %40, %5
  %17 = load i64, i64* %15, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.bcm_platform*, %struct.bcm_platform** %7, align 8
  %22 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %8, align 8
  %25 = load i64, i64* %15, align 8
  %26 = getelementptr inbounds %struct.bhnd_core_match, %struct.bhnd_core_match* %24, i64 %25
  %27 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %28 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %10, align 8
  %29 = call i32 @bhnd_erom_lookup_core_addr(i32* %23, %struct.bhnd_core_match* %26, i32 %27, i32 0, i32 0, %struct.bhnd_core_info* %28, i64* %12, i32* %13)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %43

33:                                               ; preds = %20
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %62

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %15, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %15, align 8
  br label %16

43:                                               ; preds = %32, %16
  %44 = load i64*, i64** %11, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @UINTPTR_MAX, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i64, i64* %12, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @BCM_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ERANGE, align 4
  store i32 %54, i32* %6, align 4
  br label %62

55:                                               ; preds = %46, %43
  %56 = load i64*, i64** %11, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* %12, align 8
  %60 = load i64*, i64** %11, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %50, %37
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @bhnd_erom_lookup_core_addr(i32*, %struct.bhnd_core_match*, i32, i32, i32, %struct.bhnd_core_info*, i64*, i32*) #1

declare dso_local i32 @BCM_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
