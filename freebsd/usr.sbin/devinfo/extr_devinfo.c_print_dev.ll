; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_dev = type { i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@vflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c" pnpinfo %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" at %s\00", align 1
@DF_ENABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" (disabled)\00", align 1
@DF_SUSPENDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c" (suspended)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devinfo_dev*)* @print_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dev(%struct.devinfo_dev* %0) #0 {
  %2 = alloca %struct.devinfo_dev*, align 8
  store %struct.devinfo_dev* %0, %struct.devinfo_dev** %2, align 8
  %3 = load %struct.devinfo_dev*, %struct.devinfo_dev** %2, align 8
  %4 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.devinfo_dev*, %struct.devinfo_dev** %2, align 8
  %12 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i8* [ %13, %10 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %14 ]
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i64, i64* @vflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.devinfo_dev*, %struct.devinfo_dev** %2, align 8
  %22 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.devinfo_dev*, %struct.devinfo_dev** %2, align 8
  %29 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %20, %15
  %33 = load i64, i64* @vflag, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.devinfo_dev*, %struct.devinfo_dev** %2, align 8
  %37 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.devinfo_dev*, %struct.devinfo_dev** %2, align 8
  %44 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %42, %35, %32
  %48 = load %struct.devinfo_dev*, %struct.devinfo_dev** %2, align 8
  %49 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DF_ENABLED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %66

56:                                               ; preds = %47
  %57 = load %struct.devinfo_dev*, %struct.devinfo_dev** %2, align 8
  %58 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DF_SUSPENDED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %56
  br label %66

66:                                               ; preds = %65, %54
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
