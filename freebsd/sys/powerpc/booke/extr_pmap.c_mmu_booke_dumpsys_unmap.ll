; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_dumpsys_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_dumpsys_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }

@do_minidump = common dso_local global i64 0, align 8
@TLB1_ENTRIES = common dso_local global i32 0, align 4
@MAS1_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmu_booke_dumpsys_unmap(i32 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i64, i64* @do_minidump, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %62

17:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @TLB1_ENTRIES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @tlb1_read_entry(%struct.TYPE_4__* %12, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MAS1_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %35

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %13, align 4
  br label %18

35:                                               ; preds = %30, %18
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %13, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @tlb1_write_entry(%struct.TYPE_4__* %12, i32 %41)
  store i64 268435456, i64* %11, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @rounddown2(i64 %43, i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %50, %51
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %35
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %13, align 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @tlb1_write_entry(%struct.TYPE_4__* %12, i32 %60)
  br label %62

62:                                               ; preds = %16, %54, %35
  ret void
}

declare dso_local i32 @tlb1_read_entry(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @tlb1_write_entry(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @rounddown2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
