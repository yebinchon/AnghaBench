; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_suword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_copyout.c_suword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@fast_copyout = common dso_local global i64 0, align 8
@suword_slow0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @suword(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = add i64 %7, 8
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = add i64 %14, 8
  %16 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %37

19:                                               ; preds = %12
  %20 = load i64, i64* @fast_copyout, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (...) @pmap_get_kcr3()
  %26 = call i64 @suword_fast_tramp(i8* %23, i64 %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %37

29:                                               ; preds = %22, %19
  %30 = load i8*, i8** %4, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32, i32* @suword_slow0, align 4
  %33 = call i64 @cp_slow0(i32 %31, i32 8, i32 1, i32 %32, i64* %5)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 -1, i32 0
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %28, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @suword_fast_tramp(i8*, i64, i32) #1

declare dso_local i32 @pmap_get_kcr3(...) #1

declare dso_local i64 @cp_slow0(i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
