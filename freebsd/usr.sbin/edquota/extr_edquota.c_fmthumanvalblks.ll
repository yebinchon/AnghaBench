; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_fmthumanvalblks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_fmthumanvalblks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmthumanvalblks.numbuf = internal global [20 x i8] zeroinitializer, align 16
@hflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%juk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fmthumanvalblks(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* @hflag, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp slt i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 7, i32 6
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @dbtob(i64 %11)
  %13 = load i32, i32* @HN_AUTOSCALE, align 4
  %14 = load i32, i32* @HN_NOSPACE, align 4
  %15 = call i32 @humanize_number(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @fmthumanvalblks.numbuf, i64 0, i64 0), i32 %10, i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @fmthumanvalblks.numbuf, i64 0, i64 0), i8** %2, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @dbtokb(i64 %17)
  %19 = trunc i64 %18 to i32
  %20 = call i32 @snprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @fmthumanvalblks.numbuf, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @fmthumanvalblks.numbuf, i64 0, i64 0), i8** %2, align 8
  br label %21

21:                                               ; preds = %16, %6
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dbtob(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @dbtokb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
