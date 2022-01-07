; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_le.c_le_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_le.c_le_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@NG_HCI_EVENT_MASK_DEFAULT = common dso_local global i32 0, align 4
@NG_HCI_EVENT_MASK_LE = common dso_local global i32 0, align 4
@NG_HCI_LE_EVENT_MASK_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"disble\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @le_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_enable(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @USAGE, align 4
  store i32 %11, i32* %4, align 4
  br label %42

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strcasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NG_HCI_EVENT_MASK_DEFAULT, align 4
  %21 = load i32, i32* @NG_HCI_EVENT_MASK_LE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @set_event_mask(i32 %19, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NG_HCI_LE_EVENT_MASK_ALL, align 4
  %26 = call i32 @set_le_event_mask(i32 %24, i32 %25)
  br label %40

27:                                               ; preds = %12
  %28 = load i8**, i8*** %7, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NG_HCI_EVENT_MASK_DEFAULT, align 4
  %36 = call i32 @set_event_mask(i32 %34, i32 %35)
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @USAGE, align 4
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* @OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %37, %10
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @set_event_mask(i32, i32) #1

declare dso_local i32 @set_le_event_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
