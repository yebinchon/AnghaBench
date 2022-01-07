; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_intr_machdep.c_cpu_init_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_intr_machdep.c_cpu_init_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCOMLEN = common dso_local global i32 0, align 4
@NSOFT_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sint%d:\00", align 1
@mips_intr_counters = common dso_local global i32* null, align 8
@NHARD_IRQS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"int%d:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_init_interrupts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAXCOMLEN, align 4
  %5 = add nsw i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %23, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @NSOFT_IRQS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, i32* @MAXCOMLEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @snprintf(i8* %8, i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @mips_intrcnt_create(i8* %8)
  %19 = load i32*, i32** @mips_intr_counters, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %9

26:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @NHARD_IRQS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32, i32* @MAXCOMLEN, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @snprintf(i8* %8, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 @mips_intrcnt_create(i8* %8)
  %37 = load i32*, i32** @mips_intr_counters, align 8
  %38 = load i32, i32* @NSOFT_IRQS, align 4
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %27

46:                                               ; preds = %27
  %47 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @mips_intrcnt_create(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
