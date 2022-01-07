; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb_back.c_xenbusb_back_localend_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb_back.c_xenbusb_back_localend_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"/state\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/online\00", align 1
@XenbusStateClosed = common dso_local global i64 0, align 8
@XST_NIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"hotplug-status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @xenbusb_back_localend_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenbusb_back_localend_changed(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @xenbusb_localend_changed(i32 %7, i32 %8, i8* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %34

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @xenbus_get_state(i32 %20)
  %22 = load i64, i64* @XenbusStateClosed, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @xenbus_dev_is_online(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %19
  br label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @XST_NIL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @xenbus_get_node(i32 %31)
  %33 = call i32 @xs_rm(i32 %30, i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %28, %18
  ret void
}

declare dso_local i32 @xenbusb_localend_changed(i32, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @xenbus_get_state(i32) #1

declare dso_local i64 @xenbus_dev_is_online(i32) #1

declare dso_local i32 @xs_rm(i32, i32, i8*) #1

declare dso_local i32 @xenbus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
