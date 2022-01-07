; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_get_random_seed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_get_random_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i64, i32 }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getentropy\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"random seed isn't a regular file or /dev/random\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"random seed is too large (%jd > %zu)!\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"random seed is too small (0 bytes)\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"reading random seed file %s\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"short read from %s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"random seed is a character device other than /dev/random\00", align 1
@md5_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_random_seed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_random_seed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %7, align 4
  store i32 32, i32* %6, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %12 = call i64 @getentropy(i8* %11, i32 32)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @EX_SOFTWARE, align 4
  %16 = call i32 (i32, i8*, ...) @err(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %10
  br label %132

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = load i32, i32* @O_CLOEXEC, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @open(i8* %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @EX_NOINPUT, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 (i32, i8*, ...) @err(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @fstat(i32 %31, %struct.stat* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EX_SOFTWARE, align 4
  %36 = call i32 (i32, i8*, ...) @err(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @S_ISREG(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @S_ISCHR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EX_USAGE, align 4
  %49 = call i32 (i32, i8*, ...) @err(i32 %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42, %37
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @S_ISREG(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 32
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @EX_USAGE, align 4
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @errx(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %62, i64 32)
  br label %72

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EX_USAGE, align 4
  %70 = call i32 (i32, i8*, ...) @errx(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71, %59
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %74 = call i32 @memset(i8* %73, i32 0, i32 32)
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @read(i32 %75, i8* %76, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @EX_SOFTWARE, align 4
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 (i32, i8*, ...) @err(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %72
  %87 = load i32, i32* %6, align 4
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @EX_SOFTWARE, align 4
  %93 = load i8*, i8** %2, align 8
  %94 = call i32 (i32, i8*, ...) @errx(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %91, %86
  br label %131

96:                                               ; preds = %50
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @S_ISCHR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = call i64 @stat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %struct.stat* %5)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @EX_SOFTWARE, align 4
  %106 = call i32 (i32, i8*, ...) @err(i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113, %107
  %120 = load i32, i32* @EX_USAGE, align 4
  %121 = call i32 (i32, i8*, ...) @errx(i32 %120, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %113
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %124 = call i64 @getentropy(i8* %123, i32 32)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* @EX_SOFTWARE, align 4
  %128 = call i32 (i32, i8*, ...) @err(i32 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %122
  br label %130

130:                                              ; preds = %129, %96
  br label %131

131:                                              ; preds = %130, %95
  br label %132

132:                                              ; preds = %131, %17
  %133 = load i32, i32* %7, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @close(i32 %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = call i32 @MD5Init(i32* @md5_ctx)
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @MD5Update(i32* @md5_ctx, i8* %140, i32 %141)
  ret void
}

declare dso_local i64 @getentropy(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
