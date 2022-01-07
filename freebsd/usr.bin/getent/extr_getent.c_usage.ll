; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getentdb = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s database [key ...]\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"       database may be one of:\0A\09\00", align 1
@databases = common dso_local global %struct.getentdb* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RV_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage() #0 {
  %1 = alloca %struct.getentdb*, align 8
  %2 = load i32, i32* @stderr, align 4
  %3 = call i8* (...) @getprogname()
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.getentdb*, %struct.getentdb** @databases, align 8
  store %struct.getentdb* %7, %struct.getentdb** %1, align 8
  br label %8

8:                                                ; preds = %19, %0
  %9 = load %struct.getentdb*, %struct.getentdb** %1, align 8
  %10 = getelementptr inbounds %struct.getentdb, %struct.getentdb* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i32, i32* @stderr, align 4
  %15 = load %struct.getentdb*, %struct.getentdb** %1, align 8
  %16 = getelementptr inbounds %struct.getentdb, %struct.getentdb* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %13
  %20 = load %struct.getentdb*, %struct.getentdb** %1, align 8
  %21 = getelementptr inbounds %struct.getentdb, %struct.getentdb* %20, i32 1
  store %struct.getentdb* %21, %struct.getentdb** %1, align 8
  br label %8

22:                                               ; preds = %8
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @RV_USAGE, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

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
