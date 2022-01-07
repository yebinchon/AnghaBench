; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_kern___sysctlbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_kern___sysctlbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@CTL_MAXNAME = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_SYSCTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_SYSCTL = common dso_local global i32 0, align 4
@CTL_SYSCTL_NAME2OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern___sysctlbyname(%struct.thread* %0, i8* %1, i64 %2, i8* %3, i64* %4, i8* %5, i64 %6, i64* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [16 x i8], align 16
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i8* %3, i8** %15, align 8
  store i64* %4, i64** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i64* %7, i64** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %29 = load i32, i32* @CTL_MAXNAME, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %22, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %23, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @MAXPATHLEN, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %10
  %37 = load i64, i64* %14, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %10
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %95

41:                                               ; preds = %36
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  store i8* %42, i8** %25, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ugt i64 %43, 16
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* @M_SYSCTL, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = call i8* @malloc(i64 %46, i32 %47, i32 %48)
  store i8* %49, i8** %25, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %25, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @copyin(i8* %51, i8* %52, i64 %53)
  store i32 %54, i32* %27, align 4
  %55 = load i32, i32* %27, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %86

58:                                               ; preds = %50
  %59 = load i32, i32* @CTL_SYSCTL, align 4
  %60 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %59, i32* %60, align 16
  %61 = load i32, i32* @CTL_SYSCTL_NAME2OID, align 4
  %62 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %61, i32* %62, align 4
  %63 = mul nuw i64 4, %30
  store i64 %63, i64* %26, align 8
  %64 = load %struct.thread*, %struct.thread** %12, align 8
  %65 = load i8*, i8** %25, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64*, i64** %19, align 8
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @kernel_sysctl(%struct.thread* %64, i32* %32, i32 2, i32* %32, i64* %26, i8* %65, i64 %66, i64* %67, i32 %68)
  store i32 %69, i32* %27, align 4
  %70 = load i32, i32* %27, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %86

73:                                               ; preds = %58
  %74 = load %struct.thread*, %struct.thread** %12, align 8
  %75 = load i64*, i64** %19, align 8
  %76 = load i64, i64* %75, align 8
  %77 = udiv i64 %76, 4
  %78 = load i8*, i8** %15, align 8
  %79 = load i64*, i64** %16, align 8
  %80 = load i32, i32* %21, align 4
  %81 = load i8*, i8** %17, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i64*, i64** %19, align 8
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @userland_sysctl(%struct.thread* %74, i32* %32, i64 %77, i8* %78, i64* %79, i32 %80, i8* %81, i64 %82, i64* %83, i32 %84)
  store i32 %85, i32* %27, align 4
  br label %86

86:                                               ; preds = %73, %72, %57
  %87 = load i64, i64* %14, align 8
  %88 = icmp ugt i64 %87, 16
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %25, align 8
  %91 = load i32, i32* @M_SYSCTL, align 4
  %92 = call i32 @free(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %27, align 4
  store i32 %94, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %95

95:                                               ; preds = %93, %39
  %96 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i64, i32, i32) #2

declare dso_local i32 @copyin(i8*, i8*, i64) #2

declare dso_local i32 @kernel_sysctl(%struct.thread*, i32*, i32, i32*, i64*, i8*, i64, i64*, i32) #2

declare dso_local i32 @userland_sysctl(%struct.thread*, i32*, i64, i8*, i64*, i32, i8*, i64, i64*, i32) #2

declare dso_local i32 @free(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
