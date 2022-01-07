; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_link_supervision_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_host_controller_baseband.c_hci_write_link_supervision_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@NG_HCI_OGF_HC_BASEBAND = common dso_local global i32 0, align 4
@NG_HCI_OCF_WRITE_LINK_SUPERVISION_TIMO = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_write_link_supervision_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_write_link_supervision_timeout(i32 %0, i32 %1, i8** %2) #0 {
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
  switch i32 %11, label %59 [
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
  br label %89

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
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %47, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 65535
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %41, %26
  %48 = load i32, i32* @USAGE, align 4
  store i32 %48, i32* %4, align 4
  br label %89

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 4095
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @htole16(i8* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  br label %61

59:                                               ; preds = %3
  %60 = load i32, i32* @USAGE, align 4
  store i32 %60, i32* %4, align 4
  br label %89

61:                                               ; preds = %49
  store i32 4, i32* %10, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @NG_HCI_OGF_HC_BASEBAND, align 4
  %64 = load i32, i32* @NG_HCI_OCF_WRITE_LINK_SUPERVISION_TIMO, align 4
  %65 = call i32 @NG_HCI_OPCODE(i32 %63, i32 %64)
  %66 = bitcast %struct.TYPE_4__* %8 to i8*
  %67 = bitcast %struct.TYPE_3__* %9 to i8*
  %68 = call i64 @hci_request(i32 %62, i32 %65, i8* %66, i32 16, i8* %67, i32* %10)
  %69 = load i64, i64* @ERROR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i64, i64* @ERROR, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %89

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32, i32* @stdout, align 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @hci_status2str(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32 %84)
  %86 = load i32, i32* @FAILED, align 4
  store i32 %86, i32* %4, align 4
  br label %89

87:                                               ; preds = %74
  %88 = load i32, i32* @OK, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %78, %71, %59, %47, %24
  %90 = load i32, i32* %4, align 4
  ret i32 %90
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
