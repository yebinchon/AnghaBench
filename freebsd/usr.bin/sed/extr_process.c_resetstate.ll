; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_resetstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_resetstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_command = type { i8, i64, i64, %struct.s_command*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s_command* }

@prog = common dso_local global %struct.s_command* null, align 8
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resetstate() #0 {
  %1 = alloca %struct.s_command*, align 8
  %2 = load %struct.s_command*, %struct.s_command** @prog, align 8
  store %struct.s_command* %2, %struct.s_command** %1, align 8
  br label %3

3:                                                ; preds = %30, %0
  %4 = load %struct.s_command*, %struct.s_command** %1, align 8
  %5 = icmp ne %struct.s_command* %4, null
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = load %struct.s_command*, %struct.s_command** %1, align 8
  %8 = getelementptr inbounds %struct.s_command, %struct.s_command* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.s_command*, %struct.s_command** %1, align 8
  %13 = getelementptr inbounds %struct.s_command, %struct.s_command* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %11, %6
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.s_command*, %struct.s_command** %1, align 8
  %17 = getelementptr inbounds %struct.s_command, %struct.s_command* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 123
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.s_command*, %struct.s_command** %1, align 8
  %23 = getelementptr inbounds %struct.s_command, %struct.s_command* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.s_command*, %struct.s_command** %24, align 8
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.s_command*, %struct.s_command** %1, align 8
  %28 = getelementptr inbounds %struct.s_command, %struct.s_command* %27, i32 0, i32 3
  %29 = load %struct.s_command*, %struct.s_command** %28, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi %struct.s_command* [ %25, %21 ], [ %29, %26 ]
  store %struct.s_command* %31, %struct.s_command** %1, align 8
  br label %3

32:                                               ; preds = %3
  %33 = load i32, i32* @REPLACE, align 4
  %34 = call i32 @cspace(i32* @HS, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %33)
  ret void
}

declare dso_local i32 @cspace(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
