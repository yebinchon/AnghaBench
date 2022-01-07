; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_svm_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_svm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"\0A  SVM: \00", align 1
@MSR_VM_CR = common dso_local global i32 0, align 4
@VM_CR_SVMDIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"(disabled in BIOS) \00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%sNP\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%sNRIP\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%sVClean\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%sAFlush\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%sDAssist\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%sNAsids=%d\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Features=0x%b\00", align 1
@.str.11 = private unnamed_addr constant [254 x i8] c"\10\01NP\02LbrVirt\03SVML\04NRIPS\05TscRateMsr\06VmcbClean\07FlushByAsid\08DecodeAssist\09<b8>\0A<b9>\0BPauseFilter\0CEncryptedMcodePatch\0DPauseFilterThreshold\0EAVIC\0F<b14>\10V_VMSAVE_VMLOAD\11vGIF\12GMET\13<b18>\14<b19>\15<b20>\16<b21>\17<b22>\18<b23>\19<b24>\1A<b25>\1B<b26>\1C<b27>\1D<b28>\1E<b29>\1F<b30> <b31>\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"\0ARevision=%d, ASIDs=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_svm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_svm_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %7 = call i32 @do_cpuid(i32 -2147483638, i32* %6)
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @MSR_VM_CR, align 4
  %11 = call i32 @rdmsr(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @VM_CR_SVMDIS, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @VM_CR_SVMDIS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %0
  %20 = load i32, i32* @bootverbose, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %80, label %22

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = load i32, i32* %1, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %1, align 4
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i32, i32* %1, align 4
  %54 = and i32 %53, 64
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %60)
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %1, align 4
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %76, i32 %78)
  br label %89

80:                                               ; preds = %19
  %81 = load i32, i32* %1, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %81, i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.11, i64 0, i64 0))
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %80, %72
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @rdmsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
