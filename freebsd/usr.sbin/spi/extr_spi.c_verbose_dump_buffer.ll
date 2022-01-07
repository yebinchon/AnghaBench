; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_verbose_dump_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_verbose_dump_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [80 x i8] c"        |  0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F |                  |\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" %6x | \00", align 1
@reversebits = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%02hhx \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" |\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @verbose_dump_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verbose_dump_buffer(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %115, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %118

17:                                               ; preds = %13
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 16777200
  %21 = sext i32 %20 to i64
  %22 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %55, %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to i64*
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i64*, i64** @reversebits, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* @stderr, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  br label %54

51:                                               ; preds = %26
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %23

58:                                               ; preds = %23
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %109, %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %112

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %64
  %72 = load i8*, i8** %4, align 8
  %73 = bitcast i8* %72 to i64*
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i64*, i64** @reversebits, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %80, %71
  %86 = load i64, i64* %7, align 8
  %87 = icmp ult i64 %86, 32
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %7, align 8
  %90 = icmp ugt i64 %89, 127
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %85
  br label %101

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %94)
  br label %108

96:                                               ; preds = %64
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100, %91
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 @fputc(i8 signext 46, i32 %102)
  br label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @fputc(i8 signext 32, i32 %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %92
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %61

112:                                              ; preds = %61
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 16
  store i32 %117, i32* %8, align 4
  br label %13

118:                                              ; preds = %13
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 @fflush(i32 %119)
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
