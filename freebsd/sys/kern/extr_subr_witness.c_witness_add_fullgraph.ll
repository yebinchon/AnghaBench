; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_add_fullgraph.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_add_fullgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.witness = type { i32, i64, i64, i32, i32* }
%struct.sbuf = type { i32 }

@w_max_used_index = common dso_local global i32 0, align 4
@w_rmatrix = common dso_local global i32** null, align 8
@WITNESS_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"\22%s\22,\22%s\22\0A\00", align 1
@w_data = common dso_local global %struct.witness* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, %struct.witness*)* @witness_add_fullgraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @witness_add_fullgraph(%struct.sbuf* %0, %struct.witness* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.witness*, align 8
  %5 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.witness* %1, %struct.witness** %4, align 8
  %6 = load %struct.witness*, %struct.witness** %4, align 8
  %7 = getelementptr inbounds %struct.witness, %struct.witness* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.witness*, %struct.witness** %4, align 8
  %12 = getelementptr inbounds %struct.witness, %struct.witness* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.witness*, %struct.witness** %4, align 8
  %17 = getelementptr inbounds %struct.witness, %struct.witness* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  br label %67

21:                                               ; preds = %15, %10
  %22 = load %struct.witness*, %struct.witness** %4, align 8
  %23 = getelementptr inbounds %struct.witness, %struct.witness* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.witness*, %struct.witness** %4, align 8
  %25 = getelementptr inbounds %struct.witness, %struct.witness* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @WITNESS_INDEX_ASSERT(i64 %26)
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %64, %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @w_max_used_index, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load i32**, i32*** @w_rmatrix, align 8
  %34 = load %struct.witness*, %struct.witness** %4, align 8
  %35 = getelementptr inbounds %struct.witness, %struct.witness* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %33, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WITNESS_PARENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %32
  %47 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %48 = load %struct.witness*, %struct.witness** %4, align 8
  %49 = getelementptr inbounds %struct.witness, %struct.witness* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.witness*, %struct.witness** @w_data, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.witness, %struct.witness* %51, i64 %53
  %55 = getelementptr inbounds %struct.witness, %struct.witness* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sbuf_printf(%struct.sbuf* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %56)
  %58 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %59 = load %struct.witness*, %struct.witness** @w_data, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.witness, %struct.witness* %59, i64 %61
  call void @witness_add_fullgraph(%struct.sbuf* %58, %struct.witness* %62)
  br label %63

63:                                               ; preds = %46, %32
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %28

67:                                               ; preds = %20, %28
  ret void
}

declare dso_local i32 @WITNESS_INDEX_ASSERT(i64) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
