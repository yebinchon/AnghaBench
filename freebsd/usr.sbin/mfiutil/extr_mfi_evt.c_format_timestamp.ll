; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_format_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_evt.c_format_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@format_timestamp.buffer = internal global [32 x i8] zeroinitializer, align 16
@format_timestamp.base = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"boot + %us\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%us\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @format_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_timestamp(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, -16777216
  %8 = icmp eq i32 %7, -16777216
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 16777215
  %12 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_timestamp.buffer, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_timestamp.buffer, i64 0, i64 0), i8** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @format_timestamp.base, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @bzero(%struct.tm* %5, i32 8)
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i32 100, i32* %19, align 4
  %20 = call i32 @mktime(%struct.tm* %5)
  store i32 %20, i32* @format_timestamp.base, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @format_timestamp.base, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_timestamp.buffer, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_timestamp.buffer, i64 0, i64 0), i8** %2, align 8
  br label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @format_timestamp.base, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = call i32 @localtime(i32* %4)
  %32 = call i32 @strftime(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_timestamp.buffer, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @format_timestamp.buffer, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %27, %24, %9
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @bzero(%struct.tm*, i32) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
