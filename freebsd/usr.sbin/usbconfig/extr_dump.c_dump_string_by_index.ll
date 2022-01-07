; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_string_by_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_string_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"STRING_0x%02x = <read error>\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"STRING_0x%02x = \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"0x%02x%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"STRING_0x%02x = <%s>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_string_by_index(%struct.libusb20_device* %0, i64 %1) #0 {
  %3 = alloca %struct.libusb20_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.libusb20_device* %0, %struct.libusb20_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i8* @malloc(i32 256)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  %17 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @libusb20_dev_req_string_sync(%struct.libusb20_device* %17, i64 %18, i32 0, i8* %19, i32 256)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  br label %54

25:                                               ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i64
  store i64 %31, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %49, %25
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub nsw i64 %43, 1
  %45 = icmp ne i64 %42, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %41, i8* %47)
  br label %49

49:                                               ; preds = %36
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %32

52:                                               ; preds = %32
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %22
  br label %69

55:                                               ; preds = %13
  %56 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @libusb20_dev_req_string_simple_sync(%struct.libusb20_device* %56, i64 %57, i8* %58, i32 256)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, i64* %4, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %68

64:                                               ; preds = %55
  %65 = load i64, i64* %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @free(i8* %70)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @libusb20_dev_req_string_sync(%struct.libusb20_device*, i64, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @libusb20_dev_req_string_simple_sync(%struct.libusb20_device*, i64, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
