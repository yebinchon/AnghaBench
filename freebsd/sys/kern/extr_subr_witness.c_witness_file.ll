; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_object = type { %struct.witness* }
%struct.witness = type { i8* }

@witness_cold = common dso_local global i64 0, align 8
@witness_watch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @witness_file(%struct.lock_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lock_object*, align 8
  %4 = alloca %struct.witness*, align 8
  store %struct.lock_object* %0, %struct.lock_object** %3, align 8
  %5 = load i64, i64* @witness_cold, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @witness_watch, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load %struct.lock_object*, %struct.lock_object** %3, align 8
  %12 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %11, i32 0, i32 0
  %13 = load %struct.witness*, %struct.witness** %12, align 8
  %14 = icmp eq %struct.witness* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %7, %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %23

16:                                               ; preds = %10
  %17 = load %struct.lock_object*, %struct.lock_object** %3, align 8
  %18 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %17, i32 0, i32 0
  %19 = load %struct.witness*, %struct.witness** %18, align 8
  store %struct.witness* %19, %struct.witness** %4, align 8
  %20 = load %struct.witness*, %struct.witness** %4, align 8
  %21 = getelementptr inbounds %struct.witness, %struct.witness* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
