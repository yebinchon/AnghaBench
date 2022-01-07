; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_network_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_dump_network_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_network_ext.tech = internal global [8 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ARCnet\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Ethernet\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Token ring\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Localtalk\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"FDDI/CDDI\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ATM\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Wireless\00", align 1
@dump_network_ext.media = internal global [11 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"UTP\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"STP\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Thin coax\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"THICK coax\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Fiber\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"900 MHz\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"2.4 GHz\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"5.4 GHz\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Diffuse Infrared\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Point to point Infrared\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"\09Network technology: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"\09Network speed: \00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\09Network media: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\09Network node ID:\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"\09Network connector: %s connector standard\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"\09Wrong length for network extension tuple\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @dump_network_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_network_ext(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %102

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %102 [
    i32 1, label %13
    i32 2, label %26
    i32 3, label %37
    i32 4, label %56
    i32 5, label %88
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %100

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8*], [8 x i8*]* @dump_network_ext.tech, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %24)
  br label %102

26:                                               ; preds = %9
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %100

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = call i32 @tpl32(i32* %33)
  %35 = call i32 @print_speed(i32 %34)
  %36 = call i32 @putchar(i8 signext 10)
  br label %102

37:                                               ; preds = %9
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %100

41:                                               ; preds = %37
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 10
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds [11 x i8*], [11 x i8*]* @dump_network_ext.media, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* %54)
  br label %102

56:                                               ; preds = %9
  %57 = load i32, i32* %4, align 4
  %58 = icmp sle i32 %57, 2
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 2
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59, %56
  br label %100

67:                                               ; preds = %59
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %69

69:                                               ; preds = %83, %67
  %70 = load i64, i64* %5, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load i32*, i32** %3, align 8
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 2
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %76
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %5, align 8
  br label %69

86:                                               ; preds = %69
  %87 = call i32 @putchar(i8 signext 10)
  br label %102

88:                                               ; preds = %9
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %100

92:                                               ; preds = %88
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i8* %98)
  br label %102

100:                                              ; preds = %91, %66, %40, %29, %16
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0))
  br label %102

102:                                              ; preds = %8, %100, %9, %92, %86, %51, %30, %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_speed(i32) #1

declare dso_local i32 @tpl32(i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
