; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.lpt_data* }
%struct.lpt_data = type { i32, i32 }
%struct.thread = type { i32 }

@LP_HAS_IRQ = common dso_local global i32 0, align 4
@LP_ENABLE_IRQ = common dso_local global i32 0, align 4
@LP_ENABLE_EXT = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: switched to %s %s mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"interrupt-driven\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"polled\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"extended\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @lptioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lptioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpt_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.cdev*, %struct.cdev** %6, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.lpt_data*, %struct.lpt_data** %16, align 8
  store %struct.lpt_data* %17, %struct.lpt_data** %12, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %113 [
    i32 128, label %19
  ]

19:                                               ; preds = %5
  %20 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %21 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_get_parent(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @ppb_lock(i32 %24)
  %26 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %27 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LP_HAS_IRQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %108

32:                                               ; preds = %19
  %33 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %34 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i64, i64* %8, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %77 [
    i32 0, label %39
    i32 1, label %46
    i32 2, label %58
    i32 3, label %70
  ]

39:                                               ; preds = %32
  %40 = load i32, i32* @LP_ENABLE_IRQ, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %43 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %78

46:                                               ; preds = %32
  %47 = load i32, i32* @LP_ENABLE_EXT, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %50 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @LP_ENABLE_IRQ, align 4
  %54 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %55 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %78

58:                                               ; preds = %32
  %59 = load i32, i32* @LP_ENABLE_IRQ, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %62 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @LP_ENABLE_EXT, align 4
  %66 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %67 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %78

70:                                               ; preds = %32
  %71 = load i32, i32* @LP_ENABLE_EXT, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %74 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %78

77:                                               ; preds = %32
  br label %78

78:                                               ; preds = %77, %70, %58, %46, %39
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %81 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load i32, i32* @LOG_NOTICE, align 4
  %86 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %87 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @device_get_nameunit(i32 %88)
  %90 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %91 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @LP_ENABLE_IRQ, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %98 = load %struct.lpt_data*, %struct.lpt_data** %12, align 8
  %99 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @LP_ENABLE_EXT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %106 = call i32 @log(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %89, i8* %97, i8* %105)
  br label %107

107:                                              ; preds = %84, %78
  br label %110

108:                                              ; preds = %19
  %109 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %108, %107
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @ppb_unlock(i32 %111)
  br label %115

113:                                              ; preds = %5
  %114 = load i32, i32* @ENODEV, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @log(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
