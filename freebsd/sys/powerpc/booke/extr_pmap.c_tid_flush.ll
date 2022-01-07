; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tid_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tid_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TID_KERNEL = common dso_local global i32 0, align 4
@SPR_MAS6 = common dso_local global i32 0, align 4
@MAS6_SPID0_SHIFT = common dso_local global i32 0, align 4
@TLB0_WAYS = common dso_local global i32 0, align 4
@TLB0_ENTRIES_PER_WAY = common dso_local global i32 0, align 4
@SPR_MAS0 = common dso_local global i32 0, align 4
@MAS2_TLB0_ENTRY_IDX_SHIFT = common dso_local global i32 0, align 4
@SPR_MAS2 = common dso_local global i32 0, align 4
@SPR_MAS1 = common dso_local global i32 0, align 4
@MAS1_VALID = common dso_local global i32 0, align 4
@MAS1_TID_MASK = common dso_local global i32 0, align 4
@MAS1_TID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tid_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tid_flush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @TID_KERNEL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %82

13:                                               ; preds = %1
  %14 = call i32 (...) @mfmsr()
  store i32 %14, i32* %3, align 4
  call void asm sideeffect "wrteei 0", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %15 = call i32 (...) @mfpvr()
  %16 = ashr i32 %15, 16
  %17 = and i32 %16, 65535
  switch i32 %17, label %25 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %13, %13, %13
  %19 = load i32, i32* @SPR_MAS6, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @MAS6_SPID0_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = call i32 @mtspr(i32 %19, i32 %22)
  call void asm sideeffect "isync; .long 0x7c000024; isync; msync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %24 = load i32, i32* %3, align 4
  call void asm sideeffect "wrtee $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %24) #2, !srcloc !4
  br label %82

25:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %77, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TLB0_WAYS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %73, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @TLB0_ENTRIES_PER_WAY, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = call i32 @MAS0_TLBSEL(i32 0)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @MAS0_ESEL(i32 %37)
  %39 = or i32 %36, %38
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @SPR_MAS0, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @mtspr(i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MAS2_TLB0_ENTRY_IDX_SHIFT, align 4
  %45 = shl i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @SPR_MAS2, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mtspr(i32 %46, i32 %47)
  call void asm sideeffect "isync; tlbre", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  %49 = load i32, i32* @SPR_MAS1, align 4
  %50 = call i32 @mfspr(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MAS1_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %35
  br label %73

56:                                               ; preds = %35
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MAS1_TID_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @MAS1_TID_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* %2, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %73

65:                                               ; preds = %56
  %66 = load i32, i32* @MAS1_VALID, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @SPR_MAS1, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @mtspr(i32 %70, i32 %71)
  call void asm sideeffect "isync; tlbwe; isync; msync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  br label %73

73:                                               ; preds = %65, %64, %55
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %31

76:                                               ; preds = %31
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %26

80:                                               ; preds = %26
  %81 = load i32, i32* %3, align 4
  call void asm sideeffect "wrtee $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %81) #2, !srcloc !7
  br label %82

82:                                               ; preds = %80, %18, %12
  ret void
}

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @MAS0_TLBSEL(i32) #1

declare dso_local i32 @MAS0_ESEL(i32) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 780}
!3 = !{i32 932}
!4 = !{i32 993}
!5 = !{i32 1294}
!6 = !{i32 1525}
!7 = !{i32 1578}
