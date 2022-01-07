; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_make_label.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_make_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Git: %s://%s:%hu/%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Git: %s://%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.credential*)* @make_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_label(%struct.credential* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.credential*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  %4 = load %struct.credential*, %struct.credential** %3, align 8
  %5 = getelementptr inbounds %struct.credential, %struct.credential* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.credential*, %struct.credential** %3, align 8
  %10 = getelementptr inbounds %struct.credential, %struct.credential* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.credential*, %struct.credential** %3, align 8
  %13 = getelementptr inbounds %struct.credential, %struct.credential* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.credential*, %struct.credential** %3, align 8
  %16 = getelementptr inbounds %struct.credential, %struct.credential* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.credential*, %struct.credential** %3, align 8
  %20 = getelementptr inbounds %struct.credential, %struct.credential* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %8
  %24 = load %struct.credential*, %struct.credential** %3, align 8
  %25 = getelementptr inbounds %struct.credential, %struct.credential* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = call i8* (i8*, i32, i32, i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i8* %18, i8* %29)
  store i8* %30, i8** %2, align 8
  br label %50

31:                                               ; preds = %1
  %32 = load %struct.credential*, %struct.credential** %3, align 8
  %33 = getelementptr inbounds %struct.credential, %struct.credential* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.credential*, %struct.credential** %3, align 8
  %36 = getelementptr inbounds %struct.credential, %struct.credential* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.credential*, %struct.credential** %3, align 8
  %39 = getelementptr inbounds %struct.credential, %struct.credential* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.credential*, %struct.credential** %3, align 8
  %44 = getelementptr inbounds %struct.credential, %struct.credential* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  br label %47

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i8* [ %45, %42 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %46 ]
  %49 = call i8* (i8*, i32, i32, i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37, i8* %48)
  store i8* %49, i8** %2, align 8
  br label %50

50:                                               ; preds = %47, %28
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i8* @g_strdup_printf(i8*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
