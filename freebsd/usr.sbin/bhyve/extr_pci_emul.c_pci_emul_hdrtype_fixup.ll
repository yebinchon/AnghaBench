; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_hdrtype_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_hdrtype_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_MFDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*)* @pci_emul_hdrtype_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_emul_hdrtype_fixup(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @PCIR_HDRTYPE, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @PCIR_HDRTYPE, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pci_emul_is_mfdev(i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %56 [
    i32 1, label %26
    i32 2, label %26
    i32 4, label %40
  ]

26:                                               ; preds = %21, %21
  %27 = load i32, i32* @PCIM_MFDEV, align 4
  %28 = xor i32 %27, -1
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @PCIM_MFDEV, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %26
  br label %56

40:                                               ; preds = %21
  %41 = load i32, i32* @PCIM_MFDEV, align 4
  %42 = shl i32 %41, 16
  %43 = xor i32 %42, -1
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* @PCIM_MFDEV, align 4
  %51 = shl i32 %50, 16
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %21, %55, %39
  br label %57

57:                                               ; preds = %56, %15, %5
  ret void
}

declare dso_local i32 @pci_emul_is_mfdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
