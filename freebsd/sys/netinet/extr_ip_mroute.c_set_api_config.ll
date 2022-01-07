; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_set_api_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_set_api_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_numvifs = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@V_pim_assert_enabled = common dso_local global i64 0, align 8
@mfchashsize = common dso_local global i64 0, align 8
@V_mfchashtbl = common dso_local global i32* null, align 8
@mrt_api_support = common dso_local global i32 0, align 4
@V_mrt_api_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_api_config(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* @V_numvifs, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @EPERM, align 4
  store i32 %9, i32* %2, align 4
  br label %44

10:                                               ; preds = %1
  %11 = load i64, i64* @V_pim_assert_enabled, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @EPERM, align 4
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %10
  %17 = call i32 (...) @MFC_LOCK()
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %33, %16
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @mfchashsize, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32*, i32** @V_mfchashtbl, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32* @LIST_FIRST(i32* %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = call i32 (...) @MFC_UNLOCK()
  %30 = load i32*, i32** %3, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @EPERM, align 4
  store i32 %31, i32* %2, align 4
  br label %44

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %18

36:                                               ; preds = %18
  %37 = call i32 (...) @MFC_UNLOCK()
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @mrt_api_support, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* @V_mrt_api_config, align 4
  %42 = load i32, i32* @V_mrt_api_config, align 4
  %43 = load i32*, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %28, %13, %7
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @MFC_LOCK(...) #1

declare dso_local i32* @LIST_FIRST(i32*) #1

declare dso_local i32 @MFC_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
