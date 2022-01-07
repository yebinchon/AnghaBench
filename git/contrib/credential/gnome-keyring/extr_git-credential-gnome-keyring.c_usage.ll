; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_usage.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential_operation = type { i64 }

@credential_helper_ops = common dso_local global %struct.credential_operation* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"usage: %s <\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.credential_operation*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.credential_operation*, %struct.credential_operation** @credential_helper_ops, align 8
  store %struct.credential_operation* %5, %struct.credential_operation** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strrchr(i8* %6, i8 signext 47)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  br label %15

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i8* [ %12, %10 ], [ %14, %13 ]
  store i8* %16, i8** %4, align 8
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %40, %15
  %21 = load %struct.credential_operation*, %struct.credential_operation** %3, align 8
  %22 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = load %struct.credential_operation*, %struct.credential_operation** %3, align 8
  %28 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %27, i32 1
  store %struct.credential_operation* %28, %struct.credential_operation** %3, align 8
  %29 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %27, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load %struct.credential_operation*, %struct.credential_operation** %3, align 8
  %34 = getelementptr inbounds %struct.credential_operation, %struct.credential_operation* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %25
  br label %20

41:                                               ; preds = %20
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
