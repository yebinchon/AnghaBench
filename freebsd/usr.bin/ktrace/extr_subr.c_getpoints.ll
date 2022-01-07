; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ktrace/extr_subr.c_getpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ktrace/extr_subr.c_getpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KTRFAC_SYSCALL = common dso_local global i32 0, align 4
@KTRFAC_SYSRET = common dso_local global i32 0, align 4
@KTRFAC_GENIO = common dso_local global i32 0, align 4
@KTRFAC_FAULT = common dso_local global i32 0, align 4
@KTRFAC_FAULTEND = common dso_local global i32 0, align 4
@KTRFAC_NAMEI = common dso_local global i32 0, align 4
@KTRFAC_CAPFAIL = common dso_local global i32 0, align 4
@KTRFAC_PSIG = common dso_local global i32 0, align 4
@KTRFAC_STRUCT = common dso_local global i32 0, align 4
@KTRFAC_USER = common dso_local global i32 0, align 4
@KTRFAC_CSW = common dso_local global i32 0, align 4
@KTRFAC_SYSCTL = common dso_local global i32 0, align 4
@DEF_POINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getpoints(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %62, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %65

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %61 [
    i32 99, label %13
    i32 105, label %19
    i32 102, label %23
    i32 110, label %29
    i32 112, label %33
    i32 115, label %37
    i32 116, label %41
    i32 117, label %45
    i32 119, label %49
    i32 121, label %53
    i32 43, label %57
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @KTRFAC_SYSCALL, align 4
  %15 = load i32, i32* @KTRFAC_SYSRET, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %9
  %20 = load i32, i32* @KTRFAC_GENIO, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %9
  %24 = load i32, i32* @KTRFAC_FAULT, align 4
  %25 = load i32, i32* @KTRFAC_FAULTEND, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %9
  %30 = load i32, i32* @KTRFAC_NAMEI, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %62

33:                                               ; preds = %9
  %34 = load i32, i32* @KTRFAC_CAPFAIL, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %9
  %38 = load i32, i32* @KTRFAC_PSIG, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %62

41:                                               ; preds = %9
  %42 = load i32, i32* @KTRFAC_STRUCT, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %9
  %46 = load i32, i32* @KTRFAC_USER, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %62

49:                                               ; preds = %9
  %50 = load i32, i32* @KTRFAC_CSW, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %62

53:                                               ; preds = %9
  %54 = load i32, i32* @KTRFAC_SYSCTL, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %62

57:                                               ; preds = %9
  %58 = load i32, i32* @DEF_POINTS, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %67

62:                                               ; preds = %57, %53, %49, %45, %41, %37, %33, %29, %23, %19, %13
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %3, align 8
  br label %5

65:                                               ; preds = %5
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
