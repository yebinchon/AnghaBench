; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_file_pid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_file_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp = type { i32, i32*, %struct.fp* }

@fp_head = common dso_local global %struct.fp* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Invalid file pointer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_pid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fp*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load %struct.fp*, %struct.fp** @fp_head, align 8
  store %struct.fp* %5, %struct.fp** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.fp*, %struct.fp** %4, align 8
  %8 = icmp ne %struct.fp* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.fp*, %struct.fp** %4, align 8
  %11 = getelementptr inbounds %struct.fp, %struct.fp* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.fp*, %struct.fp** %4, align 8
  %17 = getelementptr inbounds %struct.fp, %struct.fp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.fp*, %struct.fp** %4, align 8
  %22 = getelementptr inbounds %struct.fp, %struct.fp* %21, i32 0, i32 2
  %23 = load %struct.fp*, %struct.fp** %22, align 8
  store %struct.fp* %23, %struct.fp** %4, align 8
  br label %6

24:                                               ; preds = %6
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
