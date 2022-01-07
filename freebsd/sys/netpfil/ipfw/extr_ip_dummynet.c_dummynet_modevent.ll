; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_dummynet_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_dummynet_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOD_LOAD = common dso_local global i32 0, align 4
@ip_dn_io_ptr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"DUMMYNET already loaded\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ip_dn_ctl = common dso_local global i32 0, align 4
@ip_dn_ctl_ptr = common dso_local global i32 0, align 4
@dummynet_io = common dso_local global i64 0, align 8
@MOD_UNLOAD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @dummynet_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummynet_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MOD_LOAD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i64, i64* @ip_dn_io_ptr, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EEXIST, align 4
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %11
  %18 = call i32 (...) @ip_dn_init()
  %19 = load i32, i32* @ip_dn_ctl, align 4
  store i32 %19, i32* @ip_dn_ctl_ptr, align 4
  %20 = load i64, i64* @dummynet_io, align 8
  store i64 %20, i64* @ip_dn_io_ptr, align 8
  store i32 0, i32* %4, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MOD_UNLOAD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @ip_dn_destroy(i32 1)
  store i32 0, i32* %4, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %25, %17, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ip_dn_init(...) #1

declare dso_local i32 @ip_dn_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
