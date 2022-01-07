; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_kernel_sysctlbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_kernel_sysctlbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@CTL_MAXNAME = common dso_local global i32 0, align 4
@CTL_SYSCTL = common dso_local global i32 0, align 4
@CTL_SYSCTL_NAME2OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_sysctlbyname(%struct.thread* %0, i8* %1, i8* %2, i64* %3, i8* %4, i64 %5, i64* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64* %3, i64** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = load i32, i32* @CTL_MAXNAME, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32, i32* @CTL_SYSCTL, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* @CTL_SYSCTL_NAME2OID, align 4
  %31 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %30, i32* %31, align 4
  %32 = mul nuw i64 4, %25
  store i64 %32, i64* %20, align 8
  %33 = load %struct.thread*, %struct.thread** %10, align 8
  %34 = bitcast i32* %27 to i8*
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @kernel_sysctl(%struct.thread* %33, i32* %27, i64 2, i8* %34, i64* %20, i8* %35, i64 %38, i64* %21, i32 %39)
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %22, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %8
  %44 = load i32, i32* %22, align 4
  store i32 %44, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %57

45:                                               ; preds = %8
  %46 = load %struct.thread*, %struct.thread** %10, align 8
  %47 = load i64, i64* %21, align 8
  %48 = udiv i64 %47, 4
  %49 = load i8*, i8** %12, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i64*, i64** %16, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @kernel_sysctl(%struct.thread* %46, i32* %27, i64 %48, i8* %49, i64* %50, i8* %51, i64 %52, i64* %53, i32 %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  store i32 %56, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %57

57:                                               ; preds = %45, %43
  %58 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kernel_sysctl(%struct.thread*, i32*, i64, i8*, i64*, i8*, i64, i64*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
