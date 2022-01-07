; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unable to add the following kevent:\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"kevent(): %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kevent_add(i32 %0, %struct.kevent* %1, i64 %2, i16 signext %3, i32 %4, i32 %5, i64 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.kevent*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kevent* %1, %struct.kevent** %10, align 8
  store i64 %2, i64* %11, align 8
  store i16 %3, i16* %12, align 2
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load %struct.kevent*, %struct.kevent** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i16, i16* %12, align 2
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i64, i64* %15, align 8
  %24 = call i32 @EV_SET(%struct.kevent* %18, i64 %19, i16 signext %20, i32 %21, i32 %22, i64 %23, i32* null)
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.kevent*, %struct.kevent** %10, align 8
  %27 = call i64 @kevent(i32 %25, %struct.kevent* %26, i32 1, i32* null, i32 0, i32* null)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %8
  %30 = load %struct.kevent*, %struct.kevent** %10, align 8
  %31 = call i8* @kevent_to_str(%struct.kevent* %30)
  store i8* %31, i8** %17, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %17, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32 @EV_SET(%struct.kevent*, i64, i16 signext, i32, i32, i64, i32*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i8* @kevent_to_str(%struct.kevent*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
