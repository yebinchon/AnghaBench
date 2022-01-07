; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_main.c_reallyoutputstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_main.c_reallyoutputstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@synch_lines = common dso_local global i64 0, align 8
@active = common dso_local global i32 0, align 4
@infile = common dso_local global %struct.TYPE_2__* null, align 8
@ilevel = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reallyoutputstr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @synch_lines, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %41, %5
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = load i8, i8* %11, align 1
  %13 = load i32, i32* @active, align 4
  %14 = call i32 @fputc(i8 signext %12, i32 %13)
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %2, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %41

20:                                               ; preds = %10
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @infile, align 8
  %22 = load i64, i64* @ilevel, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @infile, align 8
  %28 = load i64, i64* @ilevel, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @infile, align 8
  %33 = load i64, i64* @ilevel, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %31, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = call i32 (...) @do_emit_synchline()
  br label %40

40:                                               ; preds = %38, %20
  br label %41

41:                                               ; preds = %40, %10
  br label %6

42:                                               ; preds = %6
  br label %47

43:                                               ; preds = %1
  %44 = load i8*, i8** %2, align 8
  %45 = load i32, i32* @active, align 4
  %46 = call i32 @fputs(i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @do_emit_synchline(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
