; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_explode.c_fpu_explode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_explode.c_fpu_explode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fpn = type { i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"fpu_explode\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"fpu_explode: invalid type %d\00", align 1
@FPC_QNAN = common dso_local global i32 0, align 4
@FP_QUIETBIT = common dso_local global i32 0, align 4
@FPSCR_VXSNAN = common dso_local global i32 0, align 4
@FPC_SNAN = common dso_local global i32 0, align 4
@FPE_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"fpu_explode: %%%c%d => \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_explode(%struct.fpemu* %0, %struct.fpn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fpemu*, align 8
  %6 = alloca %struct.fpn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.fpemu* %0, %struct.fpemu** %5, align 8
  store %struct.fpn* %1, %struct.fpn** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %14 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %26 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 31
  %39 = load %struct.fpn*, %struct.fpn** %6, align 8
  %40 = getelementptr inbounds %struct.fpn, %struct.fpn* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fpn*, %struct.fpn** %6, align 8
  %42 = getelementptr inbounds %struct.fpn, %struct.fpn* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %65 [
    i32 129, label %44
    i32 130, label %48
    i32 128, label %54
    i32 131, label %58
  ]

44:                                               ; preds = %4
  %45 = load %struct.fpn*, %struct.fpn** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @fpu_xtof(%struct.fpn* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %69

48:                                               ; preds = %4
  %49 = load %struct.fpn*, %struct.fpn** %6, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fpu_itof(%struct.fpn* %49, i32 %52)
  store i32 %53, i32* %9, align 4
  br label %69

54:                                               ; preds = %4
  %55 = load %struct.fpn*, %struct.fpn** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @fpu_stof(%struct.fpn* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %69

58:                                               ; preds = %4
  %59 = load %struct.fpn*, %struct.fpn** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fpu_dtof(%struct.fpn* %59, i32 %60, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %69

65:                                               ; preds = %4
  %66 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %58, %54, %48, %44
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FPC_QNAN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load %struct.fpn*, %struct.fpn** %6, align 8
  %75 = getelementptr inbounds %struct.fpn, %struct.fpn* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FP_QUIETBIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %73
  %83 = load i32, i32* @FP_QUIETBIT, align 4
  %84 = load %struct.fpn*, %struct.fpn** %6, align 8
  %85 = getelementptr inbounds %struct.fpn, %struct.fpn* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @FPSCR_VXSNAN, align 4
  %91 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %92 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @FPC_SNAN, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %82, %73, %69
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.fpn*, %struct.fpn** %6, align 8
  %97 = getelementptr inbounds %struct.fpn, %struct.fpn* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @FPE_REG, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 129
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %119

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 130
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %117

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %115

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 131
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 100, i32 63
  br label %115

115:                                              ; preds = %110, %109
  %116 = phi i32 [ 115, %109 ], [ %114, %110 ]
  br label %117

117:                                              ; preds = %115, %105
  %118 = phi i32 [ 105, %105 ], [ %116, %115 ]
  br label %119

119:                                              ; preds = %117, %101
  %120 = phi i32 [ 120, %101 ], [ %118, %117 ]
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @DPRINTF(i32 %98, i8* %123)
  %125 = load i32, i32* @FPE_REG, align 4
  %126 = load %struct.fpn*, %struct.fpn** %6, align 8
  %127 = call i32 @DUMPFPN(i32 %125, %struct.fpn* %126)
  %128 = load i32, i32* @FPE_REG, align 4
  %129 = call i32 @DPRINTF(i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fpu_xtof(%struct.fpn*, i32) #1

declare dso_local i32 @fpu_itof(%struct.fpn*, i32) #1

declare dso_local i32 @fpu_stof(%struct.fpn*, i32) #1

declare dso_local i32 @fpu_dtof(%struct.fpn*, i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @DUMPFPN(i32, %struct.fpn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
