; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.pci_fbuf_softc* }
%struct.pci_fbuf_softc = type { i32 }

@DMEMSZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"fbuf: read too large, offset %ld size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"fbuf: read unknown size %d\0A\00", align 1
@DEBUG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"fbuf rd: offset 0x%lx, size: %d, value: 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pci_fbuf_read(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pci_fbuf_softc*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %22 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %21, i32 0, i32 0
  %23 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %22, align 8
  store %struct.pci_fbuf_softc* %23, %struct.pci_fbuf_softc** %14, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i64, i64* @DMEMSZ, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load i64, i64* %12, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  store i64 0, i64* %7, align 8
  br label %65

35:                                               ; preds = %6
  %36 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %14, align 8
  %37 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to i64*
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64* %40, i64** %15, align 8
  store i64 0, i64* %16, align 8
  %41 = load i32, i32* %13, align 4
  switch i32 %41, label %54 [
    i32 1, label %42
    i32 2, label %45
    i32 4, label %48
    i32 8, label %51
  ]

42:                                               ; preds = %35
  %43 = load i64*, i64** %15, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  br label %57

45:                                               ; preds = %35
  %46 = load i64*, i64** %15, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %16, align 8
  br label %57

48:                                               ; preds = %35
  %49 = load i64*, i64** %15, align 8
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %16, align 8
  br label %57

51:                                               ; preds = %35
  %52 = load i64*, i64** %15, align 8
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %16, align 8
  br label %57

54:                                               ; preds = %35
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51, %48, %45, %42
  %58 = load i32, i32* @DEBUG_VERBOSE, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i64, i64* %16, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @DPRINTF(i32 %58, i8* %62)
  %64 = load i64, i64* %16, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %57, %30
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
