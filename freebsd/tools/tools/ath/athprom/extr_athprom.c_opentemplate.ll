; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_opentemplate.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athprom/extr_athprom.c_opentemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s/eeprom-%d.%d\00", align 1
@eeprom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%s/eeprom-%d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Using template file %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @opentemplate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @opentemplate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = trunc i64 %7 to i32
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom, i32 0, i32 0), align 4
  %13 = ashr i32 %12, 12
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom, i32 0, i32 0), align 4
  %15 = and i32 %14, 4095
  %16 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %13, i32 %15)
  %17 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ENOENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = trunc i64 %7 to i32
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom, i32 0, i32 0), align 4
  %28 = ashr i32 %27, 12
  %29 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %9, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 %28)
  %30 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %9)
  br label %35

35:                                               ; preds = %33, %24
  br label %36

36:                                               ; preds = %35, %20, %1
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %38)
  ret i32* %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
