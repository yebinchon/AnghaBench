; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/i2c/extr_i2c.c_i2c_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/i2c/extr_i2c.c_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i32, i32, i32 }
%struct.iiccmd = type { i32, i8*, i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@I2CSTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ioctl: error sending start condition\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"error: offset malloc\00", align 1
@I2CWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"ioctl: error writing offset\00", align 1
@I2CSTOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"ioctl: error sending stop condition\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ioctl: error writing\00", align 1
@I2CRPTSTART = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"ioctl: error sending repeated start condition\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"error: data malloc\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"error sending stop condition\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.options*, i8*)* @i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_write(i8* %0, %struct.options* byval(%struct.options) align 8 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iiccmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @free(i8* %19)
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %3
  %23 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @I2CSTART, align 4
  %28 = call i32 (i32, i32, ...) @ioctl(i32 %26, i32 %27, %struct.iiccmd* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %190

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 8
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @prepare_buf(i32 %40, i32 %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %190

47:                                               ; preds = %36
  br label %49

48:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  br label %49

49:                                               ; preds = %48, %47
  %50 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %144 [
    i32 128, label %52
    i32 129, label %101
    i32 130, label %143
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @I2CWRITE, align 4
  %63 = call i32 (i32, i32, ...) @ioctl(i32 %61, i32 %62, %struct.iiccmd* %7)
  store i32 %63, i32* %8, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %190

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @I2CSTOP, align 4
  %73 = call i32 (i32, i32, ...) @ioctl(i32 %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %200

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @I2CSTART, align 4
  %83 = call i32 (i32, i32, ...) @ioctl(i32 %81, i32 %82, %struct.iiccmd* %7)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %190

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @I2CWRITE, align 4
  %96 = call i32 (i32, i32, ...) @ioctl(i32 %94, i32 %95, %struct.iiccmd* %7)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %190

100:                                              ; preds = %87
  br label %180

101:                                              ; preds = %49
  %102 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @I2CWRITE, align 4
  %112 = call i32 (i32, i32, ...) @ioctl(i32 %110, i32 %111, %struct.iiccmd* %7)
  store i32 %112, i32* %8, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %190

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %101
  %120 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 3
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @I2CRPTSTART, align 4
  %125 = call i32 (i32, i32, ...) @ioctl(i32 %123, i32 %124, %struct.iiccmd* %7)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %190

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 0
  store i32 %131, i32* %132, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i8* %133, i8** %134, align 8
  %135 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 2
  store i32 0, i32* %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @I2CWRITE, align 4
  %138 = call i32 (i32, i32, ...) @ioctl(i32 %136, i32 %137, %struct.iiccmd* %7)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %190

142:                                              ; preds = %129
  br label %180

143:                                              ; preds = %49
  br label %144

144:                                              ; preds = %49, %143
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* %10, align 4
  %147 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %146, %148
  %150 = call i8* @realloc(i8* %145, i32 %149)
  store i8* %150, i8** %12, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %190

154:                                              ; preds = %144
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8*, i8** %6, align 8
  %160 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @memcpy(i8* %158, i8* %159, i32 %161)
  %163 = load i32, i32* %10, align 4
  %164 = getelementptr inbounds %struct.options, %struct.options* %1, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %163, %165
  %167 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 0
  store i32 %166, i32* %167, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 1
  store i8* %168, i8** %169, align 8
  %170 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %7, i32 0, i32 2
  store i32 0, i32* %170, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @I2CWRITE, align 4
  %173 = call i32 (i32, i32, ...) @ioctl(i32 %171, i32 %172, %struct.iiccmd* %7)
  store i32 %173, i32* %8, align 4
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %179

178:                                              ; preds = %154
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %190

179:                                              ; preds = %154
  br label %180

180:                                              ; preds = %179, %142, %100
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @I2CSTOP, align 4
  %183 = call i32 (i32, i32, ...) @ioctl(i32 %181, i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %200

187:                                              ; preds = %180
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @close(i32 %188)
  store i32 0, i32* %4, align 4
  br label %210

190:                                              ; preds = %178, %153, %141, %128, %117, %99, %86, %68, %46, %31
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @I2CSTOP, align 4
  %193 = call i32 (i32, i32, ...) @ioctl(i32 %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i32, i32* @stderr, align 4
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %190
  br label %200

200:                                              ; preds = %199, %186, %76
  %201 = load i8*, i8** %11, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32, i32* @stderr, align 4
  %205 = load i8*, i8** %11, align 8
  %206 = call i32 (i32, i8*, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %205)
  br label %207

207:                                              ; preds = %203, %200
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @close(i32 %208)
  store i32 1, i32* %4, align 4
  br label %210

210:                                              ; preds = %207, %187
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, ...) #1

declare dso_local i8* @prepare_buf(i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
