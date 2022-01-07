; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/du/extr_du.c_prthumanval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/du/extr_du.c_prthumanval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cblocksize = common dso_local global i32 0, align 4
@HN_B = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@Aflag = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@hflag = common dso_local global i64 0, align 8
@UNITS_SI = common dso_local global i64 0, align 8
@HN_DIVISOR_1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%4s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @prthumanval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prthumanval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [5 x i8], align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @cblocksize, align 4
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 %6, %5
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @HN_B, align 4
  %9 = load i32, i32* @HN_NOSPACE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @HN_DECIMAL, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @Aflag, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @DEV_BSIZE, align 4
  %17 = load i32, i32* %2, align 4
  %18 = mul nsw i32 %17, %16
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i64, i64* @hflag, align 8
  %21 = load i64, i64* @UNITS_SI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @HN_DIVISOR_1000, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @HN_AUTOSCALE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @humanize_number(i8* %28, i32 5, i32 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %34 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  ret void
}

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
