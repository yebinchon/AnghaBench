; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_test_no_kevents_quietly.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_test_no_kevents_quietly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.kevent = type { i32 }

@kqfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\0AUnexpected event:\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%d event(s) pending, but none expected:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_no_kevents_quietly() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca %struct.kevent, align 4
  %4 = alloca i8*, align 8
  %5 = call i32 @memset(%struct.timespec* %2, i32 0, i32 4)
  %6 = load i32, i32* @kqfd, align 4
  %7 = call i32 @kevent(i32 %6, i32* null, i32 0, %struct.kevent* %3, i32 1, %struct.timespec* %2)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = call i8* @kevent_to_str(%struct.kevent* %3)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @puts(i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @free(i8* %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %10, %0
  ret void
}

declare dso_local i32 @memset(%struct.timespec*, i32, i32) #1

declare dso_local i32 @kevent(i32, i32*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i8* @kevent_to_str(%struct.kevent*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
