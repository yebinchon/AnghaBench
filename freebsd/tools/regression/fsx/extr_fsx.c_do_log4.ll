; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_do_log4.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_do_log4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_entry = type { i32, i32* }

@oplog = common dso_local global %struct.log_entry* null, align 8
@logptr = common dso_local global i64 0, align 8
@logcount = common dso_local global i32 0, align 4
@LOGSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_log4(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.log_entry*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.log_entry*, %struct.log_entry** @oplog, align 8
  %11 = load i64, i64* @logptr, align 8
  %12 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %10, i64 %11
  store %struct.log_entry* %12, %struct.log_entry** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.log_entry*, %struct.log_entry** %9, align 8
  %15 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.log_entry*, %struct.log_entry** %9, align 8
  %18 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.log_entry*, %struct.log_entry** %9, align 8
  %23 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.log_entry*, %struct.log_entry** %9, align 8
  %28 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %26, i32* %30, align 4
  %31 = load i64, i64* @logptr, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* @logptr, align 8
  %33 = load i32, i32* @logcount, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @logcount, align 4
  %35 = load i64, i64* @logptr, align 8
  %36 = load i64, i64* @LOGSIZE, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i64 0, i64* @logptr, align 8
  br label %39

39:                                               ; preds = %38, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
