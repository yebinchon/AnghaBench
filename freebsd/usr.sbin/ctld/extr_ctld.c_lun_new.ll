; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_lun_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_lun_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lun = type { i32, i32, i32, %struct.conf* }
%struct.conf = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"duplicated lun \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@l_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lun* @lun_new(%struct.conf* %0, i8* %1) #0 {
  %3 = alloca %struct.lun*, align 8
  %4 = alloca %struct.conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lun*, align 8
  store %struct.conf* %0, %struct.conf** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.conf*, %struct.conf** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.lun* @lun_find(%struct.conf* %7, i8* %8)
  store %struct.lun* %9, %struct.lun** %6, align 8
  %10 = load %struct.lun*, %struct.lun** %6, align 8
  %11 = icmp ne %struct.lun* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @log_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %13)
  store %struct.lun* null, %struct.lun** %3, align 8
  br label %40

15:                                               ; preds = %2
  %16 = call %struct.lun* @calloc(i32 1, i32 24)
  store %struct.lun* %16, %struct.lun** %6, align 8
  %17 = load %struct.lun*, %struct.lun** %6, align 8
  %18 = icmp eq %struct.lun* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load %struct.conf*, %struct.conf** %4, align 8
  %23 = load %struct.lun*, %struct.lun** %6, align 8
  %24 = getelementptr inbounds %struct.lun, %struct.lun* %23, i32 0, i32 3
  store %struct.conf* %22, %struct.conf** %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @checked_strdup(i8* %25)
  %27 = load %struct.lun*, %struct.lun** %6, align 8
  %28 = getelementptr inbounds %struct.lun, %struct.lun* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.lun*, %struct.lun** %6, align 8
  %30 = getelementptr inbounds %struct.lun, %struct.lun* %29, i32 0, i32 1
  %31 = call i32 @TAILQ_INIT(i32* %30)
  %32 = load %struct.conf*, %struct.conf** %4, align 8
  %33 = getelementptr inbounds %struct.conf, %struct.conf* %32, i32 0, i32 0
  %34 = load %struct.lun*, %struct.lun** %6, align 8
  %35 = load i32, i32* @l_next, align 4
  %36 = call i32 @TAILQ_INSERT_TAIL(i32* %33, %struct.lun* %34, i32 %35)
  %37 = load %struct.lun*, %struct.lun** %6, align 8
  %38 = getelementptr inbounds %struct.lun, %struct.lun* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load %struct.lun*, %struct.lun** %6, align 8
  store %struct.lun* %39, %struct.lun** %3, align 8
  br label %40

40:                                               ; preds = %21, %12
  %41 = load %struct.lun*, %struct.lun** %3, align 8
  ret %struct.lun* %41
}

declare dso_local %struct.lun* @lun_find(%struct.conf*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local %struct.lun* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @checked_strdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.lun*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
