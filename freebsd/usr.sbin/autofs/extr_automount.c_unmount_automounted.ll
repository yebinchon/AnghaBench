; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_unmount_automounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_unmount_automounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32, i32 }

@MNT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getmntinfo\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unmounting automounted filesystems\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"skipping %s, filesystem type is autofs\00", align 1
@MNT_AUTOMOUNTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"skipping %s, not automounted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @unmount_automounted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmount_automounted(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @MNT_WAIT, align 4
  %7 = call i32 @getmntinfo(%struct.statfs** %3, i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %60, %12
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.statfs*, %struct.statfs** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.statfs, %struct.statfs* %19, i64 %21
  %23 = getelementptr inbounds %struct.statfs, %struct.statfs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.statfs*, %struct.statfs** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.statfs, %struct.statfs* %28, i64 %30
  %32 = getelementptr inbounds %struct.statfs, %struct.statfs* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %60

35:                                               ; preds = %18
  %36 = load %struct.statfs*, %struct.statfs** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.statfs, %struct.statfs* %36, i64 %38
  %40 = getelementptr inbounds %struct.statfs, %struct.statfs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MNT_AUTOMOUNTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.statfs*, %struct.statfs** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.statfs, %struct.statfs* %46, i64 %48
  %50 = getelementptr inbounds %struct.statfs, %struct.statfs* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  br label %60

53:                                               ; preds = %35
  %54 = load %struct.statfs*, %struct.statfs** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.statfs, %struct.statfs* %54, i64 %56
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @unmount_by_statfs(%struct.statfs* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %45, %27
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %14

63:                                               ; preds = %14
  ret void
}

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @unmount_by_statfs(%struct.statfs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
