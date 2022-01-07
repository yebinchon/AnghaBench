; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/tablegen/extr_tablegen.c_format_diag.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/tablegen/extr_tablegen.c_format_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"EINVAL \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"EILSEQ \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"E2BIG \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UNKNOWN \00", align 1
@fb_flags = common dso_local global i32 0, align 4
@UC_TO_MB_FLAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"U2M \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MB_TO_WC_FLAG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"M2W \00", align 1
@MB_TO_UC_FLAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"M2U \00", align 1
@WC_TO_MB_FLAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"W2M \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @format_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_diag(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %12 [
    i32 128, label %9
    i32 129, label %10
    i32 130, label %11
  ]

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %13

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %13

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %13

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %13

13:                                               ; preds = %12, %11, %10, %9
  %14 = load i32, i32* @fb_flags, align 4
  %15 = load i32, i32* @UC_TO_MB_FLAG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  store i8* %19, i8** %4, align 8
  %20 = load i32, i32* @fb_flags, align 4
  %21 = load i32, i32* @MB_TO_WC_FLAG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* @fb_flags, align 4
  %27 = load i32, i32* @MB_TO_UC_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  store i8* %31, i8** %5, align 8
  %32 = load i32, i32* @fb_flags, align 4
  %33 = load i32, i32* @WC_TO_MB_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %38, i8* %39, i8* %40, i8* %41, i8* %42)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
