; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_blessed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_blessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.witness_blessed = type { i32, i32 }
%struct.witness = type { i32 }

@blessed_list = common dso_local global %struct.witness_blessed* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.witness*, %struct.witness*)* @blessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blessed(%struct.witness* %0, %struct.witness* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.witness*, align 8
  %5 = alloca %struct.witness*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.witness_blessed*, align 8
  store %struct.witness* %0, %struct.witness** %4, align 8
  store %struct.witness* %1, %struct.witness** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.witness_blessed*, %struct.witness_blessed** @blessed_list, align 8
  %11 = call i32 @nitems(%struct.witness_blessed* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %8
  %14 = load %struct.witness_blessed*, %struct.witness_blessed** @blessed_list, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.witness_blessed, %struct.witness_blessed* %14, i64 %16
  store %struct.witness_blessed* %17, %struct.witness_blessed** %7, align 8
  %18 = load %struct.witness*, %struct.witness** %4, align 8
  %19 = getelementptr inbounds %struct.witness, %struct.witness* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.witness_blessed*, %struct.witness_blessed** %7, align 8
  %22 = getelementptr inbounds %struct.witness_blessed, %struct.witness_blessed* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i32 %20, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load %struct.witness*, %struct.witness** %5, align 8
  %28 = getelementptr inbounds %struct.witness, %struct.witness* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.witness_blessed*, %struct.witness_blessed** %7, align 8
  %31 = getelementptr inbounds %struct.witness_blessed, %struct.witness_blessed* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strcmp(i32 %29, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %62

36:                                               ; preds = %26
  br label %58

37:                                               ; preds = %13
  %38 = load %struct.witness*, %struct.witness** %4, align 8
  %39 = getelementptr inbounds %struct.witness, %struct.witness* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.witness_blessed*, %struct.witness_blessed** %7, align 8
  %42 = getelementptr inbounds %struct.witness_blessed, %struct.witness_blessed* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strcmp(i32 %40, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.witness*, %struct.witness** %5, align 8
  %48 = getelementptr inbounds %struct.witness, %struct.witness* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.witness_blessed*, %struct.witness_blessed** %7, align 8
  %51 = getelementptr inbounds %struct.witness_blessed, %struct.witness_blessed* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strcmp(i32 %49, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %62

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %8

61:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %55, %35
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @nitems(%struct.witness_blessed*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
