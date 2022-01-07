; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xen_disable_pv_nics = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vif\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Virtual Network Interface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @netfront_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfront_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 (...) @xen_hvm_domain()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* @xen_disable_pv_nics, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %6, %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @xenbus_get_type(i32 %12)
  %14 = call i32 @strcmp(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_set_desc(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %16, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @xen_hvm_domain(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @xenbus_get_type(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
