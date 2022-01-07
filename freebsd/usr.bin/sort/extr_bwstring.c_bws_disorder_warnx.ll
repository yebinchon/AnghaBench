; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_disorder_warnx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_disorder_warnx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s:%zu: disorder: %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s:%zu: disorder: %ls\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bws_disorder_warnx(%struct.bwstring* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.bwstring* %0, %struct.bwstring** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @MB_CUR_MAX, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, 1
  %13 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %14 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %10, i64 %12, i32 %16)
  br label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 1
  %22 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %23 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %19, i64 %21, i32 %25)
  br label %27

27:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @warnx(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
