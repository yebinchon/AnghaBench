; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_option_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_option_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8* }
%struct.options = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"duplicated option \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@o_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.option* @option_new(%struct.options* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca %struct.options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.option*, align 8
  store %struct.options* %0, %struct.options** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.options*, %struct.options** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.option* @option_find(%struct.options* %9, i8* %10)
  store %struct.option* %11, %struct.option** %8, align 8
  %12 = load %struct.option*, %struct.option** %8, align 8
  %13 = icmp ne %struct.option* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @log_warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %15)
  store %struct.option* null, %struct.option** %4, align 8
  br label %37

17:                                               ; preds = %3
  %18 = call %struct.option* @calloc(i32 1, i32 16)
  store %struct.option* %18, %struct.option** %8, align 8
  %19 = load %struct.option*, %struct.option** %8, align 8
  %20 = icmp eq %struct.option* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @checked_strdup(i8* %24)
  %26 = load %struct.option*, %struct.option** %8, align 8
  %27 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @checked_strdup(i8* %28)
  %30 = load %struct.option*, %struct.option** %8, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.options*, %struct.options** %5, align 8
  %33 = load %struct.option*, %struct.option** %8, align 8
  %34 = load i32, i32* @o_next, align 4
  %35 = call i32 @TAILQ_INSERT_TAIL(%struct.options* %32, %struct.option* %33, i32 %34)
  %36 = load %struct.option*, %struct.option** %8, align 8
  store %struct.option* %36, %struct.option** %4, align 8
  br label %37

37:                                               ; preds = %23, %14
  %38 = load %struct.option*, %struct.option** %4, align 8
  ret %struct.option* %38
}

declare dso_local %struct.option* @option_find(%struct.options*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local %struct.option* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.options*, %struct.option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
