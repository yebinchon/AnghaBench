; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_create.c_fifolog_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_create.c_fifolog_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Wrong file type\00", align 1
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Could not ftrunc\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Could not malloc\00", align 1
@FIFOLOG_FMT_MAGIC = common dso_local global i32 0, align 4
@FIFOLOG_OFF_BS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not write first sector\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Could not write second sector\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fifolog_create(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @O_WRONLY, align 4
  %18 = load i32, i32* @O_TRUNC, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_EXCL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_CREAT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 (i8*, i32, ...) @open(i8* %16, i32 %23, i32 420)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = call i32 (i8*, i32, ...) @open(i8* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %197

34:                                               ; preds = %27
  br label %36

35:                                               ; preds = %3
  store i32 1, i32* %15, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i64 512, i64* %7, align 8
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @fstat(i32 %41, %struct.stat* %13)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @S_ISBLK(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @S_ISCHR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @S_ISREG(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @close(i32 %62)
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %197

68:                                               ; preds = %56, %51, %40
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @S_ISREG(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @close(i32 %77)
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %197

83:                                               ; preds = %71, %68
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %86 = call i32 @ioctl(i32 %84, i32 %85, i64* %11)
  store i32 %86, i32* %8, align 4
  %87 = load i64, i64* %11, align 8
  store i64 %87, i64* %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %10, align 8
  %97 = srem i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94, %90
  %100 = load i64, i64* %10, align 8
  store i64 %100, i64* %7, align 8
  br label %101

101:                                              ; preds = %99, %94, %83
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %104 = call i32 @ioctl(i32 %102, i32 %103, i64* %12)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load i64, i64* %6, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %107
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %6, align 8
  br label %116

116:                                              ; preds = %114, %110, %101
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @S_ISREG(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %124, %119, %116
  %128 = load i64, i64* %6, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i64, i64* %7, align 8
  %132 = mul nsw i64 %131, 86400
  store i64 %132, i64* %6, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @S_ISREG(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  %140 = load i64, i64* %6, align 8
  %141 = call i64 @ftruncate(i32 %139, i64 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %197

144:                                              ; preds = %138, %133
  %145 = load i64, i64* %7, align 8
  %146 = call i8* @calloc(i32 1, i64 %145)
  store i8* %146, i8** %14, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %197

150:                                              ; preds = %144
  %151 = load i8*, i8** %14, align 8
  %152 = load i32, i32* @FIFOLOG_FMT_MAGIC, align 4
  %153 = call i32 @strcpy(i8* %151, i32 %152)
  %154 = load i8*, i8** %14, align 8
  %155 = load i32, i32* @FIFOLOG_OFF_BS, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @be32enc(i8* %157, i64 %158)
  %160 = load i64, i64* %7, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i8*, i8** %14, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @pwrite(i32 %161, i8* %162, i64 %163, i64 0)
  %165 = sext i32 %164 to i64
  %166 = icmp ne i64 %160, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %150
  %168 = load i32, i32* @errno, align 4
  store i32 %168, i32* %8, align 4
  %169 = load i8*, i8** %14, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* @errno, align 4
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %197

172:                                              ; preds = %150
  %173 = load i8*, i8** %14, align 8
  %174 = load i64, i64* %7, align 8
  %175 = call i32 @memset(i8* %173, i32 0, i64 %174)
  %176 = load i64, i64* %7, align 8
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* %9, align 4
  %179 = load i8*, i8** %14, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i32 @pwrite(i32 %178, i8* %179, i64 %180, i64 %181)
  %183 = icmp ne i32 %177, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %172
  %185 = load i32, i32* @errno, align 4
  store i32 %185, i32* %8, align 4
  %186 = load i8*, i8** %14, align 8
  %187 = call i32 @free(i8* %186)
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* @errno, align 4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %197

189:                                              ; preds = %172
  %190 = load i8*, i8** %14, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i32, i32* %9, align 4
  %193 = call i64 @close(i32 %192)
  %194 = icmp eq i64 0, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  store i8* null, i8** %4, align 8
  br label %197

197:                                              ; preds = %189, %184, %167, %149, %143, %76, %61, %33
  %198 = load i8*, i8** %4, align 8
  ret i8* %198
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @ioctl(i32, i32, i64*) #1

declare dso_local i64 @ftruncate(i32, i64) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @be32enc(i8*, i64) #1

declare dso_local i32 @pwrite(i32, i8*, i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
