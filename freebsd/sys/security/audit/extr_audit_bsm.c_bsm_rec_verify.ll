; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_bsm.c_bsm_rec_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_bsm.c_bsm_rec_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUT_HEADER32 = common dso_local global i8 0, align 1
@AUT_HEADER32_EX = common dso_local global i8 0, align 1
@AUT_HEADER64 = common dso_local global i8 0, align 1
@AUT_HEADER64_EX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsm_rec_verify(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @AUT_HEADER32, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @AUT_HEADER32_EX, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @AUT_HEADER64, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @AUT_HEADER64_EX, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %32

31:                                               ; preds = %24, %18, %12, %1
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
