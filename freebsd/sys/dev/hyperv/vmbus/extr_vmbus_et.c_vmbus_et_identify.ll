; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_et.c_vmbus_et_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_et.c_vmbus_et_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMBUS_ET_NAME = common dso_local global i32 0, align 4
@hyperv_features = common dso_local global i32 0, align 4
@CPUID_HV_ET_MASK = common dso_local global i32 0, align 4
@hyperv_tc64 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @vmbus_et_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_et_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @device_get_unit(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VMBUS_ET_NAME, align 4
  %11 = call i32* @device_find_child(i32 %9, i32 %10, i32 -1)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @hyperv_features, align 4
  %15 = load i32, i32* @CPUID_HV_ET_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @CPUID_HV_ET_MASK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32*, i32** @hyperv_tc64, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %13, %8, %2
  br label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @VMBUS_ET_NAME, align 4
  %26 = call i32 @device_add_child(i32 %24, i32 %25, i32 -1)
  br label %27

27:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32* @device_find_child(i32, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
