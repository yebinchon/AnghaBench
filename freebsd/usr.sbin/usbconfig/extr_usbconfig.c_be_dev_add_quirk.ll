; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_usbconfig.c_be_dev_add_quirk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_usbconfig.c_be_dev_add_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }
%struct.libusb20_quirk = type { i32, i8*, i8*, i8*, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Adding quirk '%s' failed, continuing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_backend*, i8*, i8*, i8*, i8*, i8*)* @be_dev_add_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_dev_add_quirk(%struct.libusb20_backend* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.libusb20_backend*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.libusb20_quirk, align 8
  %14 = alloca i32, align 4
  store %struct.libusb20_backend* %0, %struct.libusb20_backend** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = call i32 @memset(%struct.libusb20_quirk* %13, i32 0, i32 40)
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %13, i32 0, i32 4
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %13, i32 0, i32 3
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %13, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %13, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.libusb20_quirk, %struct.libusb20_quirk* %13, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @strlcpy(i32 %25, i8* %26, i32 4)
  %28 = load %struct.libusb20_backend*, %struct.libusb20_backend** %7, align 8
  %29 = call i32 @libusb20_be_add_dev_quirk(%struct.libusb20_backend* %28, %struct.libusb20_quirk* %13)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %6
  ret void
}

declare dso_local i32 @memset(%struct.libusb20_quirk*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @libusb20_be_add_dev_quirk(%struct.libusb20_backend*, %struct.libusb20_quirk*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
