; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_client_dumpqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_client_dumpqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i64, i64, i64, i64, %struct.input_event* }
%struct.input_event = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"evdev client: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"event queue: head=%zu ready=%zu tail=%zu size=%zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"queue contents:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%zu: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unused\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"type=%d code=%d value=%d \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"<- head\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"<- tail\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"<- ready\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_client_dumpqueue(%struct.evdev_client* %0) #0 {
  %2 = alloca %struct.evdev_client*, align 8
  %3 = alloca %struct.input_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.evdev_client* %0, %struct.evdev_client** %2, align 8
  %9 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %10 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %13 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %16 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %19 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.evdev_client* %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24, i64 %25, i64 %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %29

29:                                               ; preds = %84, %1
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %29
  %34 = load %struct.evdev_client*, %struct.evdev_client** %2, align 8
  %35 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %34, i32 0, i32 4
  %36 = load %struct.input_event*, %struct.input_event** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.input_event, %struct.input_event* %36, i64 %37
  store %struct.input_event* %38, %struct.input_event** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %33
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %33
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %61

50:                                               ; preds = %44
  %51 = load %struct.input_event*, %struct.input_event** %3, align 8
  %52 = getelementptr inbounds %struct.input_event, %struct.input_event* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.input_event*, %struct.input_event** %3, align 8
  %55 = getelementptr inbounds %struct.input_event, %struct.input_event* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.input_event*, %struct.input_event** %3, align 8
  %58 = getelementptr inbounds %struct.input_event, %struct.input_event* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %50, %48
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %83

67:                                               ; preds = %61
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %82

73:                                               ; preds = %67
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %81

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %71
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %4, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %4, align 8
  br label %29

87:                                               ; preds = %29
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
