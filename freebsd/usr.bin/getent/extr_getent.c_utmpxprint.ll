; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_utmpxprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_utmpxprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, i32, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"[%jd.%06u -- %.24s] \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"system boot\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"system shutdown\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"old system time\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"new system time\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"user process: id=\22\00", align 1
@UTMPXPRINTID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"\22 pid=\22%d\22 user=\22%s\22 line=\22%s\22 host=\22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"init process: id=\22\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"\22 pid=\22%d\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"login process: id=\22\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"dead process: id=\22\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"unknown record type %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.utmpx*)* @utmpxprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @utmpxprint(%struct.utmpx* %0) #0 {
  %2 = alloca %struct.utmpx*, align 8
  store %struct.utmpx* %0, %struct.utmpx** %2, align 8
  %3 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %4 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @EMPTY, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %87

9:                                                ; preds = %1
  %10 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %11 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %21 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @ctime(i64* %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19, i32 %23)
  %25 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %26 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %82 [
    i32 135, label %28
    i32 129, label %30
    i32 130, label %32
    i32 131, label %34
    i32 128, label %36
    i32 133, label %52
    i32 132, label %59
    i32 134, label %75
  ]

28:                                               ; preds = %9
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %87

30:                                               ; preds = %9
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %87

32:                                               ; preds = %9
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %87

34:                                               ; preds = %9
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %87

36:                                               ; preds = %9
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i32, i32* @UTMPXPRINTID, align 4
  %39 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %40 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %43 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %46 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %49 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %41, i8* %44, i8* %47, i8* %50)
  br label %87

52:                                               ; preds = %9
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32, i32* @UTMPXPRINTID, align 4
  %55 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %56 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  br label %87

59:                                               ; preds = %9
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32, i32* @UTMPXPRINTID, align 4
  %62 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %63 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %66 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %69 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %72 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %64, i8* %67, i8* %70, i8* %73)
  br label %87

75:                                               ; preds = %9
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %77 = load i32, i32* @UTMPXPRINTID, align 4
  %78 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %79 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %80)
  br label %87

82:                                               ; preds = %9
  %83 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %84 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %8, %28, %30, %32, %34, %82, %75, %59, %52, %36
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ctime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
