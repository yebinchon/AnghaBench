; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_dumpitem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_dumpitem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_item = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HIO_CONST = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s rid=%d pos=%d size=%d count=%d page=%s usage=%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" Const\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HIO_VARIABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" Array\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c", logical range %d..%d\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c", physical range %d..%d\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c", unit=0x%02x exp=%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.hid_item*)* @dumpitem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpitem(i8* %0, %struct.hid_item* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hid_item*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hid_item* %1, %struct.hid_item** %4, align 8
  %5 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %6 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @HIO_CONST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @verbose, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %92

15:                                               ; preds = %11, %2
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %18 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %21 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %24 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %27 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %30 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @HID_PAGE(i32 %31)
  %33 = call i8* @hid_usage_page(i32 %32)
  %34 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %35 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @hid_usage_in_page(i32 %36)
  %38 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %39 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HIO_CONST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %47 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HIO_VARIABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, i32 %22, i32 %25, i32 %28, i8* %33, i8* %37, i8* %45, i8* %53)
  %55 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %56 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %59 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %63 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %66 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %15
  %70 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %71 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %74 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %15
  %78 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %79 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %84 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %87 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %77
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %14
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @hid_usage_page(i32) #1

declare dso_local i32 @HID_PAGE(i32) #1

declare dso_local i8* @hid_usage_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
