; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_keyring_get.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_keyring_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i8*, i8*, i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not connect to Secret Service: %s\00", align 1
@SECRET_SCHEMA_COMPAT_NETWORK = common dso_local global i32 0, align 4
@SECRET_SEARCH_LOAD_SECRETS = common dso_local global i32 0, align 4
@SECRET_SEARCH_UNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"lookup failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@g_object_unref = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.credential*)* @keyring_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_get(%struct.credential* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.credential*, %struct.credential** %3, align 8
  %12 = getelementptr inbounds %struct.credential, %struct.credential* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.credential*, %struct.credential** %3, align 8
  %17 = getelementptr inbounds %struct.credential, %struct.credential* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.credential*, %struct.credential** %3, align 8
  %22 = getelementptr inbounds %struct.credential, %struct.credential* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %26, i32* %2, align 4
  br label %109

27:                                               ; preds = %20, %15
  %28 = call i32* @secret_service_get_sync(i32 0, i32* null, %struct.TYPE_9__** %6)
  store i32* %28, i32** %4, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @g_critical(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = call i32 @g_error_free(%struct.TYPE_9__* %36)
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %38, i32* %2, align 4
  br label %109

39:                                               ; preds = %27
  %40 = load %struct.credential*, %struct.credential** %3, align 8
  %41 = call i32* @make_attr_list(%struct.credential* %40)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @SECRET_SCHEMA_COMPAT_NETWORK, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @SECRET_SEARCH_LOAD_SECRETS, align 4
  %46 = load i32, i32* @SECRET_SEARCH_UNLOCK, align 4
  %47 = or i32 %45, %46
  %48 = call %struct.TYPE_8__* @secret_service_search_sync(i32* %42, i32 %43, i32* %44, i32 %47, i32* null, %struct.TYPE_9__** %6)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %7, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @g_hash_table_unref(i32* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %39
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @g_critical(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = call i32 @g_error_free(%struct.TYPE_9__* %58)
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %60, i32* %2, align 4
  br label %109

61:                                               ; preds = %39
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %107

64:                                               ; preds = %61
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %8, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32* @secret_item_get_secret(i32* %68)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @secret_item_get_attributes(i32* %70)
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i8* @g_hash_table_lookup(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load %struct.credential*, %struct.credential** %3, align 8
  %78 = getelementptr inbounds %struct.credential, %struct.credential* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @g_free(i8* %79)
  %81 = load i8*, i8** %10, align 8
  %82 = call i8* @g_strdup(i8* %81)
  %83 = load %struct.credential*, %struct.credential** %3, align 8
  %84 = getelementptr inbounds %struct.credential, %struct.credential* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %76, %64
  %86 = load i32*, i32** %9, align 8
  %87 = call i8* @secret_value_get_text(i32* %86)
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.credential*, %struct.credential** %3, align 8
  %92 = getelementptr inbounds %struct.credential, %struct.credential* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @g_free(i8* %93)
  %95 = load i8*, i8** %10, align 8
  %96 = call i8* @g_strdup(i8* %95)
  %97 = load %struct.credential*, %struct.credential** %3, align 8
  %98 = getelementptr inbounds %struct.credential, %struct.credential* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %90, %85
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @g_hash_table_unref(i32* %100)
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @secret_value_unref(i32* %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = load i32, i32* @g_object_unref, align 4
  %106 = call i32 @g_list_free_full(%struct.TYPE_8__* %104, i32 %105)
  br label %107

107:                                              ; preds = %99, %61
  %108 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %53, %31, %25
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32* @secret_service_get_sync(i32, i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @g_critical(i8*, i32) #1

declare dso_local i32 @g_error_free(%struct.TYPE_9__*) #1

declare dso_local i32* @make_attr_list(%struct.credential*) #1

declare dso_local %struct.TYPE_8__* @secret_service_search_sync(i32*, i32, i32*, i32, i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @g_hash_table_unref(i32*) #1

declare dso_local i32* @secret_item_get_secret(i32*) #1

declare dso_local i32* @secret_item_get_attributes(i32*) #1

declare dso_local i8* @g_hash_table_lookup(i32*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @secret_value_get_text(i32*) #1

declare dso_local i32 @secret_value_unref(i32*) #1

declare dso_local i32 @g_list_free_full(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
