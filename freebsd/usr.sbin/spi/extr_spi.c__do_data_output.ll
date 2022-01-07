; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c__do_data_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c__do_data_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_options = type { i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Binary output of %d %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ASCII output of %d %s\0A\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%02hhx\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Error writing to stdout, errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"%d command %s and %d data %s read from SPI device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.spi_options*)* @_do_data_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_do_data_output(i8* %0, %struct.spi_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.spi_options* %1, %struct.spi_options** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %15 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32* %18, i32** %11, align 8
  %19 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %20 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %163

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %32 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %37

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %39 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %44 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %49 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 (i32, i8*, i32, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @stdout, align 4
  %61 = call i64 @fwrite(i32* %58, i32 1, i32 %59, i32 %60)
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %126

66:                                               ; preds = %42
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %66
  %70 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %71 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = call i64 (i32, i8*, i32, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %76, i8* %77)
  br label %79

79:                                               ; preds = %74, %69
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %112, %79
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i1 [ false, %80 ], [ %86, %83 ]
  br i1 %88, label %89, label %115

89:                                               ; preds = %87
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* @stdout, align 4
  %94 = call i64 @fputc(i8 signext 32, i32 %93)
  %95 = load i64, i64* @EOF, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @stdout, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 (i32, i8*, i32, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = icmp slt i64 %108, 0
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %101, %98
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %80

115:                                              ; preds = %87
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @stdout, align 4
  %120 = call i64 @fputc(i8 signext 10, i32 %119)
  %121 = load i64, i64* @EOF, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %118, %115
  br label %125

125:                                              ; preds = %124, %66
  br label %126

126:                                              ; preds = %125, %57
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* @stderr, align 4
  %131 = load i32, i32* @errno, align 4
  %132 = call i64 (i32, i8*, i32, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %161

133:                                              ; preds = %126
  %134 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %135 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load i32, i32* @stderr, align 4
  %143 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %144 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i8*, i8** %9, align 8
  %149 = call i64 (i32, i8*, i32, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %145, i8* %146, i32 %147, i8* %148)
  %150 = load i8*, i8** %4, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %153 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %151, %154
  %156 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %157 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @verbose_dump_buffer(i8* %150, i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %141, %138, %133
  br label %161

161:                                              ; preds = %160, %129
  %162 = load i32, i32* %6, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %24
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @fwrite(i32*, i32, i32, i32) #1

declare dso_local i64 @fputc(i8 signext, i32) #1

declare dso_local i32 @verbose_dump_buffer(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
