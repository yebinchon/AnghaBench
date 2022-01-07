; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_iic_helper.c_iic_dp_aux_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_iic_helper.c_iic_dp_aux_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32, i32* }

@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"dp_aux_xfer return %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @iic_dp_aux_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_dp_aux_xfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %102, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %105

17:                                               ; preds = %13
  %18 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %18, i64 %20
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %24, i64 %26
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %30, i64 %32
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IIC_M_RD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %41, i64 %43
  %45 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 1
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @iic_dp_aux_address(i32 %40, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %17
  br label %105

53:                                               ; preds = %17
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @iic_dp_aux_get_byte(i32 %62, i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %75

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %57

75:                                               ; preds = %70, %57
  br label %97

76:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %93, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @iic_dp_aux_put_byte(i32 %82, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %96

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %77

96:                                               ; preds = %91, %77
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %105

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %13

105:                                              ; preds = %100, %52, %13
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @iic_dp_aux_stop(i32 %106, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 0, %111
  ret i32 %112
}

declare dso_local i32 @iic_dp_aux_address(i32, i32, i32) #1

declare dso_local i32 @iic_dp_aux_get_byte(i32, i32*) #1

declare dso_local i32 @iic_dp_aux_put_byte(i32, i32) #1

declare dso_local i32 @iic_dp_aux_stop(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
