; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_limits.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_iscsi = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ctl_iscsi_limits_params = type { i32, i32, i32, i32, i32 }

@CTL_ISCSI_LIMITS = common dso_local global i32 0, align 4
@ctl_fd = common dso_local global i32 0, align 4
@CTL_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"error issuing CTL_ISCSI ioctl; dropping connection\00", align 1
@CTL_ISCSI_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"error returned from CTL iSCSI limits request: %s; dropping connection\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"Kernel limits for offload \22%s\22 are MaxRecvDataSegment=%d, max_send_dsl=%d, MaxBurstLength=%d, FirstBurstLength=%d\00", align 1
@.str.3 = private unnamed_addr constant [97 x i8] c"Kernel limits are MaxRecvDataSegment=%d, max_send_dsl=%d, MaxBurstLength=%d, FirstBurstLength=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_limits(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ctl_iscsi, align 8
  %12 = alloca %struct.ctl_iscsi_limits_params*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = call i32 @bzero(%struct.ctl_iscsi* %11, i32 24)
  %14 = load i32, i32* @CTL_ISCSI_LIMITS, align 4
  %15 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %11, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %11, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to %struct.ctl_iscsi_limits_params*
  store %struct.ctl_iscsi_limits_params* %18, %struct.ctl_iscsi_limits_params** %12, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %23 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlcpy(i32 %24, i8* %25, i32 4)
  br label %27

27:                                               ; preds = %21, %5
  %28 = load i32, i32* @ctl_fd, align 4
  %29 = load i32, i32* @CTL_ISCSI, align 4
  %30 = call i32 @ioctl(i32 %28, i32 %29, %struct.ctl_iscsi* %11)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %11, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CTL_ISCSI_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ctl_iscsi, %struct.ctl_iscsi* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %45 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %50 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %54 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %43
  %58 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %59 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %64 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %69 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %74 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %79 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.ctl_iscsi_limits_params*, %struct.ctl_iscsi_limits_params** %12, align 8
  %84 = getelementptr inbounds %struct.ctl_iscsi_limits_params, %struct.ctl_iscsi_limits_params* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %10, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %87
  %98 = load i8*, i8** %6, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i8*, i8** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i8* %101, i32 %103, i32 %105, i32 %107, i32 %109)
  br label %121

111:                                              ; preds = %97
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %115, i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %111, %100
  ret void
}

declare dso_local i32 @bzero(%struct.ctl_iscsi*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ctl_iscsi*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @log_errx(i32, i8*, i32) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
