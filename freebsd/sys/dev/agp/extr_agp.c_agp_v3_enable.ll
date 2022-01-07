; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_v3_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_v3_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AGP_STATUS = common dso_local global i64 0, align 8
@AGP_MODE_V3_RATE_8x = common dso_local global i32 0, align 4
@AGP_MODE_V3_RATE_4x = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Setting AGP v3 mode %d\0A\00", align 1
@AGP_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @agp_v3_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_v3_enable(i32 %0, i32 %1, i64 %2) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @agp_find_caps(i32 %17)
  %19 = load i64, i64* @AGP_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @pci_read_config(i32 %16, i64 %20, i32 4)
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @agp_find_caps(i32 %23)
  %25 = load i64, i64* @AGP_STATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @pci_read_config(i32 %22, i64 %26, i32 4)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @AGP_MODE_GET_RQ(i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @AGP_MODE_GET_RQ(i64 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @AGP_MODE_GET_RQ(i64 %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %3
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @AGP_MODE_GET_RQ(i64 %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @AGP_MODE_GET_RQ(i64 %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @AGP_MODE_GET_ARQSZ(i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @AGP_MODE_GET_ARQSZ(i64 %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @AGP_MODE_GET_ARQSZ(i64 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @AGP_MODE_GET_ARQSZ(i64 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @AGP_MODE_GET_ARQSZ(i64 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @AGP_MODE_GET_CAL(i64 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @AGP_MODE_GET_CAL(i64 %66)
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @AGP_MODE_GET_CAL(i64 %71)
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %70, %63
  store i32 1, i32* %11, align 4
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @AGP_MODE_GET_FW(i64 %74)
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @AGP_MODE_GET_FW(i64 %76)
  %78 = and i32 %75, %77
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @AGP_MODE_GET_FW(i64 %79)
  %81 = and i32 %78, %80
  store i32 %81, i32* %12, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @AGP_MODE_GET_RATE(i64 %82)
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @AGP_MODE_GET_RATE(i64 %84)
  %86 = and i32 %83, %85
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @AGP_MODE_GET_RATE(i64 %87)
  %89 = and i32 %86, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @AGP_MODE_V3_RATE_8x, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %73
  %95 = load i32, i32* @AGP_MODE_V3_RATE_8x, align 4
  store i32 %95, i32* %13, align 4
  br label %98

96:                                               ; preds = %73
  %97 = load i32, i32* @AGP_MODE_V3_RATE_4x, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i64, i64* @bootverbose, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %103, 4
  %105 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @agp_find_caps(i32 %108)
  %110 = load i64, i64* @AGP_COMMAND, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @pci_write_config(i32 %107, i64 %111, i64 0, i32 4)
  store i64 0, i64* %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i64 @AGP_MODE_SET_RQ(i32 0, i32 %113)
  store i64 %114, i64* %9, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i64 @AGP_MODE_SET_ARQSZ(i64 %115, i32 %116)
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i64 @AGP_MODE_SET_CAL(i64 %118, i32 %119)
  store i64 %120, i64* %9, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @AGP_MODE_SET_SBA(i64 %121, i32 %122)
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i64 @AGP_MODE_SET_FW(i64 %124, i32 %125)
  store i64 %126, i64* %9, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i64 @AGP_MODE_SET_RATE(i64 %127, i32 %128)
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @AGP_MODE_SET_MODE_3(i64 %130, i32 1)
  store i64 %131, i64* %9, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i64 @AGP_MODE_SET_AGP(i64 %132, i32 1)
  store i64 %133, i64* %9, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i64 @agp_find_caps(i32 %135)
  %137 = load i64, i64* @AGP_COMMAND, align 8
  %138 = add nsw i64 %136, %137
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @pci_write_config(i32 %134, i64 %138, i64 %139, i32 4)
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i64 @agp_find_caps(i32 %142)
  %144 = load i64, i64* @AGP_COMMAND, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @pci_write_config(i32 %141, i64 %145, i64 %146, i32 4)
  ret i32 0
}

declare dso_local i64 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @AGP_MODE_GET_RQ(i64) #1

declare dso_local i32 @AGP_MODE_GET_ARQSZ(i64) #1

declare dso_local i32 @AGP_MODE_GET_CAL(i64) #1

declare dso_local i32 @AGP_MODE_GET_FW(i64) #1

declare dso_local i32 @AGP_MODE_GET_RATE(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_RQ(i32, i32) #1

declare dso_local i64 @AGP_MODE_SET_ARQSZ(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_CAL(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_SBA(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_FW(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_RATE(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_MODE_3(i64, i32) #1

declare dso_local i64 @AGP_MODE_SET_AGP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
