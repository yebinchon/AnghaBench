; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_flash_write_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_flash_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q8_SEM2_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i8*)* @qla_flash_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_flash_write_data(i32* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %11, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @qla_p3p_sem_lock2(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %68

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @qla_flash_unprotect(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %64

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @qla_wait_for_flash_unprotect(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %64

28:                                               ; preds = %23
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %52, %28
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %32, %33
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i64*, i64** %11, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 4294967295
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @qla_flash_write(i32* %41, i64 %42, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %9, align 4
  br label %55

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i64*, i64** %11, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %11, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 4
  store i64 %54, i64* %10, align 8
  br label %30

55:                                               ; preds = %47, %30
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @qla_flash_protect(i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @qla_wait_for_flash_protect(i32* %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %27, %22
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @Q8_SEM2_UNLOCK, align 4
  %67 = call i32 @qla_sem_unlock(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %17
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @qla_p3p_sem_lock2(i32*) #1

declare dso_local i32 @qla_flash_unprotect(i32*) #1

declare dso_local i32 @qla_wait_for_flash_unprotect(i32*) #1

declare dso_local i64 @qla_flash_write(i32*, i64, i64) #1

declare dso_local i32 @qla_flash_protect(i32*) #1

declare dso_local i32 @qla_wait_for_flash_protect(i32*) #1

declare dso_local i32 @qla_sem_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
