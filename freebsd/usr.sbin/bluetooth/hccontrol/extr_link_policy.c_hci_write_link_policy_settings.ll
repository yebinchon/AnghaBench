; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_policy.c_hci_write_link_policy_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_policy.c_hci_write_link_policy_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@NG_HCI_OGF_LINK_POLICY = common dso_local global i32 0, align 4
@NG_HCI_OCF_WRITE_LINK_POLICY_SETTINGS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_write_link_policy_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_write_link_policy_settings(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %53 [
    i32 2, label %12
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
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 3839
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %12
  %25 = load i32, i32* @USAGE, align 4
  store i32 %25, i32* %4, align 4
  br label %83

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 4095
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @htole16(i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i32, i32* @USAGE, align 4
  store i32 %42, i32* %4, align 4
  br label %83

43:                                               ; preds = %26
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 65535
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @htole16(i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @USAGE, align 4
  store i32 %54, i32* %4, align 4
  br label %83

55:                                               ; preds = %43
  store i32 4, i32* %10, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @NG_HCI_OGF_LINK_POLICY, align 4
  %58 = load i32, i32* @NG_HCI_OCF_WRITE_LINK_POLICY_SETTINGS, align 4
  %59 = call i32 @NG_HCI_OPCODE(i32 %57, i32 %58)
  %60 = bitcast %struct.TYPE_4__* %8 to i8*
  %61 = bitcast %struct.TYPE_3__* %9 to i8*
  %62 = call i64 @hci_request(i32 %56, i32 %59, i8* %60, i32 16, i8* %61, i32* %10)
  %63 = load i64, i64* @ERROR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i64, i64* @ERROR, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %83

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* @stdout, align 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @hci_status2str(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %76, i32 %78)
  %80 = load i32, i32* @FAILED, align 4
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %68
  %82 = load i32, i32* @OK, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %72, %65, %53, %41, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @htole16(i8*) #1

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
