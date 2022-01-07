; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_keyring_get.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_keyring_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@GNOME_KEYRING_RESULT_NO_MATCH = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@GNOME_KEYRING_RESULT_CANCELLED = common dso_local global i64 0, align 8
@GNOME_KEYRING_RESULT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.credential*)* @keyring_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_get(%struct.credential* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = load %struct.credential*, %struct.credential** %3, align 8
  %9 = getelementptr inbounds %struct.credential, %struct.credential* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.credential*, %struct.credential** %3, align 8
  %14 = getelementptr inbounds %struct.credential, %struct.credential* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = load %struct.credential*, %struct.credential** %3, align 8
  %19 = getelementptr inbounds %struct.credential, %struct.credential* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %17, %12
  %25 = load %struct.credential*, %struct.credential** %3, align 8
  %26 = call i8* @keyring_object(%struct.credential* %25)
  store i8* %26, i8** %4, align 8
  %27 = load %struct.credential*, %struct.credential** %3, align 8
  %28 = getelementptr inbounds %struct.credential, %struct.credential* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.credential*, %struct.credential** %3, align 8
  %31 = getelementptr inbounds %struct.credential, %struct.credential* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.credential*, %struct.credential** %3, align 8
  %35 = getelementptr inbounds %struct.credential, %struct.credential* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.credential*, %struct.credential** %3, align 8
  %38 = getelementptr inbounds %struct.credential, %struct.credential* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @gnome_keyring_find_network_password_sync(i32 %29, i32* null, i64 %32, i8* %33, i32 %36, i32* null, i32 %39, %struct.TYPE_6__** %5)
  store i64 %40, i64* %7, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @g_free(i8* %41)
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @GNOME_KEYRING_RESULT_NO_MATCH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %24
  %47 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %93

48:                                               ; preds = %24
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @GNOME_KEYRING_RESULT_CANCELLED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %53, i32* %2, align 4
  br label %93

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @GNOME_KEYRING_RESULT_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @gnome_keyring_result_to_message(i64 %59)
  %61 = call i32 @g_critical(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %62, i32* %2, align 4
  br label %93

63:                                               ; preds = %54
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %6, align 8
  %68 = load %struct.credential*, %struct.credential** %3, align 8
  %69 = getelementptr inbounds %struct.credential, %struct.credential* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gnome_keyring_memory_free(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gnome_keyring_memory_strdup(i32 %74)
  %76 = load %struct.credential*, %struct.credential** %3, align 8
  %77 = getelementptr inbounds %struct.credential, %struct.credential* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.credential*, %struct.credential** %3, align 8
  %79 = getelementptr inbounds %struct.credential, %struct.credential* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %63
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @g_strdup(i32 %85)
  %87 = load %struct.credential*, %struct.credential** %3, align 8
  %88 = getelementptr inbounds %struct.credential, %struct.credential* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %82, %63
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = call i32 @gnome_keyring_network_password_list_free(%struct.TYPE_6__* %90)
  %92 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %58, %52, %46, %22
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i8* @keyring_object(%struct.credential*) #1

declare dso_local i64 @gnome_keyring_find_network_password_sync(i32, i32*, i64, i8*, i32, i32*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_critical(i8*, i32) #1

declare dso_local i32 @gnome_keyring_result_to_message(i64) #1

declare dso_local i32 @gnome_keyring_memory_free(i32) #1

declare dso_local i32 @gnome_keyring_memory_strdup(i32) #1

declare dso_local i32 @g_strdup(i32) #1

declare dso_local i32 @gnome_keyring_network_password_list_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
