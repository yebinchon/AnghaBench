; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctladm/extr_ctladm.c_getoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctladm/extr_ctladm.c_getoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctladm_opts = type { i8*, i32*, i32, i32 }

@CC_OR_FOUND = common dso_local global i32 0, align 4
@CC_OR_AMBIGUOUS = common dso_local global i32 0, align 4
@CC_OR_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getoption(%struct.ctladm_opts* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctladm_opts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.ctladm_opts*, align 8
  %13 = alloca i32, align 4
  store %struct.ctladm_opts* %0, %struct.ctladm_opts** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ctladm_opts*, %struct.ctladm_opts** %7, align 8
  store %struct.ctladm_opts* %14, %struct.ctladm_opts** %12, align 8
  br label %15

15:                                               ; preds = %63, %5
  %16 = load %struct.ctladm_opts*, %struct.ctladm_opts** %12, align 8
  %17 = icmp ne %struct.ctladm_opts* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.ctladm_opts*, %struct.ctladm_opts** %12, align 8
  %20 = getelementptr inbounds %struct.ctladm_opts, %struct.ctladm_opts* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %66

25:                                               ; preds = %23
  %26 = load %struct.ctladm_opts*, %struct.ctladm_opts** %12, align 8
  %27 = getelementptr inbounds %struct.ctladm_opts, %struct.ctladm_opts* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call i64 @strncmp(i32* %28, i8* %29, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %25
  %35 = load %struct.ctladm_opts*, %struct.ctladm_opts** %12, align 8
  %36 = getelementptr inbounds %struct.ctladm_opts, %struct.ctladm_opts* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ctladm_opts*, %struct.ctladm_opts** %12, align 8
  %40 = getelementptr inbounds %struct.ctladm_opts, %struct.ctladm_opts* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ctladm_opts*, %struct.ctladm_opts** %12, align 8
  %44 = getelementptr inbounds %struct.ctladm_opts, %struct.ctladm_opts* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %11, align 8
  store i8* %45, i8** %46, align 8
  %47 = load %struct.ctladm_opts*, %struct.ctladm_opts** %12, align 8
  %48 = getelementptr inbounds %struct.ctladm_opts, %struct.ctladm_opts* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strcmp(i32* %49, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @CC_OR_FOUND, align 4
  store i32 %54, i32* %6, align 4
  br label %73

55:                                               ; preds = %34
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @CC_OR_AMBIGUOUS, align 4
  store i32 %60, i32* %6, align 4
  br label %73

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %25
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.ctladm_opts*, %struct.ctladm_opts** %12, align 8
  %65 = getelementptr inbounds %struct.ctladm_opts, %struct.ctladm_opts* %64, i32 1
  store %struct.ctladm_opts* %65, %struct.ctladm_opts** %12, align 8
  br label %15

66:                                               ; preds = %23
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @CC_OR_FOUND, align 4
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @CC_OR_NOT_FOUND, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %69, %59, %53
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
