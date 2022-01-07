; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tee/extr_tee.c_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tee/extr_tee.c_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, %struct.TYPE_4__* }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unable to limit stdout\00", align 1
@CAP_WRITE = common dso_local global i32 0, align 4
@CAP_FSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to limit rights\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@head = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @STDOUT_FILENO, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = call i32 (...) @caph_limit_stdout()
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @err(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* @CAP_WRITE, align 4
  %19 = load i32, i32* @CAP_FSTAT, align 4
  %20 = call i32 @cap_rights_init(i32* %6, i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @caph_rights_limit(i32 %21, i32* %6)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @err(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17
  br label %28

28:                                               ; preds = %27, %16
  %29 = call %struct.TYPE_4__* @malloc(i32 24)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %5, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @head, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** @head, align 8
  ret void
}

declare dso_local i32 @caph_limit_stdout(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
