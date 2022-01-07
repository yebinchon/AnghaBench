; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_rewrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hent = type { double, i8*, i32, %struct.hent* }

@sumfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errs = common dso_local global i32 0, align 4
@HSHSIZE = common dso_local global i32 0, align 4
@hashtab = common dso_local global %struct.hent** null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%7.2f\09%s\09%d\0A\00", align 1
@acctfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rewrite() #0 {
  %1 = alloca %struct.hent*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @sumfile, align 4
  %5 = call i32* @fopen(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @sumfile, align 4
  %9 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @errs, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @errs, align 4
  br label %68

12:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %42, %12
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @HSHSIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.hent**, %struct.hent*** @hashtab, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hent*, %struct.hent** %18, i64 %20
  %22 = load %struct.hent*, %struct.hent** %21, align 8
  store %struct.hent* %22, %struct.hent** %1, align 8
  br label %23

23:                                               ; preds = %26, %17
  %24 = load %struct.hent*, %struct.hent** %1, align 8
  %25 = icmp ne %struct.hent* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.hent*, %struct.hent** %1, align 8
  %29 = getelementptr inbounds %struct.hent, %struct.hent* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load %struct.hent*, %struct.hent** %1, align 8
  %32 = getelementptr inbounds %struct.hent, %struct.hent* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.hent*, %struct.hent** %1, align 8
  %35 = getelementptr inbounds %struct.hent, %struct.hent* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), double %30, i8* %33, i32 %36)
  %38 = load %struct.hent*, %struct.hent** %1, align 8
  %39 = getelementptr inbounds %struct.hent, %struct.hent* %38, i32 0, i32 3
  %40 = load %struct.hent*, %struct.hent** %39, align 8
  store %struct.hent* %40, %struct.hent** %1, align 8
  br label %23

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %13

45:                                               ; preds = %13
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @fflush(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @ferror(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @sumfile, align 4
  %53 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @errs, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @errs, align 4
  br label %56

56:                                               ; preds = %51, %45
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @fclose(i32* %57)
  %59 = load i32, i32* @acctfile, align 4
  %60 = call i32* @fopen(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %60, i32** %3, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @acctfile, align 4
  %64 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %68

65:                                               ; preds = %56
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @fclose(i32* %66)
  br label %68

68:                                               ; preds = %7, %65, %62
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, double, i8*, i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
