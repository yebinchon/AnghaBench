; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_trap.c_syscallname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_trap.c_syscallname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.sysentvec* }
%struct.sysentvec = type { i8**, i64 }

@syscallname.unknown = internal constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @syscallname(%struct.proc* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sysentvec*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.proc*, %struct.proc** %4, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 0
  %9 = load %struct.sysentvec*, %struct.sysentvec** %8, align 8
  store %struct.sysentvec* %9, %struct.sysentvec** %6, align 8
  %10 = load %struct.sysentvec*, %struct.sysentvec** %6, align 8
  %11 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.sysentvec*, %struct.sysentvec** %6, align 8
  %17 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @syscallname.unknown, i64 0, i64 0), i8** %3, align 8
  br label %28

21:                                               ; preds = %14
  %22 = load %struct.sysentvec*, %struct.sysentvec** %6, align 8
  %23 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %28

28:                                               ; preds = %21, %20
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
