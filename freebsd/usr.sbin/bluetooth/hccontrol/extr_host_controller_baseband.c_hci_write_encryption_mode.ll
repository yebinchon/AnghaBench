; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_encryption_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_encryption_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@NG_HCI_OGF_HC_BASEBAND = common dso_local global i32 0, align 4
@NG_HCI_OCF_WRITE_ENCRYPTION_MODE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_write_encryption_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_write_encryption_mode(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %29 [
    i32 1, label %12
  ]

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %12
  %25 = load i32, i32* @USAGE, align 4
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @USAGE, align 4
  store i32 %30, i32* %4, align 4
  br label %59

31:                                               ; preds = %26
  store i32 4, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NG_HCI_OGF_HC_BASEBAND, align 4
  %34 = load i32, i32* @NG_HCI_OCF_WRITE_ENCRYPTION_MODE, align 4
  %35 = call i32 @NG_HCI_OPCODE(i32 %33, i32 %34)
  %36 = bitcast %struct.TYPE_4__* %8 to i8*
  %37 = bitcast %struct.TYPE_3__* %9 to i8*
  %38 = call i64 @hci_request(i32 %32, i32 %35, i8* %36, i32 4, i8* %37, i32* %10)
  %39 = load i64, i64* @ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i64, i64* @ERROR, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %59

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* @stdout, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @hci_status2str(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %54)
  %56 = load i32, i32* @FAILED, align 4
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %44
  %58 = load i32, i32* @OK, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %48, %41, %29, %24
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

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
