; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_check_spool_dirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_check_spool_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { i32, i32 }

@dirlist = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@problems = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s and %s share the same spool, %s\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s (%s) and %s (%s) are the same directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_spool_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_spool_dirs() #0 {
  %1 = alloca %struct.dirlist*, align 8
  %2 = alloca %struct.dirlist*, align 8
  %3 = call %struct.dirlist* @LIST_FIRST(i32* @dirlist)
  store %struct.dirlist* %3, %struct.dirlist** %1, align 8
  br label %4

4:                                                ; preds = %56, %0
  %5 = load %struct.dirlist*, %struct.dirlist** %1, align 8
  %6 = icmp ne %struct.dirlist* %5, null
  br i1 %6, label %7, label %58

7:                                                ; preds = %4
  %8 = load %struct.dirlist*, %struct.dirlist** %1, align 8
  %9 = load i32, i32* @link, align 4
  %10 = call %struct.dirlist* @LIST_NEXT(%struct.dirlist* %8, i32 %9)
  store %struct.dirlist* %10, %struct.dirlist** %2, align 8
  %11 = load %struct.dirlist*, %struct.dirlist** %2, align 8
  %12 = icmp ne %struct.dirlist* %11, null
  br i1 %12, label %13, label %55

13:                                               ; preds = %7
  %14 = load %struct.dirlist*, %struct.dirlist** %1, align 8
  %15 = load %struct.dirlist*, %struct.dirlist** %2, align 8
  %16 = call i64 @equal(%struct.dirlist* %14, %struct.dirlist* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  %19 = load i32, i32* @problems, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @problems, align 4
  %21 = load %struct.dirlist*, %struct.dirlist** %1, align 8
  %22 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dirlist*, %struct.dirlist** %2, align 8
  %25 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i32 %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.dirlist*, %struct.dirlist** %1, align 8
  %31 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dirlist*, %struct.dirlist** %2, align 8
  %34 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dirlist*, %struct.dirlist** %1, align 8
  %37 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, i32, i32, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  br label %54

40:                                               ; preds = %18
  %41 = load %struct.dirlist*, %struct.dirlist** %1, align 8
  %42 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dirlist*, %struct.dirlist** %1, align 8
  %45 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dirlist*, %struct.dirlist** %2, align 8
  %48 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dirlist*, %struct.dirlist** %2, align 8
  %51 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, i32, i32, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %40, %29
  br label %56

55:                                               ; preds = %13, %7
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.dirlist*, %struct.dirlist** %2, align 8
  store %struct.dirlist* %57, %struct.dirlist** %1, align 8
  br label %4

58:                                               ; preds = %4
  ret void
}

declare dso_local %struct.dirlist* @LIST_FIRST(i32*) #1

declare dso_local %struct.dirlist* @LIST_NEXT(%struct.dirlist*, i32) #1

declare dso_local i64 @equal(%struct.dirlist*, %struct.dirlist*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @warnx(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
