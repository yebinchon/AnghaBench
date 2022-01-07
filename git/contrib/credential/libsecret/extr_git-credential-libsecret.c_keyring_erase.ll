; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_keyring_erase.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_keyring_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@SECRET_SCHEMA_COMPAT_NETWORK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"erase failed: %s\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.credential*)* @keyring_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_erase(%struct.credential* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store i32* null, i32** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %6 = load %struct.credential*, %struct.credential** %3, align 8
  %7 = getelementptr inbounds %struct.credential, %struct.credential* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = load %struct.credential*, %struct.credential** %3, align 8
  %12 = getelementptr inbounds %struct.credential, %struct.credential* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %10
  %16 = load %struct.credential*, %struct.credential** %3, align 8
  %17 = getelementptr inbounds %struct.credential, %struct.credential* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.credential*, %struct.credential** %3, align 8
  %22 = getelementptr inbounds %struct.credential, %struct.credential* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %20, %15, %10, %1
  %28 = load %struct.credential*, %struct.credential** %3, align 8
  %29 = call i32* @make_attr_list(%struct.credential* %28)
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* @SECRET_SCHEMA_COMPAT_NETWORK, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @secret_password_clearv_sync(i32 %30, i32* %31, i32* null, %struct.TYPE_4__** %5)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @g_hash_table_unref(i32* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @g_critical(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = call i32 @g_error_free(%struct.TYPE_4__* %42)
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %37, %25
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32* @make_attr_list(%struct.credential*) #1

declare dso_local i32 @secret_password_clearv_sync(i32, i32*, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @g_hash_table_unref(i32*) #1

declare dso_local i32 @g_critical(i8*, i32) #1

declare dso_local i32 @g_error_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
