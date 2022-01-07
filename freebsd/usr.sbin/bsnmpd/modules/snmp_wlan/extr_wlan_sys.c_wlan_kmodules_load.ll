; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_kmodules_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_kmodules_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wmod_names = common dso_local global i32* null, align 8
@WLAN_KMOD = common dso_local global i64 0, align 8
@WLAN_KMOD_ACL = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SNMP wlan loaded %s module\00", align 1
@WLAN_KMOD_WEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_kmodules_load() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @wmod_names, align 8
  %3 = load i64, i64* @WLAN_KMOD, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @wlan_kmod_load(i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %38

9:                                                ; preds = %0
  %10 = load i32*, i32** @wmod_names, align 8
  %11 = load i64, i64* @WLAN_KMOD_ACL, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @wlan_kmod_load(i32 %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i32, i32* @LOG_NOTICE, align 4
  %18 = load i32*, i32** @wmod_names, align 8
  %19 = load i64, i64* @WLAN_KMOD_ACL, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @syslog(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %16, %9
  %24 = load i32*, i32** @wmod_names, align 8
  %25 = load i64, i64* @WLAN_KMOD_WEP, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @wlan_kmod_load(i32 %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @LOG_NOTICE, align 4
  %32 = load i32*, i32** @wmod_names, align 8
  %33 = load i64, i64* @WLAN_KMOD_WEP, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @syslog(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %8
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i64 @wlan_kmod_load(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
