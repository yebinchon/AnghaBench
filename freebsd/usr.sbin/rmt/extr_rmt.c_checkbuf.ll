; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rmt/extr_rmt.c_checkbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rmt/extr_rmt.c_checkbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maxrecsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rmtd: cannot allocate buffer space\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @checkbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @checkbuf(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @maxrecsize, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %3, align 8
  br label %42

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @free(i8* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @exit(i32 4) #3
  unreachable

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* @maxrecsize, align 4
  br label %27

27:                                               ; preds = %37, %25
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 1024
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @SOL_SOCKET, align 4
  %32 = load i32, i32* @SO_RCVBUF, align 4
  %33 = call i64 @setsockopt(i32 0, i32 %31, i32 %32, i32* %5, i32 4)
  %34 = icmp slt i64 %33, 0
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 1024
  store i32 %39, i32* %5, align 4
  br label %27

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %40, %9
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @DEBUG(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
