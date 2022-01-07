; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_voice_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_voice_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@USAGE = common dso_local global i32 0, align 4
@NG_HCI_OGF_HC_BASEBAND = common dso_local global i32 0, align 4
@NG_HCI_OCF_WRITE_VOICE_SETTINGS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_write_voice_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_write_voice_settings(i32 %0, i32 %1, i8** %2) #0 {
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
  switch i32 %11, label %27 [
    i32 1, label %12
  ]

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @USAGE, align 4
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %12
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @htole16(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @USAGE, align 4
  store i32 %28, i32* %4, align 4
  br label %57

29:                                               ; preds = %20
  store i32 4, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NG_HCI_OGF_HC_BASEBAND, align 4
  %32 = load i32, i32* @NG_HCI_OCF_WRITE_VOICE_SETTINGS, align 4
  %33 = call i32 @NG_HCI_OPCODE(i32 %31, i32 %32)
  %34 = bitcast %struct.TYPE_4__* %8 to i8*
  %35 = bitcast %struct.TYPE_3__* %9 to i8*
  %36 = call i64 @hci_request(i32 %30, i32 %33, i8* %34, i32 4, i8* %35, i32* %10)
  %37 = load i64, i64* @ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i64, i64* @ERROR, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %57

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* @stdout, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @hci_status2str(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %52)
  %54 = load i32, i32* @FAILED, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @OK, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %46, %39, %27, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @htole16(i32) #1

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
