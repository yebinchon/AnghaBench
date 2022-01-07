; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_me_struct = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"\0A%sAdditional Descriptor\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%sbLength = 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%sbDescriptorType = 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%sbDescriptorSubType = 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s RAW dump: \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0A%s 0x%02x | \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"0x%02x%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_me_struct*, i8*)* @dump_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_extra(%struct.libusb20_me_struct* %0, i8* %1) #0 {
  %3 = alloca %struct.libusb20_me_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.libusb20_me_struct* %0, %struct.libusb20_me_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  br label %7

7:                                                ; preds = %77, %2
  %8 = load %struct.libusb20_me_struct*, %struct.libusb20_me_struct** %3, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @libusb20_desc_foreach(%struct.libusb20_me_struct* %8, i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %79

12:                                               ; preds = %7
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %12
  %30 = load i8*, i8** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %12
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %74, %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = srem i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %71

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = srem i32 %66, 8
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  br label %71

71:                                               ; preds = %65, %64
  %72 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %64 ], [ %70, %65 ]
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %57, i8* %72)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %38

77:                                               ; preds = %38
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %7

79:                                               ; preds = %7
  ret void
}

declare dso_local i32* @libusb20_desc_foreach(%struct.libusb20_me_struct*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
