; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copyin_arg0 = type { i64, i8* }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@fast_copyout = common dso_local global i64 0, align 8
@TRAMP_COPYOUT_SZ = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@copyout_slow0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyout(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.copyin_arg0, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %12, %13
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %3
  %26 = load i32, i32* @EFAULT, align 4
  store i32 %26, i32* %4, align 4
  br label %104

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @fast_copyout, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @TRAMP_COPYOUT_SZ, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 (...) @pmap_get_kcr3()
  %42 = call i64 @copyout_fast_tramp(i8* %38, i8* %39, i64 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %27
  store i32 0, i32* %4, align 4
  br label %104

45:                                               ; preds = %37, %33, %30
  store i64 0, i64* %10, align 8
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %89, %45
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %103

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = call i8* @round_page(i8* %54)
  %56 = load i8*, i8** %9, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %68, %70
  %72 = load i64, i64* %7, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %10, align 8
  %77 = sub i64 %75, %76
  %78 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @copyout_slow0, align 4
  %84 = call i64 @cp_slow0(i8* %80, i64 %82, i32 1, i32 %83, %struct.copyin_arg0* %8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @EFAULT, align 4
  store i32 %87, i32* %4, align 4
  br label %104

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr i8, i8* %92, i64 %91
  store i8* %93, i8** %9, align 8
  %94 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr i8, i8* %97, i64 %95
  store i8* %98, i8** %96, align 8
  %99 = getelementptr inbounds %struct.copyin_arg0, %struct.copyin_arg0* %8, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %10, align 8
  br label %49

103:                                              ; preds = %49
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %86, %44, %25
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @copyout_fast_tramp(i8*, i8*, i64, i32) #1

declare dso_local i32 @pmap_get_kcr3(...) #1

declare dso_local i8* @round_page(i8*) #1

declare dso_local i64 @cp_slow0(i8*, i64, i32, i32, %struct.copyin_arg0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
