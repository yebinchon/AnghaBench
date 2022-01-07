; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_prthumanval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_prthumanval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" %6ju\00", align 1
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@HN_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%7s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @prthumanval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prthumanval(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [7 x i8], align 1
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @hflag, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @dbtokb(i64 %8)
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @HN_NOSPACE, align 4
  %14 = load i32, i32* @HN_DECIMAL, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* %2, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @HN_B, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %24 = load i64, i64* %2, align 8
  %25 = icmp slt i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  %28 = sext i32 %27 to i64
  %29 = sub i64 7, %28
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %2, align 8
  %32 = call i32 @dbtob(i64 %31)
  %33 = load i32, i32* @HN_AUTOSCALE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @humanize_number(i8* %23, i32 %30, i32 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %37 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @dbtokb(i64) #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dbtob(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
