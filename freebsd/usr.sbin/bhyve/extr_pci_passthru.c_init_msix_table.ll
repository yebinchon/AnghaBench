; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_init_msix_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_init_msix_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.passthru_softc = type { %struct.TYPE_4__, %struct.pci_devinst* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pci_devinst = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i64, i64, i64, i32* }
%struct.TYPE_5__ = type { i64, i64 }

@MSIX_TABLE_ENTRY_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@memfd = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Failed to map PBA page for MSI-X on %d/%d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.passthru_softc*, i64)* @init_msix_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_msix_table(%struct.vmctx* %0, %struct.passthru_softc* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.passthru_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.pci_devinst*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.passthru_softc* %1, %struct.passthru_softc** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load %struct.passthru_softc*, %struct.passthru_softc** %6, align 8
  %22 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %21, i32 0, i32 1
  %23 = load %struct.pci_devinst*, %struct.pci_devinst** %22, align 8
  store %struct.pci_devinst* %23, %struct.pci_devinst** %20, align 8
  %24 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %25 = call i64 @pci_msix_table_bar(%struct.pci_devinst* %24)
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %29 = call i64 @pci_msix_pba_bar(%struct.pci_devinst* %28)
  %30 = icmp sge i64 %29, 0
  br label %31

31:                                               ; preds = %27, %3
  %32 = phi i1 [ false, %3 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.passthru_softc*, %struct.passthru_softc** %6, align 8
  %36 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  %39 = load %struct.passthru_softc*, %struct.passthru_softc** %6, align 8
  %40 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.passthru_softc*, %struct.passthru_softc** %6, align 8
  %44 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %48 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @rounddown2(i64 %50, i32 4096)
  store i64 %51, i64* %16, align 8
  %52 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %53 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %15, align 8
  %58 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %59 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %15, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i64 @roundup2(i64 %67, i32 4096)
  store i64 %68, i64* %15, align 8
  %69 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %70 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %74 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %19, align 8
  %81 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %82 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  %89 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %90 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %94 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %171

98:                                               ; preds = %31
  %99 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %100 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %18, align 8
  %103 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %104 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %15, align 8
  %110 = add nsw i64 %108, %109
  %111 = icmp sge i64 %107, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %98
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %17, align 8
  %116 = add nsw i64 %114, %115
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112, %98
  %119 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %120 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 7
  store i32* null, i32** %121, align 8
  %122 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %123 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 6
  store i64 0, i64* %124, align 8
  br label %170

125:                                              ; preds = %112
  %126 = load i64, i64* %18, align 8
  %127 = load i64, i64* %16, align 8
  %128 = icmp sle i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i64, i64* %16, align 8
  %131 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %132 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 6
  store i64 %130, i64* %133, align 8
  br label %142

134:                                              ; preds = %125
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* %15, align 8
  %137 = add nsw i64 %135, %136
  %138 = sub nsw i64 %137, 4096
  %139 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %140 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  store i64 %138, i64* %141, align 8
  br label %142

142:                                              ; preds = %134, %129
  %143 = load i32, i32* @PROT_READ, align 4
  %144 = load i32, i32* @PROT_WRITE, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @MAP_SHARED, align 4
  %147 = load i32, i32* @memfd, align 4
  %148 = load i64, i64* %19, align 8
  %149 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %150 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %148, %152
  %154 = call i32* @mmap(i32* null, i32 4096, i32 %145, i32 %146, i32 %147, i64 %153)
  %155 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %156 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 7
  store i32* %154, i32** %157, align 8
  %158 = load %struct.pci_devinst*, %struct.pci_devinst** %20, align 8
  %159 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = load i32*, i32** @MAP_FAILED, align 8
  %163 = icmp eq i32* %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %142
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %165, i32 %166, i32 %167)
  store i32 -1, i32* %4, align 4
  br label %226

169:                                              ; preds = %142
  br label %170

170:                                              ; preds = %169, %118
  br label %171

171:                                              ; preds = %170, %31
  %172 = load i64, i64* %16, align 8
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %198

174:                                              ; preds = %171
  %175 = load i64, i64* %16, align 8
  store i64 %175, i64* %13, align 8
  %176 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i64, i64* %19, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %7, align 8
  %183 = call i32 @vm_map_pptdev_mmio(%struct.vmctx* %176, i32 %177, i32 %178, i32 %179, i64 %180, i64 %181, i64 %182)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %174
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %4, align 4
  br label %226

188:                                              ; preds = %174
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* %7, align 8
  %191 = add i64 %190, %189
  store i64 %191, i64* %7, align 8
  %192 = load i64, i64* %13, align 8
  %193 = load i64, i64* %19, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %19, align 8
  %195 = load i64, i64* %13, align 8
  %196 = load i64, i64* %14, align 8
  %197 = sub i64 %196, %195
  store i64 %197, i64* %14, align 8
  br label %198

198:                                              ; preds = %188, %171
  %199 = load i64, i64* %15, align 8
  %200 = load i64, i64* %7, align 8
  %201 = add i64 %200, %199
  store i64 %201, i64* %7, align 8
  %202 = load i64, i64* %15, align 8
  %203 = load i64, i64* %19, align 8
  %204 = add nsw i64 %203, %202
  store i64 %204, i64* %19, align 8
  %205 = load i64, i64* %15, align 8
  %206 = load i64, i64* %14, align 8
  %207 = sub i64 %206, %205
  store i64 %207, i64* %14, align 8
  %208 = load i64, i64* %14, align 8
  %209 = icmp ugt i64 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %198
  %211 = load i64, i64* %14, align 8
  store i64 %211, i64* %13, align 8
  %212 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i64, i64* %19, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load i64, i64* %7, align 8
  %219 = call i32 @vm_map_pptdev_mmio(%struct.vmctx* %212, i32 %213, i32 %214, i32 %215, i64 %216, i64 %217, i64 %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %210
  %223 = load i32, i32* %11, align 4
  store i32 %223, i32* %4, align 4
  br label %226

224:                                              ; preds = %210
  br label %225

225:                                              ; preds = %224, %198
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %222, %186, %164
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pci_msix_table_bar(%struct.pci_devinst*) #1

declare dso_local i64 @pci_msix_pba_bar(%struct.pci_devinst*) #1

declare dso_local i64 @rounddown2(i64, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32* @mmap(i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @warn(i8*, i32, i32, i32) #1

declare dso_local i32 @vm_map_pptdev_mmio(%struct.vmctx*, i32, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
