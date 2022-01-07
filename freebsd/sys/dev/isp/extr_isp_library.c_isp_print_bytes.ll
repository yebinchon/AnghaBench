; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_print_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_print_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISP_LOGALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s %02x\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0x%08x:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_print_bytes(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ISP_LOGALL, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %18, %4
  store i32 0, i32* %11, align 4
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %24, align 16
  br label %25

25:                                               ; preds = %53, %23
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %50, %29
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @ISP_SNPRINTF(i8* %35, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %53

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %31

53:                                               ; preds = %48, %31
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @ISP_LOGALL, align 4
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %58 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %54, i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56, i8* %57)
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %59, align 16
  br label %25

60:                                               ; preds = %25
  ret void
}

declare dso_local i32 @isp_prt(i32*, i32, i8*, ...) #1

declare dso_local i32 @ISP_SNPRINTF(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
