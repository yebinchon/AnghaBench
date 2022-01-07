; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_setscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_setscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tipout_pid = common dso_local global i32 0, align 4
@SIGEMT = common dso_local global i32 0, align 4
@SCRIPT = common dso_local global i32 0, align 4
@fildes = common dso_local global i32* null, align 8
@RECORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@repdes = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"can't create %s\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setscript() #0 {
  %1 = alloca i8, align 1
  %2 = load i32, i32* @tipout_pid, align 4
  %3 = load i32, i32* @SIGEMT, align 4
  %4 = call i32 @kill(i32 %2, i32 %3)
  %5 = load i32, i32* @SCRIPT, align 4
  %6 = call i8* @value(i32 %5)
  %7 = call i64 @boolean(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32*, i32** @fildes, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RECORD, align 4
  %14 = call i8* @value(i32 %13)
  %15 = load i32, i32* @RECORD, align 4
  %16 = call i8* @value(i32 %15)
  %17 = call i32 @size(i8* %16)
  %18 = call i32 @write(i32 %12, i8* %14, i32 %17)
  br label %19

19:                                               ; preds = %9, %0
  %20 = load i32*, i32** @fildes, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @write(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %24 = load i32*, i32** @repdes, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @read(i32 %26, i8* %1, i32 1)
  %28 = load i8, i8* %1, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 110
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @RECORD, align 4
  %33 = call i8* @value(i32 %32)
  %34 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i64 @boolean(i8*) #1

declare dso_local i8* @value(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @size(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
