; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_lookup_localecat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_lookup_localecat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@NLCINFO = common dso_local global i64 0, align 8
@lcinfo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lookup_localecat(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @NLCINFO, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcinfo, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcinfo, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %28

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %5

27:                                               ; preds = %5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
