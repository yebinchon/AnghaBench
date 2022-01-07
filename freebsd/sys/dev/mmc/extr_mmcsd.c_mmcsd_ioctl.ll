; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcsd_part = type { i32 }
%struct.thread = type { i32 }
%struct.mmc_ioc_cmd = type { i32 }
%struct.mmc_ioc_multi_cmd = type { i32, i64 }

@FREAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@PRIV_DRIVER = common dso_local global i32 0, align 4
@MMC_IOC_MAX_CMDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmcsd_part*, i32, i8*, i32, %struct.thread*)* @mmcsd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_ioctl(%struct.mmcsd_part* %0, i32 %1, i8* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmcsd_part*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.mmc_ioc_cmd*, align 8
  %13 = alloca %struct.mmc_ioc_multi_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mmcsd_part* %0, %struct.mmcsd_part** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @FREAD, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @EBADF, align 4
  store i32 %23, i32* %6, align 4
  br label %107

24:                                               ; preds = %5
  %25 = load %struct.thread*, %struct.thread** %11, align 8
  %26 = load i32, i32* @PRIV_DRIVER, align 4
  %27 = call i32 @priv_check(%struct.thread* %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  br label %107

32:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %103 [
    i32 129, label %34
    i32 128, label %41
  ]

34:                                               ; preds = %32
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to %struct.mmc_ioc_cmd*
  store %struct.mmc_ioc_cmd* %36, %struct.mmc_ioc_cmd** %12, align 8
  %37 = load %struct.mmcsd_part*, %struct.mmcsd_part** %7, align 8
  %38 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @mmcsd_ioctl_cmd(%struct.mmcsd_part* %37, %struct.mmc_ioc_cmd* %38, i32 %39)
  store i32 %40, i32* %15, align 4
  br label %105

41:                                               ; preds = %32
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to %struct.mmc_ioc_multi_cmd*
  store %struct.mmc_ioc_multi_cmd* %43, %struct.mmc_ioc_multi_cmd** %13, align 8
  %44 = load %struct.mmc_ioc_multi_cmd*, %struct.mmc_ioc_multi_cmd** %13, align 8
  %45 = getelementptr inbounds %struct.mmc_ioc_multi_cmd, %struct.mmc_ioc_multi_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %105

49:                                               ; preds = %41
  %50 = load %struct.mmc_ioc_multi_cmd*, %struct.mmc_ioc_multi_cmd** %13, align 8
  %51 = getelementptr inbounds %struct.mmc_ioc_multi_cmd, %struct.mmc_ioc_multi_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MMC_IOC_MAX_CMDS, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %6, align 4
  br label %107

57:                                               ; preds = %49
  %58 = load %struct.mmc_ioc_multi_cmd*, %struct.mmc_ioc_multi_cmd** %13, align 8
  %59 = getelementptr inbounds %struct.mmc_ioc_multi_cmd, %struct.mmc_ioc_multi_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @M_TEMP, align 4
  %67 = load i32, i32* @M_WAITOK, align 4
  %68 = call %struct.mmc_ioc_cmd* @malloc(i32 %65, i32 %66, i32 %67)
  store %struct.mmc_ioc_cmd* %68, %struct.mmc_ioc_cmd** %12, align 8
  %69 = load %struct.mmc_ioc_multi_cmd*, %struct.mmc_ioc_multi_cmd** %13, align 8
  %70 = getelementptr inbounds %struct.mmc_ioc_multi_cmd, %struct.mmc_ioc_multi_cmd* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %12, align 8
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @copyin(i8* %72, %struct.mmc_ioc_cmd* %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %95, %78
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load %struct.mmcsd_part*, %struct.mmcsd_part** %7, align 8
  %85 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %12, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %85, i64 %87
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @mmcsd_ioctl_cmd(%struct.mmcsd_part* %84, %struct.mmc_ioc_cmd* %88, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %98

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %79

98:                                               ; preds = %93, %79
  br label %99

99:                                               ; preds = %98, %57
  %100 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %12, align 8
  %101 = load i32, i32* @M_TEMP, align 4
  %102 = call i32 @free(%struct.mmc_ioc_cmd* %100, i32 %101)
  br label %105

103:                                              ; preds = %32
  %104 = load i32, i32* @ENOIOCTL, align 4
  store i32 %104, i32* %6, align 4
  br label %107

105:                                              ; preds = %99, %48, %34
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %103, %55, %30, %22
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @mmcsd_ioctl_cmd(%struct.mmcsd_part*, %struct.mmc_ioc_cmd*, i32) #1

declare dso_local %struct.mmc_ioc_cmd* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i8*, %struct.mmc_ioc_cmd*, i32) #1

declare dso_local i32 @free(%struct.mmc_ioc_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
