; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_int.c_fifolog_int_open_i.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_int.c_fifolog_int_open_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_file = type { i64, i32, i32, i32*, i32* }
%struct.stat = type { i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Cannot open\00", align 1
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"ioctl(DIOCGSECTORSIZE) failed\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Neither disk nor regular file\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Disk device sectorsize smaller than 64\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"ioctl(DIOCGMEDIASIZE) failed\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cannot malloc\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Read error, first sector\00", align 1
@FIFOLOG_FMT_MAGIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Wrong or missing magic string\00", align 1
@FIFOLOG_OFF_BS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Wrong record size in header (<64)\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Record size in header bigger than fifolog\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"less than 10 records in fifolog\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"cannot malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fifolog_file*, i8*, i32)* @fifolog_int_open_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fifolog_int_open_i(%struct.fifolog_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fifolog_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fifolog_file* %0, %struct.fifolog_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @O_RDWR, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @O_RDONLY, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i64 @open(i8* %11, i32 %19)
  %21 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %22 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %24 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %209

28:                                               ; preds = %18
  %29 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %30 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %33 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %34 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %33, i32 0, i32 1
  %35 = call i32 @ioctl(i64 %31, i32 %32, i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOTTY, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %209

43:                                               ; preds = %38, %28
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %48 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @fstat(i64 %49, %struct.stat* %8)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @S_ISREG(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %209

60:                                               ; preds = %46
  %61 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %62 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %61, i32 0, i32 1
  store i32 512, i32* %62, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %66 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %90

67:                                               ; preds = %43
  %68 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %69 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 64
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %209

73:                                               ; preds = %67
  %74 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %75 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %78 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %79 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %78, i32 0, i32 2
  %80 = call i32 @ioctl(i64 %76, i32 %77, i32* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load i64, i64* @errno, align 8
  %85 = load i64, i64* @ENOTTY, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %209

88:                                               ; preds = %83, %73
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %60
  %91 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %92 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @malloc(i32 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %97 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %96, i32 0, i32 4
  store i32* %95, i32** %97, align 8
  %98 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %99 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %209

103:                                              ; preds = %90
  %104 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %105 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %108 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %111 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pread(i64 %106, i32* %109, i32 %112, i32 0)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %119 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %103
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %209

123:                                              ; preds = %116
  store i64 0, i64* @errno, align 8
  %124 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %125 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @FIFOLOG_FMT_MAGIC, align 4
  %128 = load i32, i32* @FIFOLOG_FMT_MAGIC, align 4
  %129 = call i64 @strlen(i32 %128)
  %130 = add nsw i64 %129, 1
  %131 = call i64 @memcmp(i32* %126, i32 %127, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %209

134:                                              ; preds = %123
  %135 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %136 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @FIFOLOG_OFF_BS, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @be32dec(i32* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 64
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %209

145:                                              ; preds = %134
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %148 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp sge i32 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %209

152:                                              ; preds = %145
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %155 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %158 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %161, label %184

161:                                              ; preds = %152
  %162 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %163 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @free(i32* %164)
  %166 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %167 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %166, i32 0, i32 4
  store i32* null, i32** %167, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %170 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  %171 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %172 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @malloc(i32 %173)
  %175 = bitcast i8* %174 to i32*
  %176 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %177 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %176, i32 0, i32 4
  store i32* %175, i32** %177, align 8
  %178 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %179 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %161
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %209

183:                                              ; preds = %161
  br label %184

184:                                              ; preds = %183, %152
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %187 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = sdiv i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %191 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %192, 10
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %209

195:                                              ; preds = %184
  %196 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %197 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 4
  %200 = call i32* @calloc(i32 1, i32 4)
  %201 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %202 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %201, i32 0, i32 3
  store i32* %200, i32** %202, align 8
  %203 = load %struct.fifolog_file*, %struct.fifolog_file** %5, align 8
  %204 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %195
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %209

208:                                              ; preds = %195
  store i8* null, i8** %4, align 8
  br label %209

209:                                              ; preds = %208, %207, %194, %182, %151, %144, %133, %122, %102, %87, %72, %59, %42, %27
  %210 = load i8*, i8** %4, align 8
  ret i8* %210
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i64, i32, i32*) #1

declare dso_local i32 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @pread(i64, i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @be32dec(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
