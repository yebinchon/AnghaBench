; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_getfreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_getfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nc_sien = common dso_local global i32 0, align 4
@nc_sist = common dso_local global i32 0, align 4
@nc_dien = common dso_local global i32 0, align 4
@nc_scntl3 = common dso_local global i32 0, align 4
@nc_stime1 = common dso_local global i32 0, align 4
@GEN = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Delay (GEN=%d): %u msec, %u KHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @getfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfreq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @nc_sien, align 4
  %8 = call i32 @OUTW(i32 %7, i32 0)
  %9 = load i32, i32* @nc_sist, align 4
  %10 = call i32 @INW(i32 %9)
  %11 = load i32, i32* @nc_dien, align 4
  %12 = call i32 @OUTB(i32 %11, i32 0)
  %13 = load i32, i32* @nc_sist, align 4
  %14 = call i32 @INW(i32 %13)
  %15 = load i32, i32* @nc_scntl3, align 4
  %16 = call i32 @OUTB(i32 %15, i32 4)
  %17 = load i32, i32* @nc_stime1, align 4
  %18 = call i32 @OUTB(i32 %17, i32 0)
  %19 = load i32, i32* @nc_stime1, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @OUTB(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %34, %2
  %23 = load i32, i32* @nc_sist, align 4
  %24 = call i32 @INW(i32 %23)
  %25 = load i32, i32* @GEN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = icmp ult i32 %29, 100000
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i1 [ false, %22 ], [ %31, %28 ]
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = call i32 @UDELAY(i32 1000)
  br label %22

36:                                               ; preds = %32
  %37 = load i32, i32* @nc_stime1, align 4
  %38 = call i32 @OUTB(i32 %37, i32 0)
  %39 = load i32, i32* @nc_scntl3, align 4
  %40 = call i32 @OUTB(i32 %39, i32 0)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 1, %44
  %46 = mul nsw i32 %45, 4340
  %47 = load i32, i32* %5, align 4
  %48 = udiv i32 %46, %47
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %48, %43 ], [ 0, %49 ]
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @sym_verbose, align 4
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = call i8* @sym_name(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %50
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @OUTW(i32, i32) #1

declare dso_local i32 @INW(i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @UDELAY(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @sym_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
