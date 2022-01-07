; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_pcifront_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_pcifront_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"nexus\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not find nexus0!\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"xpcife\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"could not create xpcife%d!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@XenbusStateConnected = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"pcifront: connected to %s\0A\00", align 1
@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_connect(%struct.pcifront_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcifront_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcifront_device* %0, %struct.pcifront_device** %3, align 8
  %6 = call i32 @devclass_find(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @devclass_get_device(i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %1
  %13 = call i32 (i8*, ...) @WPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %58

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %17 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BUS_ADD_CHILD(i32 %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %14
  %27 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @WPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %58

33:                                               ; preds = %14
  %34 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %35 = call i32 @get_pdev(%struct.pcifront_device* %34)
  %36 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %37 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %40 = call i32 @device_set_ivars(i32 %38, %struct.pcifront_device* %39)
  %41 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %42 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* @XenbusStateConnected, align 4
  %45 = call i32 @xenbus_switch_state(%struct.TYPE_2__* %43, i32* null, i32 %44)
  %46 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %47 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = call i32 @mtx_lock(i32* @Giant)
  %53 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %54 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_probe_and_attach(i32 %55)
  %57 = call i32 @mtx_unlock(i32* @Giant)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %33, %26, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @devclass_get_device(i32, i32) #1

declare dso_local i32 @WPRINTF(i8*, ...) #1

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @get_pdev(%struct.pcifront_device*) #1

declare dso_local i32 @device_set_ivars(i32, %struct.pcifront_device*) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
