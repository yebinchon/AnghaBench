; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_class_of_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_class_of_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%x:%x:%x\00", align 1
@USAGE = common dso_local global i32 0, align 4
@NG_HCI_OGF_HC_BASEBAND = common dso_local global i32 0, align 4
@NG_HCI_OCF_WRITE_UNIT_CLASS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_write_class_of_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_write_class_of_device(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %38 [
    i32 1, label %14
  ]

14:                                               ; preds = %3
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %11, i32* %10)
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @USAGE, align 4
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %14
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %34, i32* %37, align 4
  br label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @USAGE, align 4
  store i32 %39, i32* %4, align 4
  br label %68

40:                                               ; preds = %22
  store i32 4, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NG_HCI_OGF_HC_BASEBAND, align 4
  %43 = load i32, i32* @NG_HCI_OCF_WRITE_UNIT_CLASS, align 4
  %44 = call i32 @NG_HCI_OPCODE(i32 %42, i32 %43)
  %45 = bitcast %struct.TYPE_4__* %8 to i8*
  %46 = bitcast %struct.TYPE_3__* %9 to i8*
  %47 = call i64 @hci_request(i32 %41, i32 %44, i8* %45, i32 8, i8* %46, i32* %10)
  %48 = load i64, i64* @ERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i64, i64* @ERROR, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %68

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* @stdout, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @hci_status2str(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %63)
  %65 = load i32, i32* @FAILED, align 4
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @OK, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %57, %50, %38, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @hci_request(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @hci_status2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
