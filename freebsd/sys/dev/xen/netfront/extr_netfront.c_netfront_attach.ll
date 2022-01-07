; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"creating netdev\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"enable_lro\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@xn_enable_lro = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Large Receive Offload\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"num_queues\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@xn_num_queues = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Number of pairs of queues\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @netfront_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfront_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @create_netdev(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @xenbus_dev_fatal(i32 %10, i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_sysctl_ctx(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_sysctl_tree(i32 %17)
  %19 = call i32 @SYSCTL_CHILDREN(i32 %18)
  %20 = load i32, i32* @OID_AUTO, align 4
  %21 = load i32, i32* @CTLFLAG_RW, align 4
  %22 = call i32 @SYSCTL_ADD_INT(i32 %16, i32 %19, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32* @xn_enable_lro, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_sysctl_ctx(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_sysctl_tree(i32 %25)
  %27 = call i32 @SYSCTL_CHILDREN(i32 %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = call i32 @SYSCTL_ADD_ULONG(i32 %24, i32 %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32* @xn_num_queues, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %14, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @create_netdev(i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_ULONG(i32, i32, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
