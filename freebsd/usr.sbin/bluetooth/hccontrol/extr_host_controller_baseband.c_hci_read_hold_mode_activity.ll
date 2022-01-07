; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_read_hold_mode_activity.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_read_hold_mode_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NG_HCI_OGF_HC_BASEBAND = common dso_local global i32 0, align 4
@NG_HCI_OCF_READ_HOLD_MODE_ACTIVITY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Hold Mode Activities: %#02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Maintain current Power State\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_read_hold_mode_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_read_hold_mode_activity(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_2__, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 8, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NG_HCI_OGF_HC_BASEBAND, align 4
  %13 = load i32, i32* @NG_HCI_OCF_READ_HOLD_MODE_ACTIVITY, align 4
  %14 = call i32 @NG_HCI_OPCODE(i32 %12, i32 %13)
  %15 = bitcast %struct.TYPE_2__* %8 to i8*
  %16 = call i64 @hci_simple_request(i32 %11, i32 %14, i8* %15, i32* %9)
  %17 = load i64, i64* @ERROR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* @ERROR, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* @stdout, align 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @hci_status2str(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %32)
  %34 = load i32, i32* @FAILED, align 4
  store i32 %34, i32* %4, align 4
  br label %58

35:                                               ; preds = %22
  %36 = load i32, i32* @stdout, align 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @stdout, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %54

46:                                               ; preds = %35
  %47 = load i32, i32* @stdout, align 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %52 = call i8* @hci_hmode2str(i64 %50, i8* %51, i32 1024)
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %46, %43
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @OK, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %26, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @hci_simple_request(i32, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @hci_status2str(i32) #1

declare dso_local i8* @hci_hmode2str(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
