; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_madt.c_madt_find_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_madt.c_madt_find_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@IOAPIC_MAX_ID = common dso_local global i32 0, align 4
@ioapics = common dso_local global %struct.TYPE_2__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WARNING: Found intpin of %u for vector %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*)* @madt_find_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madt_find_interrupt(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %52, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @IOAPIC_MAX_ID, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ioapics, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ioapics, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %14
  br label %52

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ioapics, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ioapics, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %35, %32
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %35
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %10

55:                                               ; preds = %10
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @ENOENT, align 4
  store i32 %59, i32* %4, align 4
  br label %87

60:                                               ; preds = %55
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ioapics, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to i8*
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ioapics, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %69, %75
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 32
  br i1 %80, label %81, label %86

81:                                               ; preds = %60
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %60
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %58
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
