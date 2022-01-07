; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_io_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.TYPE_2__*, %struct.pci_devemu* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.pci_devemu = type { i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32, i32)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)* }

@PCI_BARMAX = common dso_local global i32 0, align 4
@PCIBAR_IO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i32, i32, i32*, i8*)* @pci_emul_io_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_io_handler(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.pci_devinst*, align 8
  %17 = alloca %struct.pci_devemu*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = bitcast i8* %20 to %struct.pci_devinst*
  store %struct.pci_devinst* %21, %struct.pci_devinst** %16, align 8
  %22 = load %struct.pci_devinst*, %struct.pci_devinst** %16, align 8
  %23 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %22, i32 0, i32 1
  %24 = load %struct.pci_devemu*, %struct.pci_devemu** %23, align 8
  store %struct.pci_devemu* %24, %struct.pci_devemu** %17, align 8
  store i32 0, i32* %19, align 4
  br label %25

25:                                               ; preds = %113, %7
  %26 = load i32, i32* %19, align 4
  %27 = load i32, i32* @PCI_BARMAX, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %116

29:                                               ; preds = %25
  %30 = load %struct.pci_devinst*, %struct.pci_devinst** %16, align 8
  %31 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %19, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCIBAR_IO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %112

40:                                               ; preds = %29
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.pci_devinst*, %struct.pci_devinst** %16, align 8
  %43 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %41, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.pci_devinst*, %struct.pci_devinst** %16, align 8
  %56 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pci_devinst*, %struct.pci_devinst** %16, align 8
  %64 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %62, %70
  %72 = icmp sle i32 %54, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %51
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.pci_devinst*, %struct.pci_devinst** %16, align 8
  %76 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %74, %82
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %73
  %87 = load %struct.pci_devemu*, %struct.pci_devemu** %17, align 8
  %88 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %87, i32 0, i32 1
  %89 = load i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32)** %88, align 8
  %90 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.pci_devinst*, %struct.pci_devinst** %16, align 8
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 %89(%struct.vmctx* %90, i32 %91, %struct.pci_devinst* %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %14, align 8
  store i32 %96, i32* %97, align 4
  br label %111

98:                                               ; preds = %73
  %99 = load %struct.pci_devemu*, %struct.pci_devemu** %17, align 8
  %100 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %99, i32 0, i32 0
  %101 = load i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32, i32)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i32, i32, i32)** %100, align 8
  %102 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.pci_devinst*, %struct.pci_devinst** %16, align 8
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 %101(%struct.vmctx* %102, i32 %103, %struct.pci_devinst* %104, i32 %105, i32 %106, i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %98, %86
  store i32 0, i32* %8, align 4
  br label %117

112:                                              ; preds = %51, %40, %29
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %25

116:                                              ; preds = %25
  store i32 -1, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %111
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
