; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/ofwfb/extr_ofwfb.c_ofwfb_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/ofwfb/extr_ofwfb.c_ofwfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@CN_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@CN_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @ofwfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwfb_probe(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca [64 x i8], align 16
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  %8 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CN_DEAD, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @OF_getprop(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %6, i32 1)
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8, i8* %6, align 1
  %20 = call i32 @OF_instance_to_package(i8 signext %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %27 = call i32 @OF_getprop(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 64)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %31 = call i32 @OF_finddevice(i8* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @OF_finddevice(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %41 = call i32 @OF_getprop(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %40, i32 64)
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @CN_DEAD, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %45, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_instance_to_package(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
