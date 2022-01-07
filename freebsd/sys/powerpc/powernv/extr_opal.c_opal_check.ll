; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal.c_opal_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal.c_opal_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opal_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/ibm,opal\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"opal-base-address\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"opal-entry-address\00", align 1
@opal_data = common dso_local global i32 0, align 4
@opal_entrypoint = common dso_local global i32 0, align 4
@PSL_EE = common dso_local global i32 0, align 4
@PSL_IR = common dso_local global i32 0, align 4
@PSL_DR = common dso_local global i32 0, align 4
@PSL_SE = common dso_local global i32 0, align 4
@opal_msr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opal_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = load i32, i32* @opal_initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %52

7:                                                ; preds = %0
  %8 = call i32 @OF_finddevice(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @ENOENT, align 4
  store i32 %12, i32* %1, align 4
  br label %52

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @OF_hasprop(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @OF_hasprop(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %1, align 4
  br label %52

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %26 = call i32 @OF_getencprop(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %25, i32 8)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 32
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %29, %31
  store i32 %32, i32* @opal_data, align 4
  %33 = load i32, i32* %2, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %35 = call i32 @OF_getencprop(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %34, i32 8)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 32
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %38, %40
  store i32 %41, i32* @opal_entrypoint, align 4
  %42 = call i32 (...) @mfmsr()
  %43 = load i32, i32* @PSL_EE, align 4
  %44 = load i32, i32* @PSL_IR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PSL_DR, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PSL_SE, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %42, %50
  store i32 %51, i32* @opal_msr, align 4
  store i32 1, i32* @opal_initialized, align 4
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %23, %21, %11, %6
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @mfmsr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
