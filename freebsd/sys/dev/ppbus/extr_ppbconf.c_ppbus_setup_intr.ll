; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppbconf.c_ppbus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppbconf.c_ppbus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ppb_device = type { void (i8*)*, i8* }
%struct.ppb_data = type { i32, %struct.resource* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, void (i8*)*, i8*, i8**)* @ppbus_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppbus_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, void (i8*)* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca void (i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.ppb_device*, align 8
  %19 = alloca %struct.ppb_data*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store void (i8*)* %5, void (i8*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.ppb_device* @device_get_ivars(i32 %20)
  store %struct.ppb_device* %21, %struct.ppb_device** %18, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.ppb_data* @DEVTOSOFTC(i32 %22)
  store %struct.ppb_data* %23, %struct.ppb_data** %19, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load void (i8*)*, void (i8*)** %15, align 8
  %28 = icmp eq void (i8*)* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %8
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %9, align 4
  br label %57

31:                                               ; preds = %26
  %32 = load %struct.ppb_data*, %struct.ppb_data** %19, align 8
  %33 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %32, i32 0, i32 1
  %34 = load %struct.resource*, %struct.resource** %33, align 8
  %35 = load %struct.resource*, %struct.resource** %12, align 8
  %36 = icmp ne %struct.resource* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %9, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.ppb_data*, %struct.ppb_data** %19, align 8
  %41 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mtx_lock(i32 %42)
  %44 = load void (i8*)*, void (i8*)** %15, align 8
  %45 = load %struct.ppb_device*, %struct.ppb_device** %18, align 8
  %46 = getelementptr inbounds %struct.ppb_device, %struct.ppb_device* %45, i32 0, i32 0
  store void (i8*)* %44, void (i8*)** %46, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.ppb_device*, %struct.ppb_device** %18, align 8
  %49 = getelementptr inbounds %struct.ppb_device, %struct.ppb_device* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ppb_device*, %struct.ppb_device** %18, align 8
  %51 = bitcast %struct.ppb_device* %50 to i8*
  %52 = load i8**, i8*** %17, align 8
  store i8* %51, i8** %52, align 8
  %53 = load %struct.ppb_data*, %struct.ppb_data** %19, align 8
  %54 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mtx_unlock(i32 %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %39, %37, %29
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local %struct.ppb_device* @device_get_ivars(i32) #1

declare dso_local %struct.ppb_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
