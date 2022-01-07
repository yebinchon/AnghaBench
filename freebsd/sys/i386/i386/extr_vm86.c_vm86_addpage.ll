; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_addpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_addpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm86context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@VM86_PMAPSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@VMAP_MALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vm86_addpage: overlap\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"vm86_addpage: not enough room\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm86_addpage(%struct.vm86context* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm86context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm86context* %0, %struct.vm86context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %29, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.vm86context*, %struct.vm86context** %5, align 8
  %13 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.vm86context*, %struct.vm86context** %5, align 8
  %18 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %78

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load %struct.vm86context*, %struct.vm86context** %5, align 8
  %34 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VM86_PMAPSIZE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %80

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* @M_TEMP, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = call i64 @malloc(i32 %43, i32 %44, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* @VMAP_MALLOC, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.vm86context*, %struct.vm86context** %5, align 8
  %50 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.vm86context*, %struct.vm86context** %5, align 8
  %55 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.vm86context*, %struct.vm86context** %5, align 8
  %63 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i64 %61, i64* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.vm86context*, %struct.vm86context** %5, align 8
  %71 = getelementptr inbounds %struct.vm86context, %struct.vm86context* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 8
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %4, align 8
  br label %82

78:                                               ; preds = %27
  %79 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %38
  %81 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %48
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
