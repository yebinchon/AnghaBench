; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_quick_hold_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_quick_hold_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"vm_fault_quick_hold_pages: count > max_count\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_PROT_QUICK_NOFAULT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_13__* null, align 8
@TDP_NOFAULTING = common dso_local global i32 0, align 4
@VM_FAULT_NORMAL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PQ_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_fault_quick_hold_pages(%struct.TYPE_15__* %0, i64 %1, i64 %2, i32 %3, %struct.TYPE_14__** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_14__** %4, %struct.TYPE_14__*** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %171

22:                                               ; preds = %6
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @round_page(i64 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @trunc_page(i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = call i64 @vm_map_min(%struct.TYPE_15__* %30)
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %22
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = call i64 @vm_map_max(%struct.TYPE_15__* %39)
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %33, %22
  store i32 -1, i32* %7, align 4
  br label %171

43:                                               ; preds = %37
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i32 @atop(i64 %46)
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32 @atop(i64 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %18, align 8
  %58 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__** %58, %struct.TYPE_14__*** %16, align 8
  %59 = load i64, i64* %9, align 8
  store i64 %59, i64* %15, align 8
  br label %60

60:                                               ; preds = %95, %52
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %60
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %15, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call %struct.TYPE_14__* @pmap_extract_and_hold(i32 %67, i64 %68, i32 %69)
  %71 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %71, align 8
  %72 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = icmp eq %struct.TYPE_14__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %18, align 8
  br label %94

77:                                               ; preds = %64
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @VM_PROT_WRITE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = call i32 @vm_page_dirty(%struct.TYPE_14__* %91)
  br label %93

93:                                               ; preds = %89, %82, %77
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %96, i32 1
  store %struct.TYPE_14__** %97, %struct.TYPE_14__*** %16, align 8
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = load i64, i64* %15, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %15, align 8
  br label %60

101:                                              ; preds = %60
  %102 = load i64, i64* %18, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %146

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @VM_PROT_QUICK_NOFAULT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TDP_NOFAULTING, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %148

117:                                              ; preds = %109, %104
  %118 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__** %118, %struct.TYPE_14__*** %16, align 8
  %119 = load i64, i64* %9, align 8
  store i64 %119, i64* %15, align 8
  br label %120

120:                                              ; preds = %139, %117
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %14, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = icmp eq %struct.TYPE_14__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @VM_FAULT_NORMAL, align 4
  %133 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %134 = call i64 @vm_fault(%struct.TYPE_15__* %129, i64 %130, i32 %131, i32 %132, %struct.TYPE_14__** %133)
  %135 = load i64, i64* @KERN_SUCCESS, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %148

138:                                              ; preds = %128, %124
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %140, i32 1
  store %struct.TYPE_14__** %141, %struct.TYPE_14__*** %16, align 8
  %142 = load i64, i64* @PAGE_SIZE, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %15, align 8
  br label %120

145:                                              ; preds = %120
  br label %146

146:                                              ; preds = %145, %101
  %147 = load i32, i32* %17, align 4
  store i32 %147, i32* %7, align 4
  br label %171

148:                                              ; preds = %137, %116
  %149 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__** %149, %struct.TYPE_14__*** %16, align 8
  br label %150

150:                                              ; preds = %167, %148
  %151 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %152 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %152, i64 %154
  %156 = icmp ult %struct.TYPE_14__** %151, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %150
  %158 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = icmp ne %struct.TYPE_14__* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = load i32, i32* @PQ_INACTIVE, align 4
  %165 = call i32 @vm_page_unwire(%struct.TYPE_14__* %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %157
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %168, i32 1
  store %struct.TYPE_14__** %169, %struct.TYPE_14__*** %16, align 8
  br label %150

170:                                              ; preds = %150
  store i32 -1, i32* %7, align 4
  br label %171

171:                                              ; preds = %170, %146, %42, %21
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @vm_map_min(%struct.TYPE_15__*) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_15__*) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.TYPE_14__* @pmap_extract_and_hold(i32, i64, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_14__*) #1

declare dso_local i64 @vm_fault(%struct.TYPE_15__*, i64, i32, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @vm_page_unwire(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
