; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_mem_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_emul_mem_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.TYPE_2__*, %struct.pci_devemu* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.pci_devemu = type { i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)* }

@PCI_BARMAX = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i64 0, align 8
@PCIBAR_MEM64 = common dso_local global i64 0, align 8
@MEM_F_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32, i64, i32, i64*, i8*, i64)* @pci_emul_mem_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_mem_handler(%struct.vmctx* %0, i32 %1, i32 %2, i64 %3, i32 %4, i64* %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.pci_devinst*, align 8
  %18 = alloca %struct.pci_devemu*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %21 = load i8*, i8** %15, align 8
  %22 = bitcast i8* %21 to %struct.pci_devinst*
  store %struct.pci_devinst* %22, %struct.pci_devinst** %17, align 8
  %23 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %24 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %23, i32 0, i32 1
  %25 = load %struct.pci_devemu*, %struct.pci_devemu** %24, align 8
  store %struct.pci_devemu* %25, %struct.pci_devemu** %18, align 8
  %26 = load i64, i64* %16, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = load i32, i32* @PCI_BARMAX, align 4
  %30 = icmp sle i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %34 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %20, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCIBAR_MEM32, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %8
  %44 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %45 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCIBAR_MEM64, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %43, %8
  %55 = phi i1 [ true, %8 ], [ %53, %43 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %60 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %58, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %54
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %74 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %82 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %80, %88
  %90 = icmp sle i64 %72, %89
  br label %91

91:                                               ; preds = %68, %54
  %92 = phi i1 [ false, %54 ], [ %90, %68 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %97 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %95, %103
  store i64 %104, i64* %19, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @MEM_F_WRITE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %151

108:                                              ; preds = %91
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, 8
  br i1 %110, label %111, label %137

111:                                              ; preds = %108
  %112 = load %struct.pci_devemu*, %struct.pci_devemu** %18, align 8
  %113 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %112, i32 0, i32 1
  %114 = load i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)** %113, align 8
  %115 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %118 = load i32, i32* %20, align 4
  %119 = load i64, i64* %19, align 8
  %120 = load i64*, i64** %14, align 8
  %121 = load i64, i64* %120, align 8
  %122 = and i64 %121, 4294967295
  %123 = call i32 %114(%struct.vmctx* %115, i32 %116, %struct.pci_devinst* %117, i32 %118, i64 %119, i32 4, i64 %122)
  %124 = load %struct.pci_devemu*, %struct.pci_devemu** %18, align 8
  %125 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %124, i32 0, i32 1
  %126 = load i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)** %125, align 8
  %127 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load i64, i64* %19, align 8
  %132 = add nsw i64 %131, 4
  %133 = load i64*, i64** %14, align 8
  %134 = load i64, i64* %133, align 8
  %135 = ashr i64 %134, 32
  %136 = call i32 %126(%struct.vmctx* %127, i32 %128, %struct.pci_devinst* %129, i32 %130, i64 %132, i32 4, i64 %135)
  br label %150

137:                                              ; preds = %108
  %138 = load %struct.pci_devemu*, %struct.pci_devemu** %18, align 8
  %139 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %138, i32 0, i32 1
  %140 = load i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)*, i32 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32, i64)** %139, align 8
  %141 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %144 = load i32, i32* %20, align 4
  %145 = load i64, i64* %19, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i64*, i64** %14, align 8
  %148 = load i64, i64* %147, align 8
  %149 = call i32 %140(%struct.vmctx* %141, i32 %142, %struct.pci_devinst* %143, i32 %144, i64 %145, i32 %146, i64 %148)
  br label %150

150:                                              ; preds = %137, %111
  br label %192

151:                                              ; preds = %91
  %152 = load i32, i32* %13, align 4
  %153 = icmp eq i32 %152, 8
  br i1 %153, label %154, label %179

154:                                              ; preds = %151
  %155 = load %struct.pci_devemu*, %struct.pci_devemu** %18, align 8
  %156 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %155, i32 0, i32 0
  %157 = load i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)*, i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)** %156, align 8
  %158 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %161 = load i32, i32* %20, align 4
  %162 = load i64, i64* %19, align 8
  %163 = call i64 %157(%struct.vmctx* %158, i32 %159, %struct.pci_devinst* %160, i32 %161, i64 %162, i32 4)
  %164 = load i64*, i64** %14, align 8
  store i64 %163, i64* %164, align 8
  %165 = load %struct.pci_devemu*, %struct.pci_devemu** %18, align 8
  %166 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %165, i32 0, i32 0
  %167 = load i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)*, i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)** %166, align 8
  %168 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %171 = load i32, i32* %20, align 4
  %172 = load i64, i64* %19, align 8
  %173 = add nsw i64 %172, 4
  %174 = call i64 %167(%struct.vmctx* %168, i32 %169, %struct.pci_devinst* %170, i32 %171, i64 %173, i32 4)
  %175 = shl i64 %174, 32
  %176 = load i64*, i64** %14, align 8
  %177 = load i64, i64* %176, align 8
  %178 = or i64 %177, %175
  store i64 %178, i64* %176, align 8
  br label %191

179:                                              ; preds = %151
  %180 = load %struct.pci_devemu*, %struct.pci_devemu** %18, align 8
  %181 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %180, i32 0, i32 0
  %182 = load i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)*, i64 (%struct.vmctx*, i32, %struct.pci_devinst*, i32, i64, i32)** %181, align 8
  %183 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.pci_devinst*, %struct.pci_devinst** %17, align 8
  %186 = load i32, i32* %20, align 4
  %187 = load i64, i64* %19, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i64 %182(%struct.vmctx* %183, i32 %184, %struct.pci_devinst* %185, i32 %186, i64 %187, i32 %188)
  %190 = load i64*, i64** %14, align 8
  store i64 %189, i64* %190, align 8
  br label %191

191:                                              ; preds = %179, %154
  br label %192

192:                                              ; preds = %191, %150
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
