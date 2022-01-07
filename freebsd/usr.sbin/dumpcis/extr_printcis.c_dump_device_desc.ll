; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_device_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_device_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_device_desc.un_name = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"512b\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"2Kb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"8Kb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"32Kb\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"128Kb\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"512Kb\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2Mb\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@dump_device_desc.speed = internal global [7 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"No speed\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"250nS\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"200nS\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"150nS\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"100nS\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@dump_device_desc.dev = internal global [16 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"No device\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Mask ROM\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"OTPROM\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"UV EPROM\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"FLASH EEPROM\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"SRAM\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"DRAM\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Function specific\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Extended\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"\09%s memory device information:\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"\09\09Device number %d, type %s, WPS = %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"\09\09Speed = %s\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c", Memory block size = %s, %d units\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @dump_device_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_device_desc(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %78, %3
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 255
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %92

18:                                               ; preds = %16
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 2
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i8*], [16 x i8*]* @dump_device_desc.dev, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 8
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 %31, i8* %36, i8* %41)
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 7
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %71

46:                                               ; preds = %30
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @print_ext_speed(i32 %55, i32 0)
  br label %57

57:                                               ; preds = %62, %52
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %5, align 4
  br label %57

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %4, align 8
  br label %78

71:                                               ; preds = %30
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 7
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [7 x i8*], [7 x i8*]* @dump_device_desc.speed, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %71, %68
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i8*], [8 x i8*]* @dump_device_desc.un_name, i64 0, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 3
  %88 = add nsw i32 %87, 1
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0), i8* %84, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %4, align 8
  br label %9

92:                                               ; preds = %16
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_ext_speed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
