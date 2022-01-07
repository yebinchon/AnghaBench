; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_do_probe_ddc_edid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_do_probe_ddc_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i8*, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@DDC_SEGMENT_ADDR = common dso_local global i32 0, align 4
@DDC_ADDR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"iicbus_transfer countdown %d error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @drm_do_probe_ddc_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_do_probe_ddc_edid(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x %struct.iic_msg], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EDID_LENGTH, align 4
  %17 = mul nsw i32 %15, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %9, align 1
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 1
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %10, align 1
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 3, i32 2
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %11, align 1
  store i32 5, i32* %13, align 4
  br label %28

28:                                               ; preds = %75, %4
  %29 = getelementptr inbounds [3 x %struct.iic_msg], [3 x %struct.iic_msg]* %14, i64 0, i64 0
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %29, i32 0, i32 0
  %31 = load i32, i32* @DDC_SEGMENT_ADDR, align 4
  %32 = shl i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %29, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %29, i32 0, i32 2
  store i8* %10, i8** %34, align 8
  %35 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %29, i32 0, i32 3
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %29, i64 1
  %37 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 0
  %38 = load i32, i32* @DDC_ADDR, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 2
  store i8* %9, i8** %41, align 8
  %42 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i64 1
  %44 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %43, i32 0, i32 0
  %45 = load i32, i32* @DDC_ADDR, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %43, i32 0, i32 1
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %43, i32 0, i32 2
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %49, align 8
  %51 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %43, i32 0, i32 3
  %52 = load i32, i32* @IIC_M_RD, align 4
  store i32 %52, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i8, i8* %11, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 3, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x %struct.iic_msg], [3 x %struct.iic_msg]* %14, i64 0, i64 %57
  %59 = load i8, i8* %11, align 1
  %60 = call i32 @iicbus_transfer(i32 %53, %struct.iic_msg* %58, i8 zeroext %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %28
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %28
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ false, %68 ], [ %74, %71 ]
  br i1 %76, label %28, label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 0, i32 -1
  ret i32 %81
}

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i8 zeroext) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
