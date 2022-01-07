; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_initswap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_initswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initswap.once = internal global i32 0, align 4
@hlen = common dso_local global i32 0, align 4
@blocksize = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@pagesize = common dso_local global i32 0, align 4
@kd = common dso_local global i32 0, align 4
@kvmsw = common dso_local global i32 0, align 4
@NSWAP = common dso_local global i32 0, align 4
@kvnsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"systat: kvm_getswapinfo failed\00", align 1
@okvnsw = common dso_local global i32 0, align 4
@dlen = common dso_local global i32 0, align 4
@odlen = common dso_local global i32 0, align 4
@ulen = common dso_local global i32 0, align 4
@oulen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initswap() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @initswap.once, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %21

5:                                                ; preds = %0
  %6 = call i32 @getbsize(i32* @hlen, i32* @blocksize)
  store i32 %6, i32* @header, align 4
  %7 = call i32 (...) @getpagesize()
  store i32 %7, i32* @pagesize, align 4
  %8 = load i32, i32* @kd, align 4
  %9 = load i32, i32* @kvmsw, align 4
  %10 = load i32, i32* @NSWAP, align 4
  %11 = call i32 @kvm_getswapinfo(i32 %8, i32 %9, i32 %10, i32 0)
  store i32 %11, i32* @kvnsw, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %21

15:                                               ; preds = %5
  %16 = load i32, i32* @kvnsw, align 4
  store i32 %16, i32* @okvnsw, align 4
  %17 = call i32 (...) @calclens()
  %18 = load i32, i32* @dlen, align 4
  store i32 %18, i32* @odlen, align 4
  %19 = load i32, i32* @ulen, align 4
  store i32 %19, i32* @oulen, align 4
  store i32 1, i32* @initswap.once, align 4
  %20 = call i32 @dsinit(i32 12)
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %15, %13, %4
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @getbsize(i32*, i32*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @kvm_getswapinfo(i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @calclens(...) #1

declare dso_local i32 @dsinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
