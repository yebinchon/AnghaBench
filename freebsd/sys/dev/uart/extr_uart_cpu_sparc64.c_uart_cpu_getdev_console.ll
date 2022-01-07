; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_sparc64.c_uart_cpu_getdev_console.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_sparc64.c_uart_cpu_getdev_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"input-device\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"output-device\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ttya\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"sgcn\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"iosram\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @uart_cpu_getdev_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_cpu_getdev_console(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [7 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i32, i8*, ...) @OF_getprop(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %105

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @OF_finddevice(i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 (i32, i8*, ...) @OF_getprop(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %23, i64 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %105

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @OF_finddevice(i8* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @OF_getproplen(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %36, %33, %28
  %41 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %41, i32* %10, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %105

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i8*, ...) @OF_getprop(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %9, i64 4)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %105

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @OF_instance_to_package(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %105

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i32, i8*, ...) @OF_getprop(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %9, i64 4)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %105

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @OF_instance_to_package(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %105

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @snprintf(i8* %65, i64 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %36
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %105

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %76 = call i32 (i32, i8*, ...) @OF_getprop(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %75, i64 7)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 -1, i32* %4, align 4
  br label %105

79:                                               ; preds = %73
  %80 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %105

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  %86 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %87 = call i32 (i32, i8*, ...) @OF_getprop(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %86, i64 7)
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %94, i32* %10, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 -1, i32* %4, align 4
  br label %105

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i32, i8*, ...) @OF_getprop(i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32* %11, i64 4)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -1, i32* %4, align 4
  br label %105

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %89, %84
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %101, %96, %83, %78, %72, %63, %58, %53, %48, %43, %27, %18
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @OF_getprop(i32, i8*, ...) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_instance_to_package(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
