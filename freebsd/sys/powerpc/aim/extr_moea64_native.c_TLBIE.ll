; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_TLBIE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_TLBIE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLBIE.tlbie_lock = internal global i64 0, align 8
@moea64_need_lock = common dso_local global i32 0, align 4
@ADDR_PIDX_SHFT = common dso_local global i32 0, align 4
@moea64_crop_tlbie = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @TLBIE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLBIE(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @moea64_need_lock, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @ADDR_PIDX_SHFT, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %20, %15
  %17 = call i32 @atomic_cmpset_int(i64* @TLBIE.tlbie_lock, i32 0, i32 1)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %16

21:                                               ; preds = %16
  %22 = call i32 (...) @isync()
  %23 = load i64, i64* @moea64_crop_tlbie, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, 281474976710655
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* %2, align 4
  %33 = ashr i32 %32, 32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %3, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  %37 = call i64 (...) @intr_disable()
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call { i64, i64 } asm sideeffect "\09    mfmsr $0; \09    mr $1, $0; \09    insrdi $1,$5,1,0; \09    mtmsrd $1; isync; \09    \09    sld $1,$2,$4; \09    or $1,$1,$3; \09    tlbie $1; \09    \09    mtmsrd $0; isync; \09    eieio; \09    tlbsync; \09    ptesync;", "=r,=r,r,r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %38, i64 %39, i32 32, i32 1) #2, !srcloc !2
  %41 = extractvalue { i64, i64 } %40, 0
  %42 = extractvalue { i64, i64 } %40, 1
  store i64 %41, i64* %5, align 8
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @intr_restore(i64 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store volatile i64 0, i64* @TLBIE.tlbie_lock, align 8
  br label %48

48:                                               ; preds = %47, %31
  ret void
}

declare dso_local i32 @atomic_cmpset_int(i64*, i32, i32) #1

declare dso_local i32 @isync(...) #1

declare dso_local i64 @intr_disable(...) #1

declare dso_local i32 @intr_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 949}
