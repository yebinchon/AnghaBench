; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_events.c_event_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_events.c_event_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i8* }

@.str = private unnamed_addr constant [39 x i8] c"event_continue: cannot allocate memory\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_continue(%struct.event* %0, i8* %1) #0 {
  %3 = alloca %struct.event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.event* %0, %struct.event** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @convert(i8* %7)
  store i8* %8, i8** %6, align 8
  %9 = load %struct.event*, %struct.event** %3, align 8
  %10 = getelementptr inbounds %struct.event, %struct.event* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.event*, %struct.event** %3, align 8
  %18 = getelementptr inbounds %struct.event, %struct.event* %17, i32 0, i32 0
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @asprintf(i8** %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %20)
  %22 = load %struct.event*, %struct.event** %3, align 8
  %23 = getelementptr inbounds %struct.event, %struct.event* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  ret void
}

declare dso_local i8* @convert(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
