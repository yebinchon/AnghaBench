; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usbtest.c_get_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usbtest.c_get_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"\0AEnter integer value>\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Cannot read input\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"r\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_integer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %5 = load i32, i32* @stdin, align 4
  %6 = call i32* @fgets(i8* %4, i32 32, i32 %5)
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %24

15:                                               ; preds = %10
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -2, i32* %1, align 4
  br label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %22 = call i64 @strtol(i8* %21, i32 0, i32 0)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %20, %19, %14
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
