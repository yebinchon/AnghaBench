; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_writeprivs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_writeprivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { i8*, %struct.TYPE_2__, %struct.quotause* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@L_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tmpfil = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Quotas for %s %s:\0A\00", align 1
@qfextension = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"%s: in use: %s, \00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"limits (soft = %s, \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"hard = %s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\09inodes in use: %s, \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeprivs(%struct.quotause* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.quotause*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.quotause*, align 8
  %10 = alloca i32*, align 8
  store %struct.quotause* %0, %struct.quotause** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ftruncate(i32 %11, i32 0)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @L_SET, align 4
  %15 = call i32 @lseek(i32 %13, i32 0, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dup(i32 %16)
  %18 = call i32* @fdopen(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @tmpfil, align 4
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i32*, i32** %10, align 8
  %25 = load i8**, i8*** @qfextension, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %30)
  %32 = load %struct.quotause*, %struct.quotause** %5, align 8
  store %struct.quotause* %32, %struct.quotause** %9, align 8
  br label %33

33:                                               ; preds = %82, %23
  %34 = load %struct.quotause*, %struct.quotause** %9, align 8
  %35 = icmp ne %struct.quotause* %34, null
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.quotause*, %struct.quotause** %9, align 8
  %39 = getelementptr inbounds %struct.quotause, %struct.quotause* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.quotause*, %struct.quotause** %9, align 8
  %42 = getelementptr inbounds %struct.quotause, %struct.quotause* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @fmthumanvalblks(i32 %44)
  %46 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %40, i8* %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.quotause*, %struct.quotause** %9, align 8
  %49 = getelementptr inbounds %struct.quotause, %struct.quotause* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @fmthumanvalblks(i32 %51)
  %53 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.quotause*, %struct.quotause** %9, align 8
  %56 = getelementptr inbounds %struct.quotause, %struct.quotause* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @fmthumanvalblks(i32 %58)
  %60 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.quotause*, %struct.quotause** %9, align 8
  %63 = getelementptr inbounds %struct.quotause, %struct.quotause* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @fmthumanvalinos(i32 %65)
  %67 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.quotause*, %struct.quotause** %9, align 8
  %70 = getelementptr inbounds %struct.quotause, %struct.quotause* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @fmthumanvalinos(i32 %72)
  %74 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.quotause*, %struct.quotause** %9, align 8
  %77 = getelementptr inbounds %struct.quotause, %struct.quotause* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @fmthumanvalinos(i32 %79)
  %81 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %36
  %83 = load %struct.quotause*, %struct.quotause** %9, align 8
  %84 = getelementptr inbounds %struct.quotause, %struct.quotause* %83, i32 0, i32 2
  %85 = load %struct.quotause*, %struct.quotause** %84, align 8
  store %struct.quotause* %85, %struct.quotause** %9, align 8
  br label %33

86:                                               ; preds = %33
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @fclose(i32* %87)
  ret i32 1
}

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @fmthumanvalblks(i32) #1

declare dso_local i8* @fmthumanvalinos(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
