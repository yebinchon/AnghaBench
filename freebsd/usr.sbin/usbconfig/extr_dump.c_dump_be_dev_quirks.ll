; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_be_dev_quirks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_be_dev_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }
%struct.libusb20_quirk = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"\0ADumping current device quirks:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"No device quirks - maybe the USB quirk module has not been loaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UQ_NONE\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"VID=0x%04x PID=0x%04x REVLO=0x%04x REVHI=0x%04x QUIRK=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_be_dev_quirks(%struct.libusb20_backend* %0) #0 {
  %2 = alloca %struct.libusb20_backend*, align 8
  %3 = alloca %struct.libusb20_quirk, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.libusb20_backend* %0, %struct.libusb20_backend** %2, align 8
  %6 = call i32 @memset(%struct.libusb20_quirk* %3, i32 0, i32 24)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 65535
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load %struct.libusb20_backend*, %struct.libusb20_backend** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @libusb20_be_get_dev_quirk(%struct.libusb20_backend* %12, i32 %13, %struct.libusb20_quirk* %3)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  br label %44

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %3, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %3, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %3, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %3, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %3, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %32, i32 %34, i32 %36, i8* %38)
  br label %40

40:                                               ; preds = %28, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %8

44:                                               ; preds = %22, %8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.libusb20_quirk*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @libusb20_be_get_dev_quirk(%struct.libusb20_backend*, i32, %struct.libusb20_quirk*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
