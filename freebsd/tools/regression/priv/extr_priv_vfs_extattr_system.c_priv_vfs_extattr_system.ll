; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_extattr_system.c_priv_vfs_extattr_system.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_vfs_extattr_system.c_priv_vfs_extattr_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@fpath = common dso_local global i32 0, align 4
@EA_NAMESPACE = common dso_local global i32 0, align 4
@EA_NAME = common dso_local global i32 0, align 4
@EA_DATA = common dso_local global i32 0, align 4
@EA_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"priv_vfs_extattr_system: set returned %zd\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"priv_vfs_extattr_system(asroot, injail)\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"priv_vfs_extattr_system(asroot, !injail)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"priv_vfs_extattr_system(!asroot, injail)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"priv_vfs_extattr_system(!asroot, !injail)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_vfs_extattr_system(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %9 = load i32, i32* @fpath, align 4
  %10 = load i32, i32* @EA_NAMESPACE, align 4
  %11 = load i32, i32* @EA_NAME, align 4
  %12 = load i32, i32* @EA_DATA, align 4
  %13 = load i64, i64* @EA_SIZE, align 8
  %14 = call i64 @extattr_set_file(i32 %9, i32 %10, i32 %11, i32 %12, i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %8, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @EA_SIZE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %26

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @err(i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %23, %22
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EPERM, align 4
  %36 = call i32 @expect(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 -1, i32 %35)
  br label %37

37:                                               ; preds = %33, %30, %27
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @expect(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 0, i32 0)
  br label %46

46:                                               ; preds = %43, %40, %37
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @EPERM, align 4
  %55 = call i32 @expect(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 -1, i32 %54)
  br label %56

56:                                               ; preds = %52, %49, %46
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @EPERM, align 4
  %65 = call i32 @expect(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 -1, i32 %64)
  br label %66

66:                                               ; preds = %62, %59, %56
  ret void
}

declare dso_local i64 @extattr_set_file(i32, i32, i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*, i64) #1

declare dso_local i32 @expect(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
