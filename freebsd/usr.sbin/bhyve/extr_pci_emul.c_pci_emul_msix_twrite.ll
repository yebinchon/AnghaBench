; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_msix_twrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_msix_twrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@MSIX_TABLE_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_emul_msix_twrite(%struct.pci_devinst* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %63

19:                                               ; preds = %15, %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %25 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %63

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = srem i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %63

39:                                               ; preds = %30
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %41 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %12, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %12, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load i32, i32* %9, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = bitcast i8* %56 to i32*
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %39
  %59 = load i32, i32* %9, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = bitcast i8* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %38, %29, %18
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
