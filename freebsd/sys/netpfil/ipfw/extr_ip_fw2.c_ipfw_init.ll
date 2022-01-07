; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_ipfw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_ipfw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"ipfw2 initialized, divert %s, nat %s, default to %s, logging \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"loadable\00", align 1
@default_to_accept = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@V_fw_verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@V_verbose_limit = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"unlimited\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"limited to %d packets/entry by default\0A\00", align 1
@default_fw_tables = common dso_local global i64 0, align 8
@IPFW_TABLES_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipfw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfw_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* @default_to_accept, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = load i64, i64* @V_fw_verbose, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %20

11:                                               ; preds = %0
  %12 = load i32, i32* @V_verbose_limit, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @V_verbose_limit, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %14
  br label %20

20:                                               ; preds = %19, %9
  %21 = load i64, i64* @default_fw_tables, align 8
  %22 = load i64, i64* @IPFW_TABLES_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @IPFW_TABLES_MAX, align 8
  store i64 %25, i64* @default_fw_tables, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = call i32 (...) @ipfw_init_sopt_handler()
  %28 = call i32 (...) @ipfw_init_obj_rewriter()
  %29 = call i32 (...) @ipfw_iface_init()
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ipfw_init_sopt_handler(...) #1

declare dso_local i32 @ipfw_init_obj_rewriter(...) #1

declare dso_local i32 @ipfw_iface_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
