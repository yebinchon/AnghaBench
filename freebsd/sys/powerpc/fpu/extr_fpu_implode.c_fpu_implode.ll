; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_implode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_implode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32 }
%struct.fpn = type { i32 }

@FPE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fpu_implode: long %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"fpu_implode: int %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"fpu_implode: single %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"fpu_implode: double %x %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"fpu_implode: invalid type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_implode(%struct.fpemu* %0, %struct.fpn* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.fpemu*, align 8
  %6 = alloca %struct.fpn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.fpemu* %0, %struct.fpemu** %5, align 8
  store %struct.fpn* %1, %struct.fpn** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %72 [
    i32 129, label %10
    i32 130, label %27
    i32 128, label %42
    i32 131, label %55
  ]

10:                                               ; preds = %4
  %11 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %12 = load %struct.fpn*, %struct.fpn** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @fpu_ftox(%struct.fpemu* %11, %struct.fpn* %12, i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @FPE_REG, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DPRINTF(i32 %17, i8* %25)
  br label %75

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %31 = load %struct.fpn*, %struct.fpn** %6, align 8
  %32 = call i32 @fpu_ftoi(%struct.fpemu* %30, %struct.fpn* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @FPE_REG, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @DPRINTF(i32 %35, i8* %40)
  br label %75

42:                                               ; preds = %4
  %43 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %44 = load %struct.fpn*, %struct.fpn** %6, align 8
  %45 = call i32 @fpu_ftos(%struct.fpemu* %43, %struct.fpn* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @FPE_REG, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @DPRINTF(i32 %48, i8* %53)
  br label %75

55:                                               ; preds = %4
  %56 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %57 = load %struct.fpn*, %struct.fpn** %6, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @fpu_ftod(%struct.fpemu* %56, %struct.fpn* %57, i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @FPE_REG, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @DPRINTF(i32 %62, i8* %70)
  br label %75

72:                                               ; preds = %4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %55, %42, %27, %10
  ret void
}

declare dso_local i32 @fpu_ftox(%struct.fpemu*, %struct.fpn*, i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @fpu_ftoi(%struct.fpemu*, %struct.fpn*) #1

declare dso_local i32 @fpu_ftos(%struct.fpemu*, %struct.fpn*) #1

declare dso_local i32 @fpu_ftod(%struct.fpemu*, %struct.fpn*, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
