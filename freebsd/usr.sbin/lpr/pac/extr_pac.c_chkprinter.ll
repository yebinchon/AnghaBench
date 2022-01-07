; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_chkprinter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_chkprinter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { double, i32* }

@.str = private unnamed_addr constant [22 x i8] c"pac: getprintcap: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@acctfile = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"accounting not enabled for printer %s\00", align 1
@pflag = common dso_local global i32 0, align 4
@price = common dso_local global double 0.000000e+00, align 8
@sumfile = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_sum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @chkprinter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chkprinter(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.printer, align 8
  %6 = alloca %struct.printer*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.printer* %5, %struct.printer** %6, align 8
  %7 = call i32 @init_printer(%struct.printer* %5)
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.printer*, %struct.printer** %6, align 8
  %10 = call i32 @getprintcap(i8* %8, %struct.printer* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %23 [
    i32 129, label %12
    i32 130, label %17
    i32 128, label %18
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @pcaperr(i32 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @exit(i32 3) #3
  unreachable

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.printer*, %struct.printer** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @pcaperr(i32 %20)
  %22 = call i32 @fatal(%struct.printer* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.printer*, %struct.printer** %6, align 8
  %25 = getelementptr inbounds %struct.printer, %struct.printer* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** @acctfile, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 (i32, i8*, ...) @errx(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* @pflag, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load %struct.printer*, %struct.printer** %6, align 8
  %36 = getelementptr inbounds %struct.printer, %struct.printer* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = fcmp une double %37, 0.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.printer*, %struct.printer** %6, align 8
  %41 = getelementptr inbounds %struct.printer, %struct.printer* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fdiv double %42, 1.000000e+04
  store double %43, double* @price, align 8
  br label %44

44:                                               ; preds = %39, %34, %31
  %45 = load i32*, i32** @acctfile, align 8
  %46 = call i64 @strlen(i32* %45)
  %47 = add nsw i64 %46, 5
  %48 = call i64 @calloc(i32 1, i64 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** @sumfile, align 8
  %50 = load i8*, i8** @sumfile, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44
  %55 = load i8*, i8** @sumfile, align 8
  %56 = load i32*, i32** @acctfile, align 8
  %57 = call i32 @strcpy(i8* %55, i32* %56)
  %58 = load i8*, i8** @sumfile, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @init_printer(%struct.printer*) #1

declare dso_local i32 @getprintcap(i8*, %struct.printer*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @pcaperr(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fatal(%struct.printer*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @strcpy(i8*, i32*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
