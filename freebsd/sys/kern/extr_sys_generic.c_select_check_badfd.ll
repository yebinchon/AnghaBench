; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_select_check_badfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_select_check_badfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBBY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@NFDBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @select_check_badfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_check_badfd(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  store i32 0, i32* %5, align 4
  br label %66

23:                                               ; preds = %19
  store i8* null, i8** %11, align 8
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %62, %23
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @NBBY, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @fubyte(i8* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @EFAULT, align 4
  store i32 %47, i32* %5, align 4
  br label %66

48:                                               ; preds = %41
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** %11, align 8
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %48, %29
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @NBBY, align 4
  %55 = srem i32 %53, %54
  %56 = shl i32 1, %55
  %57 = and i32 %52, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @EBADF, align 4
  store i32 %60, i32* %5, align 4
  br label %66

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %25

65:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %59, %46, %22
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @fubyte(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
