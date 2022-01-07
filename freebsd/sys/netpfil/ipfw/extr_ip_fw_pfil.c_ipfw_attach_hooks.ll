; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_pfil.c_ipfw_attach_hooks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_pfil.c_ipfw_attach_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"net.inet.ip.fw.enable\00", align 1
@V_fw_enable = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"ipfw_hook() error\0A\00", align 1
@AF_LINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"net.link.ether.ipfw\00", align 1
@V_fwlink_enable = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"ipfw_link_hook() error\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@V_fw6_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_attach_hooks() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @AF_INET, align 4
  %3 = call i32 @ipfw_hook(i32 %2)
  %4 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64* @V_fw_enable)
  %5 = load i64, i64* @V_fw_enable, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @AF_INET, align 4
  %9 = call i32 @ipfw_link(i32 %8, i32 0)
  store i32 %9, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7, %0
  %14 = load i32, i32* @AF_LINK, align 4
  %15 = call i32 @ipfw_hook(i32 %14)
  %16 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* @V_fwlink_enable)
  %17 = load i64, i64* @V_fwlink_enable, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* @AF_LINK, align 4
  %21 = call i32 @ipfw_link(i32 %20, i32 0)
  store i32 %21, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19, %13
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @ipfw_hook(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i64*) #1

declare dso_local i32 @ipfw_link(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
