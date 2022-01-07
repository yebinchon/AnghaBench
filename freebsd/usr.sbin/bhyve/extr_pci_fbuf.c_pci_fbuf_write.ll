; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.pci_fbuf_softc* }
%struct.pci_fbuf_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@DEBUG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"fbuf wr: offset 0x%lx, size: %d, value: 0x%lx\0A\00", align 1
@DMEMSZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"fbuf: write too large, offset %ld size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"fbuf: write unknown size %d\0A\00", align 1
@DEBUG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"switching to VGA mode\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"switching to VESA mode\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)* @pci_fbuf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fbuf_write(%struct.vmctx* %0, i32 %1, %struct.pci_devinst* %2, i32 %3, i64 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_devinst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.pci_fbuf_softc*, align 8
  %16 = alloca i64*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pci_devinst* %2, %struct.pci_devinst** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %10, align 8
  %22 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %21, i32 0, i32 0
  %23 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %22, align 8
  store %struct.pci_fbuf_softc* %23, %struct.pci_fbuf_softc** %15, align 8
  %24 = load i32, i32* @DEBUG_VERBOSE, align 4
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i64, i64* %14, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DPRINTF(i32 %24, i8* %28)
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i64, i64* @DMEMSZ, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %7
  %37 = load i64, i64* %12, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %13, align 4
  %40 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  br label %120

41:                                               ; preds = %7
  %42 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %43 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %42, i32 0, i32 1
  %44 = bitcast %struct.TYPE_3__* %43 to i64*
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64* %46, i64** %16, align 8
  %47 = load i32, i32* %13, align 4
  switch i32 %47, label %60 [
    i32 1, label %48
    i32 2, label %51
    i32 4, label %54
    i32 8, label %57
  ]

48:                                               ; preds = %41
  %49 = load i64, i64* %14, align 8
  %50 = load i64*, i64** %16, align 8
  store i64 %49, i64* %50, align 8
  br label %63

51:                                               ; preds = %41
  %52 = load i64, i64* %14, align 8
  %53 = load i64*, i64** %16, align 8
  store i64 %52, i64* %53, align 8
  br label %63

54:                                               ; preds = %41
  %55 = load i64, i64* %14, align 8
  %56 = load i64*, i64** %16, align 8
  store i64 %55, i64* %56, align 8
  br label %63

57:                                               ; preds = %41
  %58 = load i64, i64* %14, align 8
  %59 = load i64*, i64** %16, align 8
  store i64 %58, i64* %59, align 8
  br label %63

60:                                               ; preds = %41
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %57, %54, %51, %48
  %64 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %65 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %63
  %71 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %72 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %78 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load i32, i32* @DEBUG_INFO, align 4
  %84 = call i32 @DPRINTF(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %86 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %90 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %92 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  br label %120

93:                                               ; preds = %76, %70, %63
  %94 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %95 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %93
  %101 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %102 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %108 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i32, i32* @DEBUG_INFO, align 4
  %114 = call i32 @DPRINTF(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %115 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %15, align 8
  %116 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %106, %100, %93
  br label %120

120:                                              ; preds = %36, %119, %82
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
