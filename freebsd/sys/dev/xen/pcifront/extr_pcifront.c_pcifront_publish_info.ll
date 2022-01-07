; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_pcifront_publish_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_pcifront_publish_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"error granting access to ring page\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Error writing configuration for backend (start transaction)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pci-op-ref\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@XEN_PCI_MAGIC = common dso_local global i32 0, align 4
@XenbusStateInitialised = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Error writing configuration for backend\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"Error completing transaction for backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_publish_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_publish_info(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_transaction*, align 8
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @virt_to_mfn(i32 %10)
  %12 = call i32 @xenbus_grant_ring(%struct.TYPE_5__* %7, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @WPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %121

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %20 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %22 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %25 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %24, i32 0, i32 2
  %26 = call i32 @xenbus_alloc_evtchn(%struct.TYPE_5__* %23, i32* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %121

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %108, %30
  %32 = call %struct.xenbus_transaction* (...) @xenbus_transaction_start()
  store %struct.xenbus_transaction* %32, %struct.xenbus_transaction** %4, align 8
  %33 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %4, align 8
  %34 = call i64 @IS_ERR(%struct.xenbus_transaction* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %38 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @xenbus_dev_fatal(%struct.TYPE_5__* %39, i32 %40, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %121

42:                                               ; preds = %31
  %43 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %4, align 8
  %44 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %45 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %50 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct.xenbus_transaction*, i32, i8*, i8*, ...) @xenbus_printf(%struct.xenbus_transaction* %43, i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %42
  %56 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %4, align 8
  %57 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %58 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %63 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.xenbus_transaction*, i32, i8*, i8*, ...) @xenbus_printf(%struct.xenbus_transaction* %56, i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %55, %42
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %4, align 8
  %71 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %72 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @XEN_PCI_MAGIC, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 (%struct.xenbus_transaction*, i32, i8*, i8*, ...) @xenbus_printf(%struct.xenbus_transaction* %70, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %69, %66
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %85 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %4, align 8
  %88 = load i32, i32* @XenbusStateInitialised, align 4
  %89 = call i32 @xenbus_switch_state(%struct.TYPE_5__* %86, %struct.xenbus_transaction* %87, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %80
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %4, align 8
  %95 = call i32 @xenbus_transaction_end(%struct.xenbus_transaction* %94, i32 1)
  %96 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %97 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @xenbus_dev_fatal(%struct.TYPE_5__* %98, i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %121

101:                                              ; preds = %90
  %102 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %4, align 8
  %103 = call i32 @xenbus_transaction_end(%struct.xenbus_transaction* %102, i32 0)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %31

109:                                              ; preds = %101
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %114 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @xenbus_dev_fatal(%struct.TYPE_5__* %115, i32 %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %121

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %112, %93, %36, %29, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @xenbus_grant_ring(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @virt_to_mfn(i32) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.TYPE_5__*, i32*) #1

declare dso_local %struct.xenbus_transaction* @xenbus_transaction_start(...) #1

declare dso_local i64 @IS_ERR(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @xenbus_printf(%struct.xenbus_transaction*, i32, i8*, i8*, ...) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_5__*, %struct.xenbus_transaction*, i32) #1

declare dso_local i32 @xenbus_transaction_end(%struct.xenbus_transaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
