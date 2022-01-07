; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_check_writeable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_check_writeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@STDERR_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ttyname\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@S_IWGRP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"The callee cannot write to this terminal, use \22mesg y\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_writeable() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.stat, align 4
  %3 = load i32, i32* @STDERR_FILENO, align 4
  %4 = call i8* @ttyname(i32 %3)
  store i8* %4, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %2)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @S_IWGRP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  ret void
}

declare dso_local i8* @ttyname(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
