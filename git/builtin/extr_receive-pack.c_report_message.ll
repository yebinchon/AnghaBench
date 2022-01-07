; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_report_message.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_report_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@use_sideband = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @report_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_message(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @xsnprintf(i8* %9, i32 4096, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = sub i64 4096, %17
  %19 = trunc i64 %18 to i32
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @vsnprintf(i8* %15, i32 %19, i8* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, 4095
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 4095, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %34
  store i8 10, i8* %35, align 1
  %36 = load i64, i64* @use_sideband, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* @use_sideband, align 8
  %42 = call i32 @send_sideband(i32 1, i32 2, i8* %39, i32 %40, i64 %41)
  br label %47

43:                                               ; preds = %31
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @xwrite(i32 2, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @send_sideband(i32, i32, i8*, i32, i64) #1

declare dso_local i32 @xwrite(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
