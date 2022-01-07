; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tcopy/extr_tcopy.c_rewind_tape.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tcopy/extr_tcopy.c_rewind_tape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"fstat in rewind\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@MTREW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rewind_tape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewind_tape(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @fstat(i32 %4, %struct.stat* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @errx(i32 12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISREG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = call i32 @lseek(i32 %15, i32 0, i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @errx(i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  br label %26

22:                                               ; preds = %9
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @MTREW, align 4
  %25 = call i32 @writeop(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @writeop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
