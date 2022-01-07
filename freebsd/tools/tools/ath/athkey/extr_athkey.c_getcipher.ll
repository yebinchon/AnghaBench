; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athkey/extr_athkey.c_getcipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athkey/extr_athkey.c_getcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"wep\00", align 1
@HAL_CIPHER_WEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"tkip\00", align 1
@HAL_CIPHER_TKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"aes-ocb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ocb\00", align 1
@HAL_CIPHER_AES_OCB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"aes-ccm\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ccm\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@HAL_CIPHER_AES_CCM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"ckip\00", align 1
@HAL_CIPHER_CKIP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"clr\00", align 1
@HAL_CIPHER_CLR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"%s: unknown cipher %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getcipher(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @HAL_CIPHER_WEP, align 4
  store i32 %8, i32* %2, align 4
  br label %61

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @HAL_CIPHER_TKIP, align 4
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @HAL_CIPHER_AES_OCB, align 4
  store i32 %24, i32* %2, align 4
  br label %61

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcasecmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29, %25
  %38 = load i32, i32* @HAL_CIPHER_AES_CCM, align 4
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @HAL_CIPHER_CKIP, align 4
  store i32 %44, i32* %2, align 4
  br label %61

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcasecmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @HAL_CIPHER_CLR, align 4
  store i32 %54, i32* %2, align 4
  br label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** @progname, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %57, i8* %58)
  %60 = call i32 @exit(i32 -1) #3
  unreachable

61:                                               ; preds = %53, %43, %37, %23, %13, %7
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
