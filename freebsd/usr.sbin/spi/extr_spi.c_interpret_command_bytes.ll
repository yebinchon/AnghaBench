; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_interpret_command_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_interpret_command_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_options = type { i32, i64, i64* }

@DEFAULT_BUFFER_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Not enough memory to interpret command bytes, errno=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@reversebits = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.spi_options*)* @interpret_command_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_command_bytes(i8* %0, %struct.spi_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.spi_options* %1, %struct.spi_options** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @DEFAULT_BUFFER_SIZE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @malloc(i32 %15)
  %17 = inttoptr i64 %16 to i64*
  %18 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %19 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %18, i32 0, i32 2
  store i64* %17, i64** %19, align 8
  %20 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %21 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %138

25:                                               ; preds = %2
  %26 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %27 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %13, align 8
  store i32 0, i32* %8, align 4
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %127, %25
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %132

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 32
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  br label %35

50:                                               ; preds = %45
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %132

55:                                               ; preds = %50
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = call i32 @hexval(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %55
  store i32 1, i32* %10, align 4
  br label %136

68:                                               ; preds = %63
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %11, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 @hexval(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 1, i32* %10, align 4
  br label %136

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %78, 16
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = and i32 %81, 255
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 8192
  store i32 %88, i32* %9, align 4
  %89 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %90 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i8* @realloc(i64* %91, i32 %92)
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %86
  store i32 1, i32* %10, align 4
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32, i32* @errno, align 4
  %99 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %136

100:                                              ; preds = %86
  %101 = load i8*, i8** %12, align 8
  %102 = bitcast i8* %101 to i64*
  %103 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %104 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %103, i32 0, i32 2
  store i64* %102, i64** %104, align 8
  %105 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %106 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  store i64* %110, i64** %13, align 8
  br label %111

111:                                              ; preds = %100, %77
  %112 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %113 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i64*, i64** @reversebits, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %13, align 8
  store i64 %121, i64* %122, align 8
  br label %127

123:                                              ; preds = %111
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64*, i64** %13, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %116
  %128 = load i64*, i64** %13, align 8
  %129 = getelementptr inbounds i64, i64* %128, i32 1
  store i64* %129, i64** %13, align 8
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %30

132:                                              ; preds = %54, %30
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.spi_options*, %struct.spi_options** %5, align 8
  %135 = getelementptr inbounds %struct.spi_options, %struct.spi_options* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %132, %96, %76, %67
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %24
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @hexval(i32) #1

declare dso_local i8* @realloc(i64*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
