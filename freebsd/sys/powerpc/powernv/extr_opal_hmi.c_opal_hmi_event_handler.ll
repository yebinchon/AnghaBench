; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_hmi.c_opal_hmi_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_hmi.c_opal_hmi_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_msg = type { i32 }
%struct.opal_hmi_event = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [76 x i8] c"Hypervisor Maintenance Event received(Severity %d, type %d, HMER: %016lx).\0A\00", align 1
@HMI_DISP_NOT_RECOVERED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Unrecoverable hypervisor maintenance exception on CPU %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.opal_msg*)* @opal_hmi_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_hmi_event_handler(i8* %0, %struct.opal_msg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.opal_msg*, align 8
  %5 = alloca %struct.opal_hmi_event, align 8
  store i8* %0, i8** %3, align 8
  store %struct.opal_msg* %1, %struct.opal_msg** %4, align 8
  %6 = load %struct.opal_msg*, %struct.opal_msg** %4, align 8
  %7 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %6, i32 0, i32 0
  %8 = call i32 @memcpy(%struct.opal_hmi_event* %5, i32* %7, i32 24)
  %9 = getelementptr inbounds %struct.opal_hmi_event, %struct.opal_hmi_event* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.opal_hmi_event, %struct.opal_hmi_event* %5, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.opal_hmi_event, %struct.opal_hmi_event* %5, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %14)
  %16 = getelementptr inbounds %struct.opal_hmi_event, %struct.opal_hmi_event* %5, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HMI_DISP_NOT_RECOVERED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.opal_hmi_event, %struct.opal_hmi_event* %5, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @panic(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @memcpy(%struct.opal_hmi_event*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
