; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_soft_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nc_istat = common dso_local global i32 0, align 4
@CABRT = common dso_local global i32 0, align 4
@SIP = common dso_local global i32 0, align 4
@nc_sist = common dso_local global i32 0, align 4
@DIP = common dso_local global i32 0, align 4
@nc_dstat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: unable to abort current chip operation.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sym_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_soft_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @nc_istat, align 4
  %6 = load i32, i32* @CABRT, align 4
  %7 = call i32 @OUTB(i32 %5, i32 %6)
  store i32 1000000, i32* %4, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load i32, i32* @nc_istat, align 4
  %13 = call i32 @INB(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SIP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @nc_sist, align 4
  %20 = call i32 @INW(i32 %19)
  br label %32

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @DIP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @nc_istat, align 4
  %28 = call i32 @OUTB(i32 %27, i32 0)
  %29 = load i32, i32* @nc_dstat, align 4
  %30 = call i32 @INB(i32 %29)
  br label %35

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %8

35:                                               ; preds = %26, %8
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = call i8* @sym_name(i32 %39)
  %41 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @sym_chip_reset(i32 %43)
  ret void
}

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @INW(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @sym_name(i32) #1

declare dso_local i32 @sym_chip_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
