; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_keyring_object.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_keyring_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"%s:%hd/%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.credential*)* @keyring_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @keyring_object(%struct.credential* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.credential*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  %4 = load %struct.credential*, %struct.credential** %3, align 8
  %5 = getelementptr inbounds %struct.credential, %struct.credential* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.credential*, %struct.credential** %3, align 8
  %11 = getelementptr inbounds %struct.credential, %struct.credential* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.credential*, %struct.credential** %3, align 8
  %16 = getelementptr inbounds %struct.credential, %struct.credential* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.credential*, %struct.credential** %3, align 8
  %19 = getelementptr inbounds %struct.credential, %struct.credential* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.credential*, %struct.credential** %3, align 8
  %23 = getelementptr inbounds %struct.credential, %struct.credential* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* (i8*, i32, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %24)
  store i8* %25, i8** %2, align 8
  br label %34

26:                                               ; preds = %9
  %27 = load %struct.credential*, %struct.credential** %3, align 8
  %28 = getelementptr inbounds %struct.credential, %struct.credential* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.credential*, %struct.credential** %3, align 8
  %31 = getelementptr inbounds %struct.credential, %struct.credential* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* (i8*, i32, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %26, %14, %8
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i8* @g_strdup_printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
