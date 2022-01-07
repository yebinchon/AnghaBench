; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_acu.c_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_acu.c_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 }

@conflag = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"call terminated\00", align 1
@NOSTR = common dso_local global i8* null, align 8
@acu = common dso_local global %struct.TYPE_2__* null, align 8
@VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"\0D\0Adisconnecting...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disconnect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @conflag, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @HOST, align 4
  %7 = call i32 @value(i32 %6)
  %8 = load i32, i32* @DV, align 4
  %9 = call i32 @logent(i32 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %41

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** @NOSTR, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32, i32* @HOST, align 4
  %16 = call i32 @value(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acu, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @logent(i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @VERBOSE, align 4
  %22 = call i32 @value(i32 %21)
  %23 = call i64 @boolean(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %14
  br label %36

28:                                               ; preds = %10
  %29 = load i32, i32* @HOST, align 4
  %30 = call i32 @value(i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acu, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @logent(i32 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %28, %27
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acu, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (...)*, i32 (...)** %38, align 8
  %40 = call i32 (...) %39()
  br label %41

41:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @logent(i32, i8*, i32, i8*) #1

declare dso_local i32 @value(i32) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
