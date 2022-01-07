; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_flags_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_flags_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"flags = %d (\00", align 1
@EV_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"EV_ADD \00", align 1
@EV_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"EV_ENABLE \00", align 1
@EV_DISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"EV_DISABLE \00", align 1
@EV_DELETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"EV_DELETE \00", align 1
@EV_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"EV_ONESHOT \00", align 1
@EV_CLEAR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"EV_CLEAR \00", align 1
@EV_EOF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"EV_EOF \00", align 1
@EV_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"EV_ERROR \00", align 1
@EV_DISPATCH = common dso_local global i32 0, align 4
@EV_RECEIPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kevent_flags_dump(%struct.kevent* %0) #0 {
  %2 = alloca %struct.kevent*, align 8
  %3 = alloca i8*, align 8
  store %struct.kevent* %0, %struct.kevent** %2, align 8
  %4 = call i8* @calloc(i32 1, i32 1024)
  store i8* %4, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @abort() #3
  unreachable

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.kevent*, %struct.kevent** %2, align 8
  %11 = getelementptr inbounds %struct.kevent, %struct.kevent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snprintf(i8* %9, i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.kevent*, %struct.kevent** %2, align 8
  %15 = getelementptr inbounds %struct.kevent, %struct.kevent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EV_ADD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @strncat(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 64)
  br label %23

23:                                               ; preds = %20, %8
  %24 = load %struct.kevent*, %struct.kevent** %2, align 8
  %25 = getelementptr inbounds %struct.kevent, %struct.kevent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EV_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @strncat(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 64)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.kevent*, %struct.kevent** %2, align 8
  %35 = getelementptr inbounds %struct.kevent, %struct.kevent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EV_DISABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  %42 = call i8* @strncat(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 64)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.kevent*, %struct.kevent** %2, align 8
  %45 = getelementptr inbounds %struct.kevent, %struct.kevent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EV_DELETE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %3, align 8
  %52 = call i8* @strncat(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 64)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.kevent*, %struct.kevent** %2, align 8
  %55 = getelementptr inbounds %struct.kevent, %struct.kevent* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EV_ONESHOT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i8*, i8** %3, align 8
  %62 = call i8* @strncat(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 64)
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.kevent*, %struct.kevent** %2, align 8
  %65 = getelementptr inbounds %struct.kevent, %struct.kevent* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EV_CLEAR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = call i8* @strncat(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 64)
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.kevent*, %struct.kevent** %2, align 8
  %75 = getelementptr inbounds %struct.kevent, %struct.kevent* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EV_EOF, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i8*, i8** %3, align 8
  %82 = call i8* @strncat(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 64)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.kevent*, %struct.kevent** %2, align 8
  %85 = getelementptr inbounds %struct.kevent, %struct.kevent* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @EV_ERROR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i8*, i8** %3, align 8
  %92 = call i8* @strncat(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 64)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load i8*, i8** %3, align 8
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  store i8 41, i8* %99, align 1
  %100 = load i8*, i8** %3, align 8
  ret i8* %100
}

declare dso_local i8* @calloc(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @strncat(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
