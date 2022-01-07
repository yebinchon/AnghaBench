; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_writetimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_writetimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { i8*, %struct.TYPE_2__, %struct.quotause* }
%struct.TYPE_2__ = type { i32, i32 }

@L_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tmpfil = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Time units may be: days, hours, minutes, or seconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Grace period before enforcing soft limits for %ss:\0A\00", align 1
@qfextension = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: block grace period: %s, \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"file grace period: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writetimes(%struct.quotause* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.quotause*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.quotause*, align 8
  %8 = alloca i32*, align 8
  store %struct.quotause* %0, %struct.quotause** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ftruncate(i32 %9, i32 0)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @L_SET, align 4
  %13 = call i32 @lseek(i32 %11, i32 0, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dup(i32 %14)
  %16 = call i32* @fdopen(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @tmpfil, align 4
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32*, i32** %8, align 8
  %25 = load i8**, i8*** @qfextension, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = load %struct.quotause*, %struct.quotause** %4, align 8
  store %struct.quotause* %31, %struct.quotause** %7, align 8
  br label %32

32:                                               ; preds = %53, %21
  %33 = load %struct.quotause*, %struct.quotause** %7, align 8
  %34 = icmp ne %struct.quotause* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.quotause*, %struct.quotause** %7, align 8
  %38 = getelementptr inbounds %struct.quotause, %struct.quotause* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.quotause*, %struct.quotause** %7, align 8
  %41 = getelementptr inbounds %struct.quotause, %struct.quotause* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cvtstoa(i32 %43)
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %39, i8* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.quotause*, %struct.quotause** %7, align 8
  %48 = getelementptr inbounds %struct.quotause, %struct.quotause* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @cvtstoa(i32 %50)
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %35
  %54 = load %struct.quotause*, %struct.quotause** %7, align 8
  %55 = getelementptr inbounds %struct.quotause, %struct.quotause* %54, i32 0, i32 2
  %56 = load %struct.quotause*, %struct.quotause** %55, align 8
  store %struct.quotause* %56, %struct.quotause** %7, align 8
  br label %32

57:                                               ; preds = %32
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @fclose(i32* %58)
  ret i32 1
}

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @cvtstoa(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
