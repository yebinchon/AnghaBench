; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_portal_group_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_portal_group_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portal_group = type { i64, %struct.conf*, i32, i32, i32, i32 }
%struct.conf = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"duplicated portal-group \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@pg_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.portal_group* @portal_group_new(%struct.conf* %0, i8* %1) #0 {
  %3 = alloca %struct.portal_group*, align 8
  %4 = alloca %struct.conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.portal_group*, align 8
  store %struct.conf* %0, %struct.conf** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.conf*, %struct.conf** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.portal_group* @portal_group_find(%struct.conf* %7, i8* %8)
  store %struct.portal_group* %9, %struct.portal_group** %6, align 8
  %10 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %11 = icmp ne %struct.portal_group* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @log_warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %13)
  store %struct.portal_group* null, %struct.portal_group** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = call %struct.portal_group* @calloc(i32 1, i32 32)
  store %struct.portal_group* %16, %struct.portal_group** %6, align 8
  %17 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %18 = icmp eq %struct.portal_group* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @checked_strdup(i8* %22)
  %24 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %25 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %27 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %26, i32 0, i32 4
  %28 = call i32 @TAILQ_INIT(i32* %27)
  %29 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %30 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %29, i32 0, i32 3
  %31 = call i32 @TAILQ_INIT(i32* %30)
  %32 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %33 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %32, i32 0, i32 2
  %34 = call i32 @TAILQ_INIT(i32* %33)
  %35 = load %struct.conf*, %struct.conf** %4, align 8
  %36 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %37 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %36, i32 0, i32 1
  store %struct.conf* %35, %struct.conf** %37, align 8
  %38 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %39 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.conf*, %struct.conf** %4, align 8
  %41 = getelementptr inbounds %struct.conf, %struct.conf* %40, i32 0, i32 0
  %42 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %43 = load i32, i32* @pg_next, align 4
  %44 = call i32 @TAILQ_INSERT_TAIL(i32* %41, %struct.portal_group* %42, i32 %43)
  %45 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  store %struct.portal_group* %45, %struct.portal_group** %3, align 8
  br label %46

46:                                               ; preds = %21, %12
  %47 = load %struct.portal_group*, %struct.portal_group** %3, align 8
  ret %struct.portal_group* %47
}

declare dso_local %struct.portal_group* @portal_group_find(%struct.conf*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local %struct.portal_group* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @checked_strdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.portal_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
