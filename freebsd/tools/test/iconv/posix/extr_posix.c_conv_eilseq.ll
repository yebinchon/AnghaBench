; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/posix/extr_posix.c_conv_eilseq.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/posix/extr_posix.c_conv_eilseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.conv_eilseq.inbuf = private unnamed_addr constant [1 x i32] [i32 35520], align 4
@.str = private unnamed_addr constant [7 x i8] c"Latin2\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@errno = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @conv_eilseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conv_eilseq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32, align 4
  %10 = bitcast [1 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([1 x i32]* @__const.conv_eilseq.inbuf to i8*), i64 4, i1 false)
  %11 = call i32 @iconv_open(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %54

14:                                               ; preds = %0
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %6, align 8
  store i64 4, i64* %3, align 8
  store i64 16, i64* %4, align 8
  store i32 0, i32* @errno, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @iconv(i32 %19, i8** %5, i64* %3, i8** %6, i64* %4)
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %14
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %33, 16
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i32, i32* @errno, align 4
  %46 = load i32, i32* @EILSEQ, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %1, align 4
  br label %54

53:                                               ; preds = %48, %44, %35, %32, %29, %14
  store i32 1, i32* %1, align 4
  br label %54

54:                                               ; preds = %53, %52, %13
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @iconv_open(i8*, i8*) #2

declare dso_local i32 @iconv(i32, i8**, i64*, i8**, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
