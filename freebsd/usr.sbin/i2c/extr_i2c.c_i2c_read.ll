; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/i2c/extr_i2c.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/i2c/extr_i2c.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i64, i32, i32 }
%struct.iiccmd = type { i32, i32, i32, i8* }

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@I2CSTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ioctl: error sending start condition\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"error: offset malloc\00", align 1
@I2CWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"ioctl: error writing offset\00", align 1
@I2C_MODE_STOP_START = common dso_local global i64 0, align 8
@I2CSTOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"error sending stop condition\00", align 1
@I2C_MODE_REPEATED_START = common dso_local global i64 0, align 8
@I2CRPTSTART = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"ioctl: error sending repeated start condition\00", align 1
@I2CREAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"ioctl: error while reading\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"error sending stop condtion\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"error sending stop condition\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.options*, i8*)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(i8* %0, %struct.options* byval(%struct.options) align 8 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iiccmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8 0, i8* %12, align 1
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @open(i8* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  %22 = call i32 @bzero(%struct.iiccmd* %7, i32 24)
  %23 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 3
  store i8* %12, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @I2CSTART, align 4
  %35 = call i32 (i32, i32, ...) @ioctl(i32 %33, i32 %34, %struct.iiccmd* %7)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %139

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @prepare_buf(i32 %43, i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %139

50:                                               ; preds = %39
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 3
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @I2CWRITE, align 4
  %58 = call i32 (i32, i32, ...) @ioctl(i32 %56, i32 %57, %struct.iiccmd* %7)
  store i32 %58, i32* %9, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %139

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @I2C_MODE_STOP_START, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @I2CSTOP, align 4
  %72 = call i32 (i32, i32, ...) @ioctl(i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %149

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77, %21
  %79 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 1
  %82 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 3
  store i8* %12, i8** %85, align 8
  %86 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @I2C_MODE_STOP_START, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90, %78
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @I2CSTART, align 4
  %97 = call i32 (i32, i32, ...) @ioctl(i32 %95, i32 %96, %struct.iiccmd* %7)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %149

101:                                              ; preds = %94
  br label %116

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @I2C_MODE_REPEATED_START, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @I2CRPTSTART, align 4
  %110 = call i32 (i32, i32, ...) @ioctl(i32 %108, i32 %109, %struct.iiccmd* %7)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %139

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %102
  br label %116

116:                                              ; preds = %115, %101
  %117 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 3
  store i8* %120, i8** %121, align 8
  %122 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 2
  store i32 1, i32* %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @I2CREAD, align 4
  %125 = call i32 (i32, i32, ...) @ioctl(i32 %123, i32 %124, %struct.iiccmd* %7)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %139

129:                                              ; preds = %116
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @I2CSTOP, align 4
  %132 = call i32 (i32, i32, ...) @ioctl(i32 %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %149

136:                                              ; preds = %129
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @close(i32 %137)
  store i32 0, i32* %4, align 4
  br label %159

139:                                              ; preds = %128, %113, %63, %49, %38
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @I2CSTOP, align 4
  %142 = call i32 (i32, i32, ...) @ioctl(i32 %140, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %139
  br label %149

149:                                              ; preds = %148, %135, %100, %75
  %150 = load i8*, i8** %11, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* @stderr, align 4
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %152, %149
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @close(i32 %157)
  store i32 1, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %136
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bzero(%struct.iiccmd*, i32) #1

declare dso_local i32 @ioctl(i32, i32, ...) #1

declare dso_local i8* @prepare_buf(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
