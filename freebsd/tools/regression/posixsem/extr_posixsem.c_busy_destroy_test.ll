; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_busy_destroy_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_busy_destroy_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64, i32 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"kvm_openfiles: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ksem_init\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"kvm_getprocs: %s\00", align 1
@SSLEEP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"sem\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ksem\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @busy_destroy_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @busy_destroy_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32* @kvm_openfiles(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13, i8* %12)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @fail_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  store i32 1, i32* %8, align 4
  br label %88

19:                                               ; preds = %0
  %20 = call i64 @ksem_init(i32* %4, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @kvm_close(i32* %24)
  store i32 1, i32* %8, align 4
  br label %88

26:                                               ; preds = %19
  %27 = call i32 (...) @fork()
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %39 [
    i32 -1, label %29
    i32 0, label %35
  ]

29:                                               ; preds = %26
  %30 = call i32 @fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ksem_destroy(i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @kvm_close(i32* %33)
  store i32 1, i32* %8, align 4
  br label %88

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ksem_wait(i32 %36)
  %38 = call i32 @exit(i32 0) #4
  unreachable

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @KERN_PROC_PID, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.kinfo_proc* @kvm_getprocs(i32* %41, i32 %42, i32 %43, i32* %7)
  store %struct.kinfo_proc* %44, %struct.kinfo_proc** %3, align 8
  %45 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %46 = icmp eq %struct.kinfo_proc* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @kvm_geterr(i32* %48)
  %50 = call i32 @fail_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @kvm_close(i32* %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ksem_destroy(i32 %53)
  store i32 1, i32* %8, align 4
  br label %88

55:                                               ; preds = %40
  %56 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %57 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SSLEEP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %63 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @strcmp(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %69 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @strcmp(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %61
  br label %76

74:                                               ; preds = %67, %55
  %75 = call i32 @usleep(i32 1000)
  br label %40

76:                                               ; preds = %73
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @kvm_close(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @EBUSY, align 4
  %81 = call i32 @ksem_destroy_should_fail(i32 %79, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @ksem_post(i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @waitpid(i32 %84, i32* null, i32 0)
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @ksem_destroy(i32 %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %76, %47, %29, %22, %17
  %89 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %92 [
    i32 0, label %91
    i32 1, label %91
  ]

91:                                               ; preds = %88, %88
  ret void

92:                                               ; preds = %88
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kvm_openfiles(i32*, i8*, i32*, i32, i8*) #2

declare dso_local i32 @fail_err(i8*, i8*) #2

declare dso_local i64 @ksem_init(i32*, i32) #2

declare dso_local i32 @fail_errno(i8*) #2

declare dso_local i32 @kvm_close(i32*) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @ksem_destroy(i32) #2

declare dso_local i32 @ksem_wait(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32*, i32, i32, i32*) #2

declare dso_local i8* @kvm_geterr(i32*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @ksem_destroy_should_fail(i32, i32) #2

declare dso_local i32 @ksem_post(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
