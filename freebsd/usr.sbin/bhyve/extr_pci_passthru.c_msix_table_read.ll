; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_msix_table_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_msix_table_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passthru_softc = type { %struct.pci_devinst* }
%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.msix_table_entry*, i32*, i32* }
%struct.msix_table_entry = type { i32 }

@MSIX_TABLE_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passthru_softc*, i32, i32)* @msix_table_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msix_table_read(%struct.passthru_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.passthru_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_devinst*, align 8
  %9 = alloca %struct.msix_table_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.passthru_softc* %0, %struct.passthru_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.passthru_softc*, %struct.passthru_softc** %5, align 8
  %18 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %17, i32 0, i32 0
  %19 = load %struct.pci_devinst*, %struct.pci_devinst** %18, align 8
  store %struct.pci_devinst* %19, %struct.pci_devinst** %8, align 8
  %20 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %21 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %125

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %28 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %26, %30
  br i1 %31, label %32, label %125

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %35 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %39 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  %43 = icmp slt i32 %33, %42
  br i1 %43, label %44, label %125

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %122 [
    i32 1, label %46
    i32 2, label %65
    i32 4, label %84
    i32 8, label %103
  ]

46:                                               ; preds = %44
  %47 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %48 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %55 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = ptrtoint i32* %53 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %14, align 4
  br label %123

65:                                               ; preds = %44
  %66 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %67 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %74 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = ptrtoint i32* %72 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %11, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  br label %123

84:                                               ; preds = %44
  %85 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %86 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %93 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = ptrtoint i32* %91 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %14, align 4
  br label %123

103:                                              ; preds = %44
  %104 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %105 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %112 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = ptrtoint i32* %110 to i64
  %116 = ptrtoint i32* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 4
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %13, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %14, align 4
  br label %123

122:                                              ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %198

123:                                              ; preds = %103, %84, %65, %46
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %4, align 4
  br label %198

125:                                              ; preds = %32, %25, %3
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %128 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %198

133:                                              ; preds = %125
  %134 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %135 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %142 = sdiv i32 %140, %141
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %145 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %143, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %133
  store i32 -1, i32* %4, align 4
  br label %198

150:                                              ; preds = %133
  %151 = load %struct.pci_devinst*, %struct.pci_devinst** %8, align 8
  %152 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 4
  %154 = load %struct.msix_table_entry*, %struct.msix_table_entry** %153, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %154, i64 %156
  store %struct.msix_table_entry* %157, %struct.msix_table_entry** %9, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %160 = srem i32 %158, %159
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %15, align 8
  %162 = load i32, i32* %7, align 4
  switch i32 %162, label %195 [
    i32 1, label %163
    i32 2, label %171
    i32 4, label %179
    i32 8, label %187
  ]

163:                                              ; preds = %150
  %164 = load %struct.msix_table_entry*, %struct.msix_table_entry** %9, align 8
  %165 = bitcast %struct.msix_table_entry* %164 to i8*
  %166 = load i64, i64* %15, align 8
  %167 = getelementptr i8, i8* %165, i64 %166
  %168 = bitcast i8* %167 to i32*
  store i32* %168, i32** %10, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %14, align 4
  br label %196

171:                                              ; preds = %150
  %172 = load %struct.msix_table_entry*, %struct.msix_table_entry** %9, align 8
  %173 = bitcast %struct.msix_table_entry* %172 to i8*
  %174 = load i64, i64* %15, align 8
  %175 = getelementptr i8, i8* %173, i64 %174
  %176 = bitcast i8* %175 to i32*
  store i32* %176, i32** %11, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %14, align 4
  br label %196

179:                                              ; preds = %150
  %180 = load %struct.msix_table_entry*, %struct.msix_table_entry** %9, align 8
  %181 = bitcast %struct.msix_table_entry* %180 to i8*
  %182 = load i64, i64* %15, align 8
  %183 = getelementptr i8, i8* %181, i64 %182
  %184 = bitcast i8* %183 to i32*
  store i32* %184, i32** %12, align 8
  %185 = load i32*, i32** %12, align 8
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %14, align 4
  br label %196

187:                                              ; preds = %150
  %188 = load %struct.msix_table_entry*, %struct.msix_table_entry** %9, align 8
  %189 = bitcast %struct.msix_table_entry* %188 to i8*
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr i8, i8* %189, i64 %190
  %192 = bitcast i8* %191 to i32*
  store i32* %192, i32** %13, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %14, align 4
  br label %196

195:                                              ; preds = %150
  store i32 -1, i32* %4, align 4
  br label %198

196:                                              ; preds = %187, %179, %171, %163
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %196, %195, %149, %132, %123, %122
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
