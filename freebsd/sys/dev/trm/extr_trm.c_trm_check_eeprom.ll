; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_check_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_check_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i8**, i8**, i8**, i8** }

@PCI_Vendor_ID_TEKRAM = common dso_local global i32 0, align 4
@PCI_Device_ID_TRM_S1040 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @trm_check_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_check_eeprom(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @NVRAM_trm_read_all(%struct.TYPE_5__* %12, i32 %13)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = bitcast %struct.TYPE_5__* %15 to i32*
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %25, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 64
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 4660
  br i1 %32, label %33, label %152

33:                                               ; preds = %30
  %34 = load i32, i32* @PCI_Vendor_ID_TEKRAM, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 7
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* @PCI_Vendor_ID_TEKRAM, align 4
  %42 = ashr i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 7
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8* %44, i8** %48, align 8
  %49 = load i32, i32* @PCI_Device_ID_TRM_S1040, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 6
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %51, i8** %55, align 8
  %56 = load i32, i32* @PCI_Device_ID_TRM_S1040, align 4
  %57 = ashr i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* %59, i8** %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i32, i32* @PCI_Vendor_ID_TEKRAM, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %68, i8** %72, align 8
  %73 = load i32, i32* @PCI_Vendor_ID_TEKRAM, align 4
  %74 = ashr i32 %73, 8
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* @PCI_Device_ID_TRM_S1040, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %83, i8** %87, align 8
  %88 = load i32, i32* @PCI_Device_ID_TRM_S1040, align 4
  %89 = ashr i32 %88, 8
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* %91, i8** %95, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  store i32 0, i32* %8, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %9, align 8
  br label %102

102:                                              ; preds = %107, %33
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32*, i32** %9, align 8
  store i32 119, i32* %106, align 4
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %9, align 8
  br label %102

112:                                              ; preds = %102
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %9, align 8
  store i32 67112711, i32* %113, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %9, align 8
  store i32 21, i32* %115, align 4
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %122, %112
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 12
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32*, i32** %9, align 8
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %120
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %9, align 8
  br label %117

127:                                              ; preds = %117
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i32 0, i32* %129, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = bitcast %struct.TYPE_5__* %130 to i32*
  store i32* %131, i32** %5, align 8
  br label %132

132:                                              ; preds = %140, %127
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 63
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %5, align 8
  br label %132

145:                                              ; preds = %132
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 4660, %146
  %148 = load i32*, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @NVRAM_trm_write_all(%struct.TYPE_5__* %149, i32 %150)
  br label %152

152:                                              ; preds = %145, %30
  ret void
}

declare dso_local i32 @NVRAM_trm_read_all(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @NVRAM_trm_write_all(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
