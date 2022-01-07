; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_child_pnpinfo_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_child_pnpinfo_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32 }

@HYPERV_GUID_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"classid=\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" deviceid=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64)* @vmbus_child_pnpinfo_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_child_pnpinfo_str(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vmbus_channel*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @HYPERV_GUID_STRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.vmbus_channel* @vmbus_get_channel(i32 %18)
  store %struct.vmbus_channel* %19, %struct.vmbus_channel** %10, align 8
  %20 = load %struct.vmbus_channel*, %struct.vmbus_channel** %10, align 8
  %21 = icmp eq %struct.vmbus_channel* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @strlcat(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %10, align 8
  %28 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %27, i32 0, i32 1
  %29 = trunc i64 %15 to i32
  %30 = call i32 @hyperv_guid2str(i32* %28, i8* %17, i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @strlcat(i8* %31, i8* %17, i64 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @strlcat(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.vmbus_channel*, %struct.vmbus_channel** %10, align 8
  %38 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %37, i32 0, i32 0
  %39 = trunc i64 %15 to i32
  %40 = call i32 @hyperv_guid2str(i32* %38, i8* %17, i32 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @strlcat(i8* %41, i8* %17, i64 %42)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %44

44:                                               ; preds = %23, %22
  %45 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.vmbus_channel* @vmbus_get_channel(i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i64) #2

declare dso_local i32 @hyperv_guid2str(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
