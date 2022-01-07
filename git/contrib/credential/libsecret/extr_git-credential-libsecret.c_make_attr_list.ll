; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_make_attr_list.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/libsecret/extr_git-credential-libsecret.c_make_attr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i64, i64, i64, i64, i64 }

@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.credential*)* @make_attr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_attr_list(%struct.credential* %0) #0 {
  %2 = alloca %struct.credential*, align 8
  %3 = alloca i32*, align 8
  store %struct.credential* %0, %struct.credential** %2, align 8
  %4 = load i32, i32* @g_str_hash, align 4
  %5 = load i32, i32* @g_str_equal, align 4
  %6 = load i32, i32* @g_free, align 4
  %7 = call i32* @g_hash_table_new_full(i32 %4, i32 %5, i32* null, i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load %struct.credential*, %struct.credential** %2, align 8
  %9 = getelementptr inbounds %struct.credential, %struct.credential* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.credential*, %struct.credential** %2, align 8
  %15 = getelementptr inbounds %struct.credential, %struct.credential* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @g_strdup(i64 %16)
  %18 = call i32 @g_hash_table_insert(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.credential*, %struct.credential** %2, align 8
  %21 = getelementptr inbounds %struct.credential, %struct.credential* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.credential*, %struct.credential** %2, align 8
  %27 = getelementptr inbounds %struct.credential, %struct.credential* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @g_strdup(i64 %28)
  %30 = call i32 @g_hash_table_insert(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.credential*, %struct.credential** %2, align 8
  %33 = getelementptr inbounds %struct.credential, %struct.credential* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.credential*, %struct.credential** %2, align 8
  %39 = getelementptr inbounds %struct.credential, %struct.credential* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @g_strdup(i64 %40)
  %42 = call i32 @g_hash_table_insert(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.credential*, %struct.credential** %2, align 8
  %45 = getelementptr inbounds %struct.credential, %struct.credential* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.credential*, %struct.credential** %2, align 8
  %51 = getelementptr inbounds %struct.credential, %struct.credential* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  %54 = call i32 @g_hash_table_insert(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.credential*, %struct.credential** %2, align 8
  %57 = getelementptr inbounds %struct.credential, %struct.credential* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.credential*, %struct.credential** %2, align 8
  %63 = getelementptr inbounds %struct.credential, %struct.credential* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @g_strdup(i64 %64)
  %66 = call i32 @g_hash_table_insert(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i32*, i32** %3, align 8
  ret i32* %68
}

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32*, i32) #1

declare dso_local i32 @g_hash_table_insert(i32*, i8*, i32) #1

declare dso_local i32 @g_strdup(i64) #1

declare dso_local i32 @g_strdup_printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
