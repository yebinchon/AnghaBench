; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_fill_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_fill_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pci_range = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ofw_pci_range*)* @ofw_pci_fill_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pci_fill_ranges(i32 %0, %struct.ofw_pci_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofw_pci_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ofw_pci_range* %1, %struct.ofw_pci_range** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 3, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @OF_parent(i32 %15)
  %17 = call i32 @OF_getencprop(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @OF_getencprop(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @OF_getencprop(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 4)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @OF_getproplen(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %174

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %30, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @M_DEVBUF, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = call i32* @malloc(i32 %39, i32 %40, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @OF_getencprop(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %44, i32 %45)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %166, %27
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %169

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %58, i64 %60
  %62 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %63, i64 %65
  %67 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %94, %51
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %68
  %74 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %74, i64 %76
  %78 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 32
  store i32 %80, i32* %78, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %87, i64 %89
  %91 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %86
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %73
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %68

97:                                               ; preds = %68
  %98 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %98, i64 %100
  %102 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %101, i32 0, i32 2
  store i32 0, i32* %102, align 4
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %128, %97
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %108, i64 %110
  %112 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 32
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %121, i64 %123
  %125 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %120
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %107
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %103

131:                                              ; preds = %103
  %132 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %132, i64 %134
  %136 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %135, i32 0, i32 3
  store i32 0, i32* %136, align 4
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %162, %131
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %165

141:                                              ; preds = %137
  %142 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %142, i64 %144
  %146 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 32
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %5, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %155, i64 %157
  %159 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %154
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %141
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %137

165:                                              ; preds = %137
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %47

169:                                              ; preds = %47
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* @M_DEVBUF, align 4
  %172 = call i32 @free(i32* %170, i32 %171)
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %169, %26
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
