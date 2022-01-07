; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb1_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_MAS0 = common dso_local global i32 0, align 4
@SPR_MAS1 = common dso_local global i32 0, align 4
@SPR_MAS2 = common dso_local global i32 0, align 4
@SPR_MAS3 = common dso_local global i32 0, align 4
@SPR_MAS7 = common dso_local global i32 0, align 4
@MAS7_RPN = common dso_local global i32 0, align 4
@MAS3_RPN = common dso_local global i32 0, align 4
@kernload = common dso_local global i32 0, align 4
@MAS1_TSIZE_MASK = common dso_local global i32 0, align 4
@MAS1_TSIZE_SHIFT = common dso_local global i32 0, align 4
@kernsize = common dso_local global i32 0, align 4
@kernstart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb1_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @tlb1_get_tlbconf()
  %8 = call i32 @MAS0_TLBSEL(i32 1)
  %9 = call i32 @MAS0_ESEL(i32 0)
  %10 = or i32 %8, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @SPR_MAS0, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @mtspr(i32 %11, i32 %12)
  call void asm sideeffect "isync; tlbre", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %14 = load i32, i32* @SPR_MAS1, align 4
  %15 = call i8* @mfspr(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @SPR_MAS2, align 4
  %18 = call i8* @mfspr(i32 %17)
  store i8* %18, i8** %1, align 8
  %19 = load i32, i32* @SPR_MAS3, align 4
  %20 = call i8* @mfspr(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @SPR_MAS7, align 4
  %23 = call i8* @mfspr(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MAS7_RPN, align 4
  %27 = and i32 %25, %26
  %28 = shl i32 %27, 32
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MAS3_RPN, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  store i32 %32, i32* @kernload, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MAS1_TSIZE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @MAS1_TSIZE_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @tsize2size(i32 %41)
  br label %44

43:                                               ; preds = %0
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 0, %43 ]
  %46 = load i32, i32* @kernsize, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* @kernsize, align 4
  %48 = load i8*, i8** %1, align 8
  %49 = call i32 @trunc_page(i8* %48)
  store i32 %49, i32* @kernstart, align 4
  %50 = call i32 (...) @set_mas4_defaults()
  ret void
}

declare dso_local i32 @tlb1_get_tlbconf(...) #1

declare dso_local i32 @MAS0_TLBSEL(i32) #1

declare dso_local i32 @MAS0_ESEL(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i8* @mfspr(i32) #1

declare dso_local i32 @tsize2size(i32) #1

declare dso_local i32 @trunc_page(i8*) #1

declare dso_local i32 @set_mas4_defaults(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 817}
