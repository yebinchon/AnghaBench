; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_busdma_bounce.c__bus_dmamap_addseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_busdma_bounce.c__bus_dmamap_addseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_8__*, i32*)* @_bus_dmamap_addseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_addseg(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_8__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = xor i32 %21, -1
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %29, %33
  %35 = load i32, i32* %15, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %38, %39
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %28
  br label %47

47:                                               ; preds = %46, %6
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  br label %146

65:                                               ; preds = %47
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %72, %78
  %80 = icmp eq i32 %66, %79
  br i1 %80, label %81, label %123

81:                                               ; preds = %65
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %89, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %81
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %15, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %101, %95
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %115
  store i32 %122, i32* %120, align 4
  br label %145

123:                                              ; preds = %101, %81, %65
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %125, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %150

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i32 %139, i32* %144, align 4
  br label %145

145:                                              ; preds = %132, %114
  br label %146

146:                                              ; preds = %145, %52
  %147 = load i32, i32* %16, align 4
  %148 = load i32*, i32** %13, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %11, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %146, %131
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
