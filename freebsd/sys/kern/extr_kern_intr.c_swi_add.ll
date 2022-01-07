; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_swi_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_swi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32 }

@INTR_ENTROPY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IE_SOFT = common dso_local global i32 0, align 4
@swi_assign_cpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"swi%d:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swi_add(%struct.intr_event** %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.intr_event**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.intr_event*, align 8
  %17 = alloca i32, align 4
  store %struct.intr_event** %0, %struct.intr_event*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* @INTR_ENTROPY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %8, align 4
  br label %72

24:                                               ; preds = %7
  %25 = load %struct.intr_event**, %struct.intr_event*** %9, align 8
  %26 = icmp ne %struct.intr_event** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.intr_event**, %struct.intr_event*** %9, align 8
  %29 = load %struct.intr_event*, %struct.intr_event** %28, align 8
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %struct.intr_event* [ %29, %27 ], [ null, %30 ]
  store %struct.intr_event* %32, %struct.intr_event** %16, align 8
  %33 = load %struct.intr_event*, %struct.intr_event** %16, align 8
  %34 = icmp ne %struct.intr_event* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.intr_event*, %struct.intr_event** %16, align 8
  %37 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IE_SOFT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %8, align 4
  br label %72

44:                                               ; preds = %35
  br label %61

45:                                               ; preds = %31
  %46 = load i32, i32* @IE_SOFT, align 4
  %47 = load i32, i32* @swi_assign_cpu, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @intr_event_create(%struct.intr_event** %16, i32* null, i32 %46, i32 0, i32* null, i32* null, i32* null, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %8, align 4
  br label %72

54:                                               ; preds = %45
  %55 = load %struct.intr_event**, %struct.intr_event*** %9, align 8
  %56 = icmp ne %struct.intr_event** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.intr_event*, %struct.intr_event** %16, align 8
  %59 = load %struct.intr_event**, %struct.intr_event*** %9, align 8
  store %struct.intr_event* %58, %struct.intr_event** %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %44
  %62 = load %struct.intr_event*, %struct.intr_event** %16, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @PI_SWI(i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i8**, i8*** %15, align 8
  %70 = call i32 @intr_event_add_handler(%struct.intr_event* %62, i8* %63, i32* null, i32 %64, i8* %65, i32 %67, i32 %68, i8** %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %61, %52, %42, %22
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @intr_event_create(%struct.intr_event**, i32*, i32, i32, i32*, i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @intr_event_add_handler(%struct.intr_event*, i8*, i32*, i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @PI_SWI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
