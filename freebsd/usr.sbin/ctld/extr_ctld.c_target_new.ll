; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_target_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_target_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32, %struct.conf*, i32* }
%struct.conf = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"duplicated target \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"target name \22%s\22 is invalid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@t_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.target* @target_new(%struct.conf* %0, i8* %1) #0 {
  %3 = alloca %struct.target*, align 8
  %4 = alloca %struct.conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.conf*, %struct.conf** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.target* @target_find(%struct.conf* %9, i8* %10)
  store %struct.target* %11, %struct.target** %6, align 8
  %12 = load %struct.target*, %struct.target** %6, align 8
  %13 = icmp ne %struct.target* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @log_warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %15)
  store %struct.target* null, %struct.target** %3, align 8
  br label %72

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @valid_iscsi_name(i8* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @log_warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store %struct.target* null, %struct.target** %3, align 8
  br label %72

24:                                               ; preds = %17
  %25 = call %struct.target* @calloc(i32 1, i32 24)
  store %struct.target* %25, %struct.target** %6, align 8
  %26 = load %struct.target*, %struct.target** %6, align 8
  %27 = icmp eq %struct.target* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @checked_strdup(i8* %31)
  %33 = load %struct.target*, %struct.target** %6, align 8
  %34 = getelementptr inbounds %struct.target, %struct.target* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %56, %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.target*, %struct.target** %6, align 8
  %43 = getelementptr inbounds %struct.target, %struct.target* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @tolower(i32 %48) #3
  %50 = load %struct.target*, %struct.target** %6, align 8
  %51 = getelementptr inbounds %struct.target, %struct.target* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.conf*, %struct.conf** %4, align 8
  %61 = load %struct.target*, %struct.target** %6, align 8
  %62 = getelementptr inbounds %struct.target, %struct.target* %61, i32 0, i32 1
  store %struct.conf* %60, %struct.conf** %62, align 8
  %63 = load %struct.target*, %struct.target** %6, align 8
  %64 = getelementptr inbounds %struct.target, %struct.target* %63, i32 0, i32 0
  %65 = call i32 @TAILQ_INIT(i32* %64)
  %66 = load %struct.conf*, %struct.conf** %4, align 8
  %67 = getelementptr inbounds %struct.conf, %struct.conf* %66, i32 0, i32 0
  %68 = load %struct.target*, %struct.target** %6, align 8
  %69 = load i32, i32* @t_next, align 4
  %70 = call i32 @TAILQ_INSERT_TAIL(i32* %67, %struct.target* %68, i32 %69)
  %71 = load %struct.target*, %struct.target** %6, align 8
  store %struct.target* %71, %struct.target** %3, align 8
  br label %72

72:                                               ; preds = %59, %21, %14
  %73 = load %struct.target*, %struct.target** %3, align 8
  ret %struct.target* %73
}

declare dso_local %struct.target* @target_find(%struct.conf*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local i32 @valid_iscsi_name(i8*) #1

declare dso_local %struct.target* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32* @checked_strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
