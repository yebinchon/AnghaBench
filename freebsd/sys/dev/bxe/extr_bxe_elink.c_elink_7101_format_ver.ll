; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_7101_format_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_7101_format_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @elink_7101_format_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_7101_format_ver(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 5
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %12, i32* %4, align 4
  br label %43

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %18, align 1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 65280
  %21 = ashr i32 %20, 8
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %22, i8* %24, align 1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 16711680
  %27 = ashr i32 %26, 16
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, -16777216
  %33 = lshr i32 %32, 24
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  store i8 0, i8* %38, align 1
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 5
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %13, %11
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
