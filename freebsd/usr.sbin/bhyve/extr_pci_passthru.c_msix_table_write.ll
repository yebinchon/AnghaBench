; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_msix_table_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_msix_table_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.passthru_softc = type { %struct.TYPE_4__, %struct.pci_devinst* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pci_devinst = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, %struct.msix_table_entry*, i32*, i32* }
%struct.msix_table_entry = type { i32, i32, i32 }

@MSIX_TABLE_ENTRY_SIZE = common dso_local global i32 0, align 4
@PCIM_MSIX_VCTRL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*, i32, %struct.passthru_softc*, i32, i32, i32)* @msix_table_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msix_table_write(%struct.vmctx* %0, i32 %1, %struct.passthru_softc* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vmctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.passthru_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_devinst*, align 8
  %14 = alloca %struct.msix_table_entry*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.passthru_softc* %2, %struct.passthru_softc** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.passthru_softc*, %struct.passthru_softc** %9, align 8
  %23 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %22, i32 0, i32 1
  %24 = load %struct.pci_devinst*, %struct.pci_devinst** %23, align 8
  store %struct.pci_devinst* %24, %struct.pci_devinst** %13, align 8
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %26 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %129

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %33 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %31, %35
  br i1 %36, label %37, label %129

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %40 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %44 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %42, %46
  %48 = icmp slt i32 %38, %47
  br i1 %48, label %49, label %129

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  switch i32 %50, label %127 [
    i32 1, label %51
    i32 2, label %70
    i32 4, label %89
    i32 8, label %108
  ]

51:                                               ; preds = %49
  %52 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %53 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %60 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = ptrtoint i32* %58 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %15, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %15, align 8
  store i32 %68, i32* %69, align 4
  br label %128

70:                                               ; preds = %49
  %71 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %72 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %79 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = ptrtoint i32* %77 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %16, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %16, align 8
  store i32 %87, i32* %88, align 4
  br label %128

89:                                               ; preds = %49
  %90 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %91 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %98 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = ptrtoint i32* %96 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %17, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32*, i32** %17, align 8
  store i32 %106, i32* %107, align 4
  br label %128

108:                                              ; preds = %49
  %109 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %110 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %117 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = ptrtoint i32* %115 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %18, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32*, i32** %18, align 8
  store i32 %125, i32* %126, align 4
  br label %128

127:                                              ; preds = %49
  br label %128

128:                                              ; preds = %127, %108, %89, %70, %51
  br label %229

129:                                              ; preds = %37, %30, %6
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %132 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %130, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %229

137:                                              ; preds = %129
  %138 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %139 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %146 = sdiv i32 %144, %145
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %21, align 4
  %148 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %149 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %147, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %137
  br label %229

154:                                              ; preds = %137
  %155 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %156 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 5
  %158 = load %struct.msix_table_entry*, %struct.msix_table_entry** %157, align 8
  %159 = load i32, i32* %21, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %158, i64 %160
  store %struct.msix_table_entry* %161, %struct.msix_table_entry** %14, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %164 = srem i32 %162, %163
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %19, align 8
  %166 = load i32, i32* %11, align 4
  %167 = icmp eq i32 %166, 4
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i64, i64* %19, align 8
  %171 = urem i64 %170, 4
  %172 = icmp eq i64 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load %struct.msix_table_entry*, %struct.msix_table_entry** %14, align 8
  %176 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %20, align 4
  %178 = load %struct.msix_table_entry*, %struct.msix_table_entry** %14, align 8
  %179 = bitcast %struct.msix_table_entry* %178 to i8*
  %180 = load i64, i64* %19, align 8
  %181 = getelementptr i8, i8* %179, i64 %180
  %182 = bitcast i8* %181 to i32*
  store i32* %182, i32** %17, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load i32*, i32** %17, align 8
  store i32 %183, i32* %184, align 4
  %185 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  %186 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %229

190:                                              ; preds = %154
  %191 = load %struct.msix_table_entry*, %struct.msix_table_entry** %14, align 8
  %192 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @PCIM_MSIX_VCTRL_MASK, align 4
  %195 = and i32 %193, %194
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* @PCIM_MSIX_VCTRL_MASK, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %228

202:                                              ; preds = %197, %190
  %203 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.passthru_softc*, %struct.passthru_softc** %9, align 8
  %206 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.passthru_softc*, %struct.passthru_softc** %9, align 8
  %210 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.passthru_softc*, %struct.passthru_softc** %9, align 8
  %214 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %21, align 4
  %218 = load %struct.msix_table_entry*, %struct.msix_table_entry** %14, align 8
  %219 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.msix_table_entry*, %struct.msix_table_entry** %14, align 8
  %222 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.msix_table_entry*, %struct.msix_table_entry** %14, align 8
  %225 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @vm_setup_pptdev_msix(%struct.vmctx* %203, i32 %204, i32 %208, i32 %212, i32 %216, i32 %217, i32 %220, i32 %223, i32 %226)
  br label %228

228:                                              ; preds = %202, %197
  br label %229

229:                                              ; preds = %128, %136, %153, %228, %154
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_setup_pptdev_msix(%struct.vmctx*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
