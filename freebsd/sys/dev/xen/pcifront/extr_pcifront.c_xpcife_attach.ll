; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_xpcife_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_xpcife_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"xpcife attach (unit=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"root_num\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Error reading number of PCI roots\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"root-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%x:%x\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Error reading PCI root %d\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Domain mismatch %d != %d\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pcib\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Unable to create pcib%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xpcife_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpcife_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcifront_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @device_get_ivars(i32 %12)
  %14 = inttoptr i64 %13 to %struct.pcifront_device*
  store %struct.pcifront_device* %14, %struct.pcifront_device** %3, align 8
  %15 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %16 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32*, i32, i8*, i8*, ...) @xenbus_scanf(i32* null, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_2__* %36, i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %122

39:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %118, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %121

44:                                               ; preds = %40
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @snprintf(i8* %45, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %49, 63
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %122

57:                                               ; preds = %44
  %58 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %59 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %64 = call i32 (i32*, i32, i8*, i8*, ...) @xenbus_scanf(i32* null, i32 %62, i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32* %10)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %80

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %75 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_2__* %76, i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  br label %122

80:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %83 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %81, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %80
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  %91 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %92 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %97 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_2__* %93, i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %95, i32 %100)
  br label %122

102:                                              ; preds = %80
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @device_add_child(i32 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  %111 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %112 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_2__* %113, i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  br label %122

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %40

121:                                              ; preds = %40
  br label %122

122:                                              ; preds = %121, %108, %88, %73, %54, %33
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @bus_generic_attach(i32 %123)
  ret i32 %124
}

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @xenbus_scanf(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_2__*, i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
