; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_erase_flash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_erase_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q8_FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@Q8_SEM2_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla_erase_flash(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @Q8_FLASH_SECTOR_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %58

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @qla_p3p_sem_lock2(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %56

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @qla_flash_unprotect(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %52

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @qla_wait_for_flash_unprotect(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %52

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %46, %31
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @qla_erase_flash_sector(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 -1, i32* %8, align 4
  br label %49

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 65536
  store i32 %48, i32* %9, align 4
  br label %33

49:                                               ; preds = %44, %33
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @qla_flash_protect(i32* %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %30, %25
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @Q8_SEM2_UNLOCK, align 4
  %55 = call i32 @qla_sem_unlock(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %20
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @qla_p3p_sem_lock2(i32*) #1

declare dso_local i32 @qla_flash_unprotect(i32*) #1

declare dso_local i32 @qla_wait_for_flash_unprotect(i32*) #1

declare dso_local i64 @qla_erase_flash_sector(i32*, i32) #1

declare dso_local i32 @qla_flash_protect(i32*) #1

declare dso_local i32 @qla_sem_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
