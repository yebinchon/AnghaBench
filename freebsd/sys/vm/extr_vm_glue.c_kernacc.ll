; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_kernacc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_kernacc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_PROT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"illegal ``rw'' argument to kernacc (%x)\0A\00", align 1
@kernel_map = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernacc(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @VM_PROT_ALL, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %17, i8* %20)
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* @kernel_map, align 4
  %28 = call i64 @vm_map_max(i32 %27)
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30, %3
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = call i64 @trunc_page(i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i64 @round_page(i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i32, i32* @kernel_map, align 4
  %53 = call i32 @vm_map_lock_read(i32 %52)
  %54 = load i32, i32* @kernel_map, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @vm_map_check_protection(i32 %54, i64 %55, i64 %56, i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i32, i32* @kernel_map, align 4
  %60 = call i32 @vm_map_unlock_read(i32 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %41, %39
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_map_max(i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_map_lock_read(i32) #1

declare dso_local i64 @vm_map_check_protection(i32, i64, i64, i32) #1

declare dso_local i32 @vm_map_unlock_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
