; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrgenio.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_ktrgenio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktr_genio = type { i32, i64 }
%struct.winsize = type { i32 }

@ktrgenio.screenwidth = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fd %d %s %d byte%s\0A\00", align 1
@UIO_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"wrote\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@suppressdata = common dso_local global i64 0, align 8
@fancy = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@maxdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktrgenio(%struct.ktr_genio* %0, i32 %1) #0 {
  %3 = alloca %struct.ktr_genio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.winsize, align 4
  store %struct.ktr_genio* %0, %struct.ktr_genio** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, 16
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ktr_genio*, %struct.ktr_genio** %3, align 8
  %15 = bitcast %struct.ktr_genio* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 16
  store i8* %16, i8** %6, align 8
  %17 = load %struct.ktr_genio*, %struct.ktr_genio** %3, align 8
  %18 = getelementptr inbounds %struct.ktr_genio, %struct.ktr_genio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ktr_genio*, %struct.ktr_genio** %3, align 8
  %21 = getelementptr inbounds %struct.ktr_genio, %struct.ktr_genio* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UIO_READ, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %32 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %26, i32 %27, i8* %31)
  %33 = load i64, i64* @suppressdata, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %143

36:                                               ; preds = %2
  %37 = load i32, i32* @ktrgenio.screenwidth, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load i64, i64* @fancy, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fileno(i32 %43)
  %45 = load i32, i32* @TIOCGWINSZ, align 4
  %46 = call i32 @ioctl(i32 %44, i32 %45, %struct.winsize* %9)
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 8
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* @ktrgenio.screenwidth, align 4
  br label %56

55:                                               ; preds = %48, %42, %39
  store i32 80, i32* @ktrgenio.screenwidth, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i32, i32* @maxdata, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @maxdata, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @maxdata, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %60, %57
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %127, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i1 [ false, %67 ], [ %73, %71 ]
  br i1 %75, label %76, label %130

76:                                               ; preds = %74
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sge i32 %82, 32
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp slt i32 %90, 127
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %127

93:                                               ; preds = %84, %76
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %125, label %101

101:                                              ; preds = %93
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 13
  br i1 %108, label %125, label %109

109:                                              ; preds = %101
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 9
  br i1 %124, label %125, label %126

125:                                              ; preds = %117, %109, %101, %93
  br label %127

126:                                              ; preds = %117
  store i32 1, i32* %8, align 4
  br label %127

127:                                              ; preds = %126, %125, %92
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %67

130:                                              ; preds = %74
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @ktrgenio.screenwidth, align 4
  %137 = call i32 @hexdump(i8* %134, i32 %135, i32 %136)
  br label %143

138:                                              ; preds = %130
  %139 = load i8*, i8** %6, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @ktrgenio.screenwidth, align 4
  %142 = call i32 @visdump(i8* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %35, %138, %133
  ret void
}

declare dso_local i32 @printf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @hexdump(i8*, i32, i32) #1

declare dso_local i32 @visdump(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
