; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_dumpsys_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_dumpsys_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_minidump = common dso_local global i64 0, align 8
@_TLB_ENTRY_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmu_booke_dumpsys_map(i32 %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = load i64, i64* @do_minidump, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load i8**, i8*** %8, align 8
  store i8* %16, i8** %17, align 8
  br label %50

18:                                               ; preds = %4
  store i64 268435456, i64* %11, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @rounddown2(i64 %19, i64 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = sub i64 %22, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8**, i8*** %8, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = ptrtoint i8** %28 to i64
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* @_TLB_ENTRY_IO, align 4
  %33 = call i32 @tlb1_set_entry(i64 %29, i64 %30, i64 %31, i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = sub i64 %35, %36
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %18
  %40 = load i8**, i8*** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = ptrtoint i8** %42 to i64
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* @_TLB_ENTRY_IO, align 4
  %49 = call i32 @tlb1_set_entry(i64 %43, i64 %46, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %14, %39, %18
  ret void
}

declare dso_local i64 @rounddown2(i64, i64) #1

declare dso_local i32 @tlb1_set_entry(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
