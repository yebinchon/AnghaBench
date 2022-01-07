; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_addsubunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_addsubunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULLUNIT = common dso_local global i8* null, align 8
@MAXSUBUNITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"memory overflow in unit reduction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @addsubunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addsubunit(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  store i8** %7, i8*** %6, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** @NULLUNIT, align 8
  %16 = icmp ne i8* %14, %15
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i1 [ false, %8 ], [ %16, %12 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %6, align 8
  br label %8

23:                                               ; preds = %17
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* @MAXSUBUNITS, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = icmp uge i8** %24, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %43

32:                                               ; preds = %23
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i8**, i8*** %6, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* null, i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @dupstr(i8* %40)
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @dupstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
