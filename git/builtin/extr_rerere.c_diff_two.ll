; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rerere.c_diff_two.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rerere.c_diff_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"--- a/%s\0A+++ b/%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @diff_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_two(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @read_mmfile(%struct.TYPE_14__* %13, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @read_mmfile(%struct.TYPE_14__* %14, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %4
  store i32 -1, i32* %5, align 4
  br label %45

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fflush(i32 %28)
  %30 = call i32 @memset(%struct.TYPE_12__* %10, i32 0, i32 16)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = call i32 @memset(%struct.TYPE_12__* %11, i32 0, i32 16)
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 3, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @outf, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = call i32 @xdi_diff(%struct.TYPE_14__* %13, %struct.TYPE_14__* %14, %struct.TYPE_12__* %10, %struct.TYPE_12__* %11, %struct.TYPE_13__* %12)
  store i32 %37, i32* %15, align 4
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @free(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @free(i32 %42)
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %24, %23
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @read_mmfile(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @xdi_diff(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
