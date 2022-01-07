; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_keyring_store.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_keyring_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i32, i32, i64, i32, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@GNOME_KEYRING_DEFAULT = common dso_local global i32 0, align 4
@GNOME_KEYRING_RESULT_OK = common dso_local global i64 0, align 8
@GNOME_KEYRING_RESULT_CANCELLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.credential*)* @keyring_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_store(%struct.credential* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store i8* null, i8** %5, align 8
  %7 = load %struct.credential*, %struct.credential** %3, align 8
  %8 = getelementptr inbounds %struct.credential, %struct.credential* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.credential*, %struct.credential** %3, align 8
  %13 = getelementptr inbounds %struct.credential, %struct.credential* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.credential*, %struct.credential** %3, align 8
  %18 = getelementptr inbounds %struct.credential, %struct.credential* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16, %11
  %22 = load %struct.credential*, %struct.credential** %3, align 8
  %23 = getelementptr inbounds %struct.credential, %struct.credential* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.credential*, %struct.credential** %3, align 8
  %28 = getelementptr inbounds %struct.credential, %struct.credential* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %21, %16, %1
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %26
  %34 = load %struct.credential*, %struct.credential** %3, align 8
  %35 = call i8* @keyring_object(%struct.credential* %34)
  store i8* %35, i8** %5, align 8
  %36 = load i32, i32* @GNOME_KEYRING_DEFAULT, align 4
  %37 = load %struct.credential*, %struct.credential** %3, align 8
  %38 = getelementptr inbounds %struct.credential, %struct.credential* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.credential*, %struct.credential** %3, align 8
  %41 = getelementptr inbounds %struct.credential, %struct.credential* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.credential*, %struct.credential** %3, align 8
  %45 = getelementptr inbounds %struct.credential, %struct.credential* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.credential*, %struct.credential** %3, align 8
  %48 = getelementptr inbounds %struct.credential, %struct.credential* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.credential*, %struct.credential** %3, align 8
  %51 = getelementptr inbounds %struct.credential, %struct.credential* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @gnome_keyring_set_network_password_sync(i32 %36, i32 %39, i32* null, i64 %42, i8* %43, i32 %46, i32* null, i32 %49, i32 %52, i32* %4)
  store i64 %53, i64* %6, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @g_free(i8* %54)
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @GNOME_KEYRING_RESULT_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %33
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @GNOME_KEYRING_RESULT_CANCELLED, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @gnome_keyring_result_to_message(i64 %64)
  %66 = call i32 @g_critical(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %67, i32* %2, align 4
  br label %70

68:                                               ; preds = %59, %33
  %69 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %63, %31
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @keyring_object(%struct.credential*) #1

declare dso_local i64 @gnome_keyring_set_network_password_sync(i32, i32, i32*, i64, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_critical(i8*, i32) #1

declare dso_local i32 @gnome_keyring_result_to_message(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
