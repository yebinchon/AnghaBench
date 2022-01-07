; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_print_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%d,%d,%#x,%#x,%d,%d,%d,%#x,%d,%d\00", align 1
@FL_MFM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c",+mfm\00", align 1
@FL_2STEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c",+2step\00", align 1
@FL_PERPND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c",+perpnd\00", align 1
@FL_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c",+auto\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_fmt(%struct.fd_type* byval(%struct.fd_type) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = shl i32 128, %5
  store i32 %6, i32* %2, align 4
  %7 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %13 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %11
    i32 131, label %12
  ]

9:                                                ; preds = %1
  store i32 250, i32* %3, align 4
  br label %14

10:                                               ; preds = %1
  store i32 300, i32* %3, align 4
  br label %14

11:                                               ; preds = %1
  store i32 500, i32* %3, align 4
  br label %14

12:                                               ; preds = %1
  store i32 1000, i32* %3, align 4
  br label %14

13:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9
  %15 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %19, i32 %21, i32 %23, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FL_MFM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %14
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %14
  %42 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FL_2STEP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  %50 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FL_PERPND, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  %58 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %0, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FL_AUTO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @putc(i8 signext 10, i32 %66)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
