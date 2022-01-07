; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_v2_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_v2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AGP_STATUS = common dso_local global i64 0, align 8
@AGP_MODE_V2_RATE_4x = common dso_local global i32 0, align 4
@AGP_MODE_V2_RATE_2x = common dso_local global i32 0, align 4
@AGP_MODE_V2_RATE_1x = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Setting AGP v2 mode %d\0A\00", align 1
@AGP_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @agp_v2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_v2_enable(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @agp_find_caps(i32 %15)
  %17 = load i64, i64* @AGP_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @pci_read_config(i32 %14, i64 %18, i32 4)
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @agp_find_caps(i32 %21)
  %23 = load i64, i64* @AGP_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @pci_read_config(i32 %20, i64 %24, i32 4)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @AGP_MODE_GET_RQ(i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @AGP_MODE_GET_RQ(i64 %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @AGP_MODE_GET_RQ(i64 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %3
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @AGP_MODE_GET_RQ(i64 %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @AGP_MODE_GET_RQ(i64 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @AGP_MODE_GET_SBA(i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @AGP_MODE_GET_SBA(i64 %46)
  %48 = and i32 %45, %47
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @AGP_MODE_GET_SBA(i64 %49)
  %51 = and i32 %48, %50
  store i32 %51, i32* %11, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @AGP_MODE_GET_FW(i64 %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @AGP_MODE_GET_FW(i64 %54)
  %56 = and i32 %53, %55
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @AGP_MODE_GET_FW(i64 %57)
  %59 = and i32 %56, %58
  store i32 %59, i32* %12, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @AGP_MODE_GET_RATE(i64 %60)
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @AGP_MODE_GET_RATE(i64 %62)
  %64 = and i32 %61, %63
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @AGP_MODE_GET_RATE(i64 %65)
  %67 = and i32 %64, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @AGP_MODE_V2_RATE_4x, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %43
  %73 = load i32, i32* @AGP_MODE_V2_RATE_4x, align 4
  store i32 %73, i32* %13, align 4
  br label %84

74:                                               ; preds = %43
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @AGP_MODE_V2_RATE_2x, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @AGP_MODE_V2_RATE_2x, align 4
  store i32 %80, i32* %13, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @AGP_MODE_V2_RATE_1x, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i64, i64* @bootverbose, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  store i64 0, i64* %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @AGP_MODE_SET_RQ(i32 0, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @AGP_MODE_SET_SBA(i64 %94, i32 %95)
  store i64 %96, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @AGP_MODE_SET_FW(i64 %97, i32 %98)
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i64 @AGP_MODE_SET_RATE(i64 %100, i32 %101)
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i64 @AGP_MODE_SET_AGP(i64 %103, i32 1)
  store i64 %104, i64* %9, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i64 @agp_find_caps(i32 %106)
  %108 = load i64, i64* @AGP_COMMAND, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @pci_write_config(i32 %105, i64 %109, i64 %110, i32 4)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @agp_find_caps(i32 %113)
  %115 = load i64, i64* @AGP_COMMAND, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @pci_write_config(i32 %112, i64 %116, i64 %117, i32 4)
  ret i32 0
}

declare dso_local i64 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @AGP_MODE_GET_RQ(i64) #1

declare dso_local i32 @AGP_MODE_GET_SBA(i64) #1

declare dso_local i32 @AGP_MODE_GET_FW(i64) #1

declare dso_local i32 @AGP_MODE_GET_RATE(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @AGP_MODE_SET_RQ(i32, i32) #1

declare dso_local i64 @AGP_MODE_SET_SBA(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_FW(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_RATE(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_AGP(i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
