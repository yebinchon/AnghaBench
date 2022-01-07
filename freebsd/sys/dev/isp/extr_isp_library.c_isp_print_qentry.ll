; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_print_qentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_print_qentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TBA = common dso_local global i32 0, align 4
@ISP_LOGALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s index %d=>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@QENTRY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s %02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_print_qentry(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load i32, i32* @TBA, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @ISP_LOGALL, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32*, i32, i8*, i8*, ...) @isp_prt(i32* %21, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %26, align 16
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %56, %4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %31, align 16
  %32 = load i32, i32* @TBA, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @ISP_SNPRINTF(i8* %18, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %49, %30
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @QENTRY_LEN, align 4
  %37 = ashr i32 %36, 2
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i32, i32* @TBA, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  %48 = call i32 (i8*, i32, i8*, ...) @ISP_SNPRINTF(i8* %18, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %18, i32 %47)
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @ISP_LOGALL, align 4
  %55 = call i32 (i32*, i32, i8*, i8*, ...) @isp_prt(i32* %53, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %27

59:                                               ; preds = %27
  %60 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i8*, ...) #2

declare dso_local i32 @ISP_SNPRINTF(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
