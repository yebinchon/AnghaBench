; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_symbol_ddb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stack.c_stack_symbol_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8**, i64*)* @stack_symbol_ddb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stack_symbol_ddb(i64 %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i64*, i64** %7, align 8
  %13 = call i64 @linker_ddb_search_symbol(i32 %11, i32* %9, i64* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @linker_ddb_symbol_values(i32 %17, %struct.TYPE_3__* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %30

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %6, align 8
  store i8* %27, i8** %28, align 8
  store i32 0, i32* %4, align 4
  br label %34

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %20, %15
  %31 = load i64*, i64** %7, align 8
  store i64 0, i64* %31, align 8
  %32 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @linker_ddb_search_symbol(i32, i32*, i64*) #1

declare dso_local i64 @linker_ddb_symbol_values(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
