; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"SUNW,isp\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"QLGC,isp\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ptisp\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PTI,ptisp\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@isp_announced = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"Qlogic ISP Driver, FreeBSD Version %d.%d, Core Version %d.%d\0A\00", align 1
@ISP_PLATFORM_VERSION_MAJOR = common dso_local global i32 0, align 4
@ISP_PLATFORM_VERSION_MINOR = common dso_local global i32 0, align 4
@ISP_CORE_VERSION_MAJOR = common dso_local global i32 0, align 4
@ISP_CORE_VERSION_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isp_sbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_sbus_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @ofw_bus_get_name(i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %15, %11, %1
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %26
  %32 = load i64, i64* @isp_announced, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* @ISP_PLATFORM_VERSION_MAJOR, align 4
  %39 = load i32, i32* @ISP_PLATFORM_VERSION_MINOR, align 4
  %40 = load i32, i32* @ISP_CORE_VERSION_MAJOR, align 4
  %41 = load i32, i32* @ISP_CORE_VERSION_MINOR, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i64, i64* @isp_announced, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* @isp_announced, align 8
  br label %45

45:                                               ; preds = %37, %34, %31
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i8* @ofw_bus_get_name(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
