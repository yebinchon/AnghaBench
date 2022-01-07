; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_rwindow.c_rwindow_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_rwindow.c_rwindow_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, %struct.pcb* }
%struct.TYPE_2__ = type { i32 }
%struct.pcb = type { i32, i32*, %struct.rwindow* }
%struct.rwindow = type { i32 }

@KTR_TRAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"rwindow_save: td=%p (%s) nsaved=%d\00", align 1
@MAXWIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"rwindow_save: pcb_nsaved > MAXWIN\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"rwindow_save: usp=%#lx\00", align 1
@SPOFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"rwindow_save: error=%d\00", align 1
@SIGILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwindow_save(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.rwindow*, align 8
  %5 = alloca %struct.pcb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 1
  %12 = load %struct.pcb*, %struct.pcb** %11, align 8
  store %struct.pcb* %12, %struct.pcb** %5, align 8
  %13 = load i32, i32* @KTR_TRAP, align 4
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pcb*, %struct.pcb** %5, align 8
  %21 = getelementptr inbounds %struct.pcb, %struct.pcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @CTR3(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.thread* %14, i32 %19, i32 %22)
  %24 = call i32 (...) @flushw()
  %25 = load %struct.pcb*, %struct.pcb** %5, align 8
  %26 = getelementptr inbounds %struct.pcb, %struct.pcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAXWIN, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.pcb*, %struct.pcb** %5, align 8
  %33 = getelementptr inbounds %struct.pcb, %struct.pcb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

37:                                               ; preds = %1
  %38 = load %struct.pcb*, %struct.pcb** %5, align 8
  %39 = getelementptr inbounds %struct.pcb, %struct.pcb* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %6, align 8
  %41 = load %struct.pcb*, %struct.pcb** %5, align 8
  %42 = getelementptr inbounds %struct.pcb, %struct.pcb* %41, i32 0, i32 2
  %43 = load %struct.rwindow*, %struct.rwindow** %42, align 8
  store %struct.rwindow* %43, %struct.rwindow** %4, align 8
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %73, %37
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @KTR_TRAP, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @CTR1(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i64, i64* @SPOFF, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 7
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %77

59:                                               ; preds = %44
  %60 = load %struct.rwindow*, %struct.rwindow** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @copyout(%struct.rwindow* %60, i8* %63, i32 4)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %77

68:                                               ; preds = %59
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %6, align 8
  %71 = load %struct.rwindow*, %struct.rwindow** %4, align 8
  %72 = getelementptr inbounds %struct.rwindow, %struct.rwindow* %71, i32 1
  store %struct.rwindow* %72, %struct.rwindow** %4, align 8
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %9, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %44, label %77

77:                                               ; preds = %73, %67, %58
  %78 = load i32, i32* @KTR_TRAP, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @CTR1(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.pcb*, %struct.pcb** %5, align 8
  %85 = getelementptr inbounds %struct.pcb, %struct.pcb* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @SIGILL, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i32 [ 0, %89 ], [ %91, %90 ]
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %36
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @CTR3(i32, i8*, %struct.thread*, i32, i32) #1

declare dso_local i32 @flushw(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @copyout(%struct.rwindow*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
