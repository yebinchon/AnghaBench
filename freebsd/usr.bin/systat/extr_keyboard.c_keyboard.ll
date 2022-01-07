; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_keyboard.c_keyboard.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_keyboard.c_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@delay = common dso_local global i32 0, align 4
@col = common dso_local global i64 0, align 8
@CMDLINE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i64 0, align 8
@line = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %9 = load i32, i32* @delay, align 4
  %10 = sdiv i32 %9, 1000000
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @delay, align 4
  %13 = srem i32 %12, 1000000
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %110, %0
  store i64 0, i64* @col, align 8
  %16 = load i32, i32* @CMDLINE, align 4
  %17 = call i32 @move(i32 %16, i32 0)
  br label %18

18:                                               ; preds = %107, %82, %65, %15
  %19 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %21, %23
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %24, %26
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %30, %32
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %33, %35
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %42, %18
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1000000
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  br label %38

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %54, %49
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 1000000
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1000000
  store i32 %57, i32* %55, align 4
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %50

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = call i32 (...) @display()
  %67 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  br label %18

68:                                               ; preds = %61
  %69 = call i32 @FD_ZERO(i32* %7)
  %70 = load i64, i64* @STDIN_FILENO, align 8
  %71 = call i32 @FD_SET(i64 %70, i32* %7)
  %72 = load i64, i64* @STDIN_FILENO, align 8
  %73 = add nsw i64 %72, 1
  %74 = call i32 @select(i64 %73, i32* %7, i32* null, i32* null, %struct.timeval* %6)
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %68
  %78 = call i32 (...) @getch()
  store i32 %78, i32* %1, align 4
  %79 = load i32, i32* %1, align 4
  %80 = call i64 @keyboard_dispatch(i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (...) @refresh()
  br label %18

84:                                               ; preds = %77
  %85 = load i8*, i8** @line, align 8
  %86 = load i64, i64* @col, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** @line, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = call i32 @command(i8* %89)
  %91 = load i32, i32* @delay, align 4
  %92 = sdiv i32 %91, 1000000
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @delay, align 4
  %95 = srem i32 %94, 1000000
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = call i32 (...) @refresh()
  br label %110

98:                                               ; preds = %68
  %99 = load i32, i32* %2, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i64, i64* @errno, align 8
  %103 = load i64, i64* @EINTR, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @exit(i32 1) #3
  unreachable

107:                                              ; preds = %101, %98
  %108 = call i32 (...) @display()
  %109 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  br label %18

110:                                              ; preds = %84
  br label %15
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @display(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @getch(...) #1

declare dso_local i64 @keyboard_dispatch(i32) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @command(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
