; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_mp_machdep.c_riscv64_cpu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_mp_machdep.c_riscv64_cpu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCPU = common dso_local global i64 0, align 8
@mp_maxid = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@cpu_list = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Already have cpu %u\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"register <\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%x\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @riscv64_cpu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riscv64_cpu_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @device_get_unit(i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @MAXCPU, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @mp_maxid, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %13
  %20 = load i32**, i32*** @cpu_list, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32* @cpu_get_cpuid(i32* %29, i64* %5)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %67

35:                                               ; preds = %19
  %36 = load i64, i64* @bootverbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @device_printf(i32* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %57, %38
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %5, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %41

60:                                               ; preds = %41
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %35
  %63 = load i32*, i32** %3, align 8
  %64 = load i32**, i32*** @cpu_list, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  store i32* %63, i32** %66, align 8
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %33, %17
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @device_get_unit(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @cpu_get_cpuid(i32*, i64*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
