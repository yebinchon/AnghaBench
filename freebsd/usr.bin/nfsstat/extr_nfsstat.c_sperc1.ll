; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/nfsstat/extr_nfsstat.c_sperc1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/nfsstat/extr_nfsstat.c_sperc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPBuf = common dso_local global i8** null, align 8
@SPIndex = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%3d%%\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"   -\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @sperc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sperc1(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i8**, i8*** @SPBuf, align 8
  %7 = load i64, i64* @SPIndex, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %16, 100
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  %21 = sdiv i32 %17, %20
  %22 = trunc i32 %21 to i8
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %28

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %14
  %29 = load i64, i64* @SPIndex, align 8
  %30 = add i64 %29, 1
  %31 = and i64 %30, 63
  store i64 %31, i64* @SPIndex, align 8
  %32 = load i8*, i8** %5, align 8
  ret i8* %32
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
