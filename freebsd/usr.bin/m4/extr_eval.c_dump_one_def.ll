; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_dump_one_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_dump_one_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_definition = type { i32, i8* }

@traceout = common dso_local global i64 0, align 8
@stderr = common dso_local global i64 0, align 8
@mimic_gnu = common dso_local global i64 0, align 8
@TYPEMASK = common dso_local global i32 0, align 4
@MACRTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s:\09<%s>\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"`%s'\09`%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.macro_definition*)* @dump_one_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_one_def(i8* %0, %struct.macro_definition* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.macro_definition*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.macro_definition* %1, %struct.macro_definition** %4, align 8
  %5 = load i64, i64* @traceout, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* @stderr, align 8
  store i64 %8, i64* @traceout, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i64, i64* @mimic_gnu, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %14 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TYPEMASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @MACRTYPE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load i64, i64* @traceout, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %24 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @fprintf(i64 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %25)
  br label %34

27:                                               ; preds = %12
  %28 = load i64, i64* @traceout, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %31 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @fprintf(i64 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %32)
  br label %34

34:                                               ; preds = %27, %20
  br label %42

35:                                               ; preds = %9
  %36 = load i64, i64* @traceout, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %39 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @fprintf(i64 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %40)
  br label %42

42:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
