; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_le.c_le_set_scan_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_le.c_le_set_scan_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NG_HCI_ADVERTISING_DATA_SIZE = common dso_local global i32 0, align 4
@NG_HCI_OGF_LE = common dso_local global i32 0, align 4
@NG_HCI_OCF_LE_SET_SCAN_RESPONSE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SET SCAN RESPONSE %d %d %d\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @le_set_scan_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_set_scan_response(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %14 = load i32, i32* @NG_HCI_ADVERTISING_DATA_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = trunc i64 %15 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = call i32 @parse_param(i32 %19, i8** %20, i8* %17, i32* %11)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load i32, i32* %11, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @memcpy(i32 %28, i8* %17, i32 %29)
  store i32 4, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @NG_HCI_OGF_LE, align 4
  %33 = load i32, i32* @NG_HCI_OCF_LE_SET_SCAN_RESPONSE_DATA, align 4
  %34 = call i32 @NG_HCI_OPCODE(i32 %32, i32 %33)
  %35 = bitcast %struct.TYPE_4__* %7 to i8*
  %36 = bitcast %struct.TYPE_3__* %8 to i8*
  %37 = call i32 @hci_request(i32 %31, i32 %34, i8* %35, i32 8, i8* %36, i32* %9)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40, i32 %41)
  %43 = load i32, i32* @OK, align 4
  %44 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %44)
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_param(i32, i8**, i8*, i32*) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @hci_request(i32, i32, i8*, i32, i8*, i32*) #2

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #2

declare dso_local i32 @printf(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
