; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_bcopy_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_bcopy_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"ti_bcopy_swap: length %zd isn't 32-bit aligned\0A\00", align 1
@TI_SWAP_NTOH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64)* @ti_bcopy_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_bcopy_swap(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = and i64 %13, 3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 -1, i32* %5, align 4
  br label %50

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %12, align 8
  br label %25

25:                                               ; preds = %42, %19
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @TI_SWAP_NTOH, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohl(i32 %34)
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  br label %42

37:                                               ; preds = %28
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @htonl(i32 %39)
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32* %46, i32** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub i64 %47, 4
  store i64 %48, i64* %12, align 8
  br label %25

49:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
