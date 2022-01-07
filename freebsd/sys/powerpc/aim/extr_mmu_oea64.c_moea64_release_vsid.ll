; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_release_vsid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_release_vsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@moea64_slb_mutex = common dso_local global i32 0, align 4
@NVSIDS = common dso_local global i32 0, align 4
@VSID_NBPW = common dso_local global i32 0, align 4
@moea64_vsid_bitmap = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Freeing unallocated VSID %#jx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_release_vsid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @mtx_lock(i32* @moea64_slb_mutex)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @NVSIDS, align 4
  %8 = sub nsw i32 %7, 1
  %9 = and i32 %6, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VSID_NBPW, align 4
  %12 = srem i32 %10, %11
  %13 = shl i32 1, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @VSID_NBPW, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** @moea64_vsid_bitmap, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %23, i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = xor i32 %28, -1
  %30 = load i32*, i32** @moea64_vsid_bitmap, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = call i32 @mtx_unlock(i32* @moea64_slb_mutex)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
