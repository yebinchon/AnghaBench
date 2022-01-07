; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_mount_if_not_already.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_mount_if_not_already.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }
%struct.statfs = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"map %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"unknown filesystem mounted on %s; mounting\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"autofs already mounted on %s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"nothing mounted on %s; mounting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node*, i8*, i8*, i8*, %struct.statfs*, i32)* @mount_if_not_already to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mount_if_not_already(%struct.node* %0, i8* %1, i8* %2, i8* %3, %struct.statfs* %4, i32 %5) #0 {
  %7 = alloca %struct.node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.statfs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.statfs*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.statfs* %4, %struct.statfs** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %6
  %24 = load %struct.node*, %struct.node** %7, align 8
  %25 = call i8* @node_path(%struct.node* %24)
  store i8* %25, i8** %14, align 8
  %26 = load %struct.statfs*, %struct.statfs** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = call %struct.statfs* @find_statfs(%struct.statfs* %26, i32 %27, i8* %28)
  store %struct.statfs* %29, %struct.statfs** %13, align 8
  %30 = load %struct.statfs*, %struct.statfs** %13, align 8
  %31 = icmp ne %struct.statfs* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %23
  %33 = load %struct.statfs*, %struct.statfs** %13, align 8
  %34 = getelementptr inbounds %struct.statfs, %struct.statfs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @log_debugx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %48

41:                                               ; preds = %32
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @log_debugx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @free(i8* %46)
  br label %62

48:                                               ; preds = %38
  br label %52

49:                                               ; preds = %23
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @log_debugx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i8*, i8** %15, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @mount_autofs(i8* %53, i8* %54, i8* %55, i8* %56)
  %58 = load i8*, i8** %15, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %52, %41
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i8* @node_path(%struct.node*) #1

declare dso_local %struct.statfs* @find_statfs(%struct.statfs*, i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @log_debugx(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mount_autofs(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
