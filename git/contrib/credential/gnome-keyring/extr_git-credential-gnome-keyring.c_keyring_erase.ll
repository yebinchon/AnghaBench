; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_keyring_erase.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/gnome-keyring/extr_git-credential-gnome-keyring.c_keyring_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@GNOME_KEYRING_RESULT_NO_MATCH = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@GNOME_KEYRING_RESULT_CANCELLED = common dso_local global i64 0, align 8
@GNOME_KEYRING_RESULT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.credential*)* @keyring_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_erase(%struct.credential* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = load %struct.credential*, %struct.credential** %3, align 8
  %9 = getelementptr inbounds %struct.credential, %struct.credential* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %1
  %13 = load %struct.credential*, %struct.credential** %3, align 8
  %14 = getelementptr inbounds %struct.credential, %struct.credential* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load %struct.credential*, %struct.credential** %3, align 8
  %19 = getelementptr inbounds %struct.credential, %struct.credential* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load %struct.credential*, %struct.credential** %3, align 8
  %24 = getelementptr inbounds %struct.credential, %struct.credential* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %28, i32* %2, align 4
  br label %92

29:                                               ; preds = %22, %17, %12, %1
  %30 = load %struct.credential*, %struct.credential** %3, align 8
  %31 = call i8* @keyring_object(%struct.credential* %30)
  store i8* %31, i8** %4, align 8
  %32 = load %struct.credential*, %struct.credential** %3, align 8
  %33 = getelementptr inbounds %struct.credential, %struct.credential* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.credential*, %struct.credential** %3, align 8
  %36 = getelementptr inbounds %struct.credential, %struct.credential* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.credential*, %struct.credential** %3, align 8
  %40 = getelementptr inbounds %struct.credential, %struct.credential* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.credential*, %struct.credential** %3, align 8
  %43 = getelementptr inbounds %struct.credential, %struct.credential* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @gnome_keyring_find_network_password_sync(i32 %34, i32* null, i32 %37, i8* %38, i32 %41, i32* null, i32 %44, %struct.TYPE_6__** %5)
  store i64 %45, i64* %7, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @g_free(i8* %46)
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @GNOME_KEYRING_RESULT_NO_MATCH, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %29
  %52 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %52, i32* %2, align 4
  br label %92

53:                                               ; preds = %29
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @GNOME_KEYRING_RESULT_CANCELLED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %58, i32* %2, align 4
  br label %92

59:                                               ; preds = %53
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @GNOME_KEYRING_RESULT_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @gnome_keyring_result_to_message(i64 %64)
  %66 = call i32 @g_critical(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %67, i32* %2, align 4
  br label %92

68:                                               ; preds = %59
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %6, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @gnome_keyring_item_delete_sync(i32 %75, i32 %78)
  store i64 %79, i64* %7, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = call i32 @gnome_keyring_network_password_list_free(%struct.TYPE_6__* %80)
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @GNOME_KEYRING_RESULT_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %68
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @gnome_keyring_result_to_message(i64 %86)
  %88 = call i32 @g_critical(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %68
  %91 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %85, %63, %57, %51, %27
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @keyring_object(%struct.credential*) #1

declare dso_local i64 @gnome_keyring_find_network_password_sync(i32, i32*, i32, i8*, i32, i32*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_critical(i8*, i32) #1

declare dso_local i32 @gnome_keyring_result_to_message(i64) #1

declare dso_local i64 @gnome_keyring_item_delete_sync(i32, i32) #1

declare dso_local i32 @gnome_keyring_network_password_list_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
