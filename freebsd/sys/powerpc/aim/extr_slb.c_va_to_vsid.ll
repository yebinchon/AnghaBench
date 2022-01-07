; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_va_to_vsid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_va_to_vsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slb = type { i32 }

@kernel_pmap = common dso_local global i64 0, align 8
@ADDR_SR_SHFT = common dso_local global i64 0, align 8
@SLBV_VSID_MASK = common dso_local global i32 0, align 4
@SLBV_VSID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @va_to_vsid(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.slb*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @kernel_pmap, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @ADDR_SR_SHFT, align 8
  %13 = lshr i64 %11, %12
  %14 = call i32 @KERNEL_VSID(i64 %13)
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.slb* @user_va_to_slb_entry(i64 %16, i64 %17)
  store %struct.slb* %18, %struct.slb** %6, align 8
  %19 = load %struct.slb*, %struct.slb** %6, align 8
  %20 = icmp eq %struct.slb* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @ADDR_SR_SHFT, align 8
  %25 = lshr i64 %23, %24
  %26 = call i32 @allocate_user_vsid(i64 %22, i64 %25, i32 0)
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %15
  %28 = load %struct.slb*, %struct.slb** %6, align 8
  %29 = getelementptr inbounds %struct.slb, %struct.slb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SLBV_VSID_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @SLBV_VSID_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %21, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @KERNEL_VSID(i64) #1

declare dso_local %struct.slb* @user_va_to_slb_entry(i64, i64) #1

declare dso_local i32 @allocate_user_vsid(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
