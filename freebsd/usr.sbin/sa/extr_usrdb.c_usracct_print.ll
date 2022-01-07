; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_usrdb.c_usracct_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_usrdb.c_usracct_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.userinfo = type { i32, i32, i32, i32, double, i32 }

@usracct_db = common dso_local global i32 0, align 4
@R_FIRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"retrieving user accounting stats\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%-*s %9ju \00", align 1
@MAXLOGNAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"%12.2f%s \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@dflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"%12.0f%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"avio\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tio\00", align 1
@kflag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"k*sec\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usracct_print() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca %struct.userinfo, align 8
  %4 = alloca %struct.userinfo*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.userinfo* %3, %struct.userinfo** %4, align 8
  %7 = load i32, i32* @usracct_db, align 4
  %8 = load i32, i32* @R_FIRST, align 4
  %9 = call i32 @DB_SEQ(i32 %7, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  br label %15

15:                                               ; preds = %89, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %90

18:                                               ; preds = %15
  %19 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(%struct.userinfo* %19, i32 %21, i32 32)
  %23 = load i8*, i8** @MAXLOGNAME, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %26 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @user_from_uid(i32 %27, i32 0)
  %29 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %30 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %28, i32 %31)
  %33 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %34 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %37 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = sdiv i32 %39, 1000000
  %41 = sitofp i32 %40 to double
  store double %41, double* %5, align 8
  %42 = load double, double* %5, align 8
  %43 = fcmp olt double %42, 0x3EB0C6F7A0B5ED8D
  br i1 %43, label %44, label %45

44:                                               ; preds = %18
  store double 0x3EB0C6F7A0B5ED8D, double* %5, align 8
  br label %45

45:                                               ; preds = %44, %18
  %46 = load double, double* %5, align 8
  %47 = fdiv double %46, 6.000000e+01
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i64, i64* @dflag, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %53 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %56 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %54, %57
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %65

60:                                               ; preds = %45
  %61 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %62 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %51
  %66 = load i64, i64* @kflag, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %70 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %69, i32 0, i32 4
  %71 = load double, double* %70, align 8
  %72 = load double, double* %5, align 8
  %73 = fdiv double %71, %72
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %80

75:                                               ; preds = %65
  %76 = load %struct.userinfo*, %struct.userinfo** %4, align 8
  %77 = getelementptr inbounds %struct.userinfo, %struct.userinfo* %76, i32 0, i32 4
  %78 = load double, double* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %68
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %82 = load i32, i32* @usracct_db, align 4
  %83 = load i32, i32* @R_NEXT, align 4
  %84 = call i32 @DB_SEQ(i32 %82, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %80
  br label %15

90:                                               ; preds = %15
  ret void
}

declare dso_local i32 @DB_SEQ(i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @memcpy(%struct.userinfo*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @user_from_uid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
