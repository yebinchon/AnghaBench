; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_subr.c_host_pcib_get_busno.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_subr.c_host_pcib_get_busno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_DEVVENDOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_pcib_get_busno(i8* (i32, i32, i32, i32, i32)* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8* (i32, i32, i32, i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* (i32, i32, i32, i32, i32)* %0, i8* (i32, i32, i32, i32, i32)** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i8* (i32, i32, i32, i32, i32)*, i8* (i32, i32, i32, i32, i32)** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @PCIR_DEVVENDOR, align 4
  %18 = call i8* %13(i32 %14, i32 %15, i32 %16, i32 %17, i32 4)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %88

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %86 [
    i32 304447622, label %25
    i32 -2067496826, label %28
    i32 -2067103610, label %36
    i32 -2067038074, label %37
    i32 332134, label %70
    i32 397670, label %70
    i32 528742, label %70
    i32 594278, label %70
    i32 1053030, label %70
    i32 1118566, label %70
    i32 1511782, label %70
    i32 16847206, label %70
    i32 17764372, label %70
    i32 17830246, label %70
    i32 33624422, label %70
    i32 35983718, label %70
    i32 50466836, label %70
    i32 1611664913, label %78
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  br label %87

28:                                               ; preds = %23
  %29 = load i8* (i32, i32, i32, i32, i32)*, i8* (i32, i32, i32, i32, i32)** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i8* %29(i32 %30, i32 %31, i32 %32, i32 74, i32 1)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  br label %87

36:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %88

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %69 [
    i32 18, label %39
    i32 19, label %46
    i32 20, label %54
    i32 21, label %61
  ]

39:                                               ; preds = %37
  %40 = load i8* (i32, i32, i32, i32, i32)*, i8* (i32, i32, i32, i32, i32)** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i8* %40(i32 %41, i32 16, i32 %42, i32 208, i32 1)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  br label %69

46:                                               ; preds = %37
  %47 = load i8* (i32, i32, i32, i32, i32)*, i8* (i32, i32, i32, i32, i32)** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i8* %47(i32 %48, i32 16, i32 %49, i32 209, i32 1)
  %51 = getelementptr i8, i8* %50, i64 1
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  br label %69

54:                                               ; preds = %37
  %55 = load i8* (i32, i32, i32, i32, i32)*, i8* (i32, i32, i32, i32, i32)** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i8* %55(i32 %56, i32 16, i32 %57, i32 211, i32 1)
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  br label %69

61:                                               ; preds = %37
  %62 = load i8* (i32, i32, i32, i32, i32)*, i8* (i32, i32, i32, i32, i32)** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i8* %62(i32 %63, i32 16, i32 %64, i32 212, i32 1)
  %66 = getelementptr i8, i8* %65, i64 1
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %37, %61, %54, %46, %39
  br label %87

70:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %71 = load i8* (i32, i32, i32, i32, i32)*, i8* (i32, i32, i32, i32, i32)** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i8* %71(i32 %72, i32 %73, i32 %74, i32 68, i32 1)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %87

78:                                               ; preds = %23
  %79 = load i8* (i32, i32, i32, i32, i32)*, i8* (i32, i32, i32, i32, i32)** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i8* %79(i32 %80, i32 %81, i32 %82, i32 200, i32 1)
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  br label %87

86:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %88

87:                                               ; preds = %78, %70, %69, %28, %25
  store i32 1, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %86, %36, %22
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
