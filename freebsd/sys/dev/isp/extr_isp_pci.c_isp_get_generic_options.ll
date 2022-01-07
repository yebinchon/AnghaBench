; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_get_generic_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_pci.c_isp_get_generic_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"fwload_disable\00", align 1
@ISP_CFG_NORELOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ignore_nvram\00", align 1
@ISP_CFG_NONVRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@ISP_LOGWARN = common dso_local global i32 0, align 4
@ISP_LOGERR = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@ISP_LOGCONFIG = common dso_local global i32 0, align 4
@ISP_LOGINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"vports\00", align 1
@isp_nvports = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"quickboot_time\00", align 1
@isp_quickboot_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @isp_get_generic_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_get_generic_options(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_name(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_unit(i32 %8)
  %10 = call i64 @resource_int_value(i32 %7, i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @ISP_CFG_NORELOAD, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %12, %2
  store i32 0, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_name(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_get_unit(i32 %24)
  %26 = call i64 @resource_int_value(i32 %23, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @ISP_CFG_NONVRAM, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %28, %21
  store i32 0, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_get_name(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_get_unit(i32 %40)
  %42 = call i64 @resource_int_value(i32 %39, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load i32, i32* @ISP_LOGWARN, align 4
  %51 = load i32, i32* @ISP_LOGERR, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i64, i64* @bootverbose, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* @ISP_LOGCONFIG, align 4
  %60 = load i32, i32* @ISP_LOGINFO, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %58, %55
  store i32 -1, i32* %5, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_get_name(i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_get_unit(i32 %69)
  %71 = call i64 @resource_int_value(i32 %68, i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %75, 254
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* @isp_nvports, align 4
  br label %79

79:                                               ; preds = %77, %74, %66
  store i32 7, i32* %5, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_get_name(i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @device_get_unit(i32 %82)
  %84 = call i64 @resource_int_value(i32 %81, i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* @isp_quickboot_time, align 4
  ret void
}

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
