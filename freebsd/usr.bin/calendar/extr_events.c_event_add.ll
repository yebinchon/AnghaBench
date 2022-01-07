; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_events.c_event_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_events.c_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [34 x i8] c"event_add: cannot allocate memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event* @event_add(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.event*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = call i64 @calloc(i32 1, i32 40)
  %17 = inttoptr i64 %16 to %struct.event*
  store %struct.event* %17, %struct.event** %15, align 8
  %18 = load %struct.event*, %struct.event** %15, align 8
  %19 = icmp eq %struct.event* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %7
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.event*, %struct.event** %15, align 8
  %25 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.event*, %struct.event** %15, align 8
  %28 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.event*, %struct.event** %15, align 8
  %31 = getelementptr inbounds %struct.event, %struct.event* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i8* @convert(i8* %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.event*, %struct.event** %15, align 8
  %36 = getelementptr inbounds %struct.event, %struct.event* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = load %struct.event*, %struct.event** %15, align 8
  %38 = getelementptr inbounds %struct.event, %struct.event* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i8*, i8** %13, align 8
  %45 = call i8* @convert(i8* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.event*, %struct.event** %15, align 8
  %48 = getelementptr inbounds %struct.event, %struct.event* %47, i32 0, i32 4
  store i32* %46, i32** %48, align 8
  %49 = load %struct.event*, %struct.event** %15, align 8
  %50 = getelementptr inbounds %struct.event, %struct.event* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %43
  %56 = load %struct.event*, %struct.event** %15, align 8
  %57 = getelementptr inbounds %struct.event, %struct.event* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i8*, i8** %14, align 8
  %68 = call i8* @convert(i8* %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.event*, %struct.event** %15, align 8
  %71 = getelementptr inbounds %struct.event, %struct.event* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  br label %72

72:                                               ; preds = %66, %60, %55
  %73 = load %struct.event*, %struct.event** %15, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @addtodate(%struct.event* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.event*, %struct.event** %15, align 8
  ret %struct.event* %78
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @convert(i8*) #1

declare dso_local i32 @addtodate(%struct.event*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
