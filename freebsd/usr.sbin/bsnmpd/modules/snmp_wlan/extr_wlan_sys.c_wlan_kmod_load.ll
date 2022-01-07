; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_kmod_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_kmod_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_stat = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to load %s kernel module - %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wlan_kmod_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_kmod_load(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_stat, align 4
  store i8* %0, i8** %3, align 8
  %7 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %6, i32 0, i32 0
  store i32 8, i32* %7, align 4
  %8 = call i32 @kldnext(i32 0)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @kldfirstmod(i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %31, %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @modstat(i32 %19, %struct.module_stat* %6)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %31

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i8* %24, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %49

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @modfnext(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %15

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @kldnext(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @kldload(i8* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 @syslog(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %46)
  store i32 -1, i32* %2, align 4
  br label %49

48:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %29
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @kldnext(i32) #1

declare dso_local i32 @kldfirstmod(i32) #1

declare dso_local i64 @modstat(i32, %struct.module_stat*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @modfnext(i32) #1

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
