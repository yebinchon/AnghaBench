; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_le_host_supported_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_le_host_supported_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ARGC2: %d\0A\00", align 1
@USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ARGC1: %d\0A\00", align 1
@NG_HCI_OGF_HC_BASEBAND = common dso_local global i32 0, align 4
@NG_HCI_OCF_WRITE_LE_HOST_SUPPORTED = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_write_le_host_supported_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_write_le_host_supported_command(i32 %0, i32 %1, i8** %2) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %54 [
    i32 2, label %14
    i32 1, label %34
  ]

14:                                               ; preds = %3
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %14
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @USAGE, align 4
  store i32 %29, i32* %4, align 4
  br label %84

30:                                               ; preds = %23, %20
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %3, %30
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %34
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @USAGE, align 4
  store i32 %49, i32* %4, align 4
  br label %84

50:                                               ; preds = %43, %40
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  br label %56

54:                                               ; preds = %3
  %55 = load i32, i32* @USAGE, align 4
  store i32 %55, i32* %4, align 4
  br label %84

56:                                               ; preds = %50
  store i32 4, i32* %10, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @NG_HCI_OGF_HC_BASEBAND, align 4
  %59 = load i32, i32* @NG_HCI_OCF_WRITE_LE_HOST_SUPPORTED, align 4
  %60 = call i32 @NG_HCI_OPCODE(i32 %58, i32 %59)
  %61 = bitcast %struct.TYPE_4__* %8 to i8*
  %62 = bitcast %struct.TYPE_3__* %9 to i8*
  %63 = call i64 @hci_request(i32 %57, i32 %60, i8* %61, i32 8, i8* %62, i32* %10)
  %64 = load i64, i64* @ERROR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i64, i64* @ERROR, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %84

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32, i32* @stdout, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @hci_status2str(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 %79)
  %81 = load i32, i32* @FAILED, align 4
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %69
  %83 = load i32, i32* @OK, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %73, %66, %54, %46, %26
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

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
