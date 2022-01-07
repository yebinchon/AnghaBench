; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBSIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"lseek: %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"short write to %s: %jd bytes written, %jd bytes asked to write\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@safecopy = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"fsync failed for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i8*, i64)* @copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @copy(i32 %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i32, i32* @MAXBSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i64 @lseek(i32 %23, i64 0, i32 %24)
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* @EX_OSERR, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @err(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %5
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i64 @lseek(i32 %32, i64 0, i32 %33)
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @EX_OSERR, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @err(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = call i32 @digest_init(i32* %18)
  store i32 0, i32* %17, align 4
  %42 = load i64, i64* %10, align 8
  %43 = icmp sle i64 %42, 8388608
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @trymmap(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @PROT_READ, align 4
  %51 = load i32, i32* @MAP_SHARED, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i8* @mmap(i32* null, i64 %49, i32 %50, i32 %51, i32 %52, i64 0)
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** @MAP_FAILED, align 8
  %55 = icmp ne i8* %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = load i64, i64* %10, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @write(i32 %57, i8* %58, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %56
  %67 = load i32, i32* @errno, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @unlink(i8* %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @EX_OSERR, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @errx(i32 %73, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %75, i32 %77)
  br label %84

79:                                               ; preds = %66
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* @errno, align 4
  %81 = load i32, i32* @EX_OSERR, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @err(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i8*, i8** %14, align 8
  %87 = load i64, i64* %10, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @digest_update(i32* %18, i8* %86, i32 %88)
  %90 = load i8*, i8** %14, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @munmap(i8* %90, i64 %91)
  store i32 1, i32* %17, align 4
  br label %93

93:                                               ; preds = %85, %48, %44, %40
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %142, label %96

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %127, %96
  %98 = load i32, i32* %6, align 4
  %99 = trunc i64 %20 to i32
  %100 = call i32 @read(i32 %98, i8* %22, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @write(i32 %103, i8* %22, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  %109 = load i32, i32* @errno, align 4
  store i32 %109, i32* %13, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @unlink(i8* %110)
  %112 = load i32, i32* %12, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load i32, i32* @EX_OSERR, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i64, i64* %10, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @errx(i32 %115, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %117, i32 %119)
  br label %126

121:                                              ; preds = %108
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* @errno, align 4
  %123 = load i32, i32* @EX_OSERR, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @err(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %121, %114
  br label %127

127:                                              ; preds = %126, %102
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @digest_update(i32* %18, i8* %22, i32 %128)
  br label %97

130:                                              ; preds = %97
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i32, i32* @errno, align 4
  store i32 %134, i32* %13, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @unlink(i8* %135)
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* @errno, align 4
  %138 = load i32, i32* @EX_OSERR, align 4
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @err(i32 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %133, %130
  br label %142

142:                                              ; preds = %141, %93
  %143 = load i64, i64* @safecopy, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @fsync(i32 %146)
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load i32, i32* @errno, align 4
  store i32 %150, i32* %13, align 4
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 @unlink(i8* %151)
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* @errno, align 4
  %154 = load i32, i32* @EX_OSERR, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = call i32 @err(i32 %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %149, %145, %142
  %158 = call i8* @digest_end(i32* %18, i32* null)
  %159 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %159)
  ret i8* %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @digest_init(i32*) #2

declare dso_local i64 @trymmap(i32) #2

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i64) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @digest_update(i32*, i8*, i32) #2

declare dso_local i32 @munmap(i8*, i64) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @fsync(i32) #2

declare dso_local i8* @digest_end(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
