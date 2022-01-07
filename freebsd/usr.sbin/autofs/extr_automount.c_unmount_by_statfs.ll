; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_unmount_by_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_unmount_by_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"FSID:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unmounting %s using %s\00", align 1
@MNT_BYFSID = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot unmount %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statfs*, i32)* @unmount_by_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmount_by_statfs(%struct.statfs* %0, i32 %1) #0 {
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.statfs* %0, %struct.statfs** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.statfs*, %struct.statfs** %3, align 8
  %10 = getelementptr inbounds %struct.statfs, %struct.statfs* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.statfs*, %struct.statfs** %3, align 8
  %16 = getelementptr inbounds %struct.statfs, %struct.statfs* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @asprintf(i8** %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.statfs*, %struct.statfs** %3, align 8
  %28 = getelementptr inbounds %struct.statfs, %struct.statfs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @log_debugx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %29, i8* %30)
  %32 = load i32, i32* @MNT_BYFSID, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @MNT_FORCE, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %26
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @unmount(i8* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.statfs*, %struct.statfs** %3, align 8
  %49 = getelementptr inbounds %struct.statfs, %struct.statfs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @log_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %39
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @log_debugx(i8*, i32, i8*) #1

declare dso_local i32 @unmount(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @log_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
