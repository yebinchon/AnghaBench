; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_flush_caches.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_flush_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32 }

@MNT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getmntinfo\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"flushing autofs caches\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"skipping %s, filesystem type is not autofs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_caches() #0 {
  %1 = alloca %struct.statfs*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MNT_WAIT, align 4
  %5 = call i32 @getmntinfo(%struct.statfs** %1, i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %41, %10
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load %struct.statfs*, %struct.statfs** %1, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.statfs, %struct.statfs* %17, i64 %19
  %21 = getelementptr inbounds %struct.statfs, %struct.statfs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.statfs*, %struct.statfs** %1, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.statfs, %struct.statfs* %26, i64 %28
  %30 = getelementptr inbounds %struct.statfs, %struct.statfs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %41

33:                                               ; preds = %16
  %34 = load %struct.statfs*, %struct.statfs** %1, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.statfs, %struct.statfs* %34, i64 %36
  %38 = getelementptr inbounds %struct.statfs, %struct.statfs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @flush_autofs(i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %12

44:                                               ; preds = %12
  ret void
}

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @flush_autofs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
