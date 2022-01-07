; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_page_scan_activity.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_page_scan_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@NG_HCI_OGF_HC_BASEBAND = common dso_local global i32 0, align 4
@NG_HCI_OCF_WRITE_PAGE_SCAN_ACTIVITY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_write_page_scan_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_write_page_scan_activity(i32 %0, i32 %1, i8** %2) #0 {
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
  switch i32 %11, label %65 [
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
  %20 = icmp slt i32 %19, 18
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 4096
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %12
  %25 = load i32, i32* @USAGE, align 4
  store i32 %25, i32* %4, align 4
  br label %95

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 18
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 4096
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %36, %26
  %43 = load i32, i32* @USAGE, align 4
  store i32 %43, i32* %4, align 4
  br label %95

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ugt i8* %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @USAGE, align 4
  store i32 %55, i32* %4, align 4
  br label %95

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @htole16(i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @htole16(i8* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  br label %67

65:                                               ; preds = %3
  %66 = load i32, i32* @USAGE, align 4
  store i32 %66, i32* %4, align 4
  br label %95

67:                                               ; preds = %56
  store i32 4, i32* %10, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @NG_HCI_OGF_HC_BASEBAND, align 4
  %70 = load i32, i32* @NG_HCI_OCF_WRITE_PAGE_SCAN_ACTIVITY, align 4
  %71 = call i32 @NG_HCI_OPCODE(i32 %69, i32 %70)
  %72 = bitcast %struct.TYPE_4__* %8 to i8*
  %73 = bitcast %struct.TYPE_3__* %9 to i8*
  %74 = call i64 @hci_request(i32 %68, i32 %71, i8* %72, i32 16, i8* %73, i32* %10)
  %75 = load i64, i64* @ERROR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i64, i64* @ERROR, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %95

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @stdout, align 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @hci_status2str(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %90)
  %92 = load i32, i32* @FAILED, align 4
  store i32 %92, i32* %4, align 4
  br label %95

93:                                               ; preds = %80
  %94 = load i32, i32* @OK, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %84, %77, %65, %54, %42, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
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
