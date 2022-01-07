; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_fictitious_init_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_fictitious_init_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@VPB_UNBUSIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64, i32)* @vm_phys_fictitious_init_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_phys_fictitious_init_range(%struct.TYPE_5__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = mul i64 %11, 8
  %13 = call i32 @bzero(%struct.TYPE_5__* %10, i64 %12)
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %42, %4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = load i64, i64* %9, align 8
  %25 = mul nsw i64 %23, %24
  %26 = add nsw i64 %22, %25
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @vm_page_initfake(%struct.TYPE_5__* %21, i64 %26, i32 %27)
  %29 = load i32, i32* @VPO_UNMANAGED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @VPB_UNBUSIED, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %18
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %14

45:                                               ; preds = %14
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @vm_page_initfake(%struct.TYPE_5__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
