; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_moveifchanged.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_moveifchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"moveifchanged open(%s)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"moveifchanged fstat(%s)\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"mmap %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"rename(%s, %s)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"unlink(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moveifchanged(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @EX_OSERR, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (i32, i8*, i8*, ...) @err(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @fstat(i32 %33, %struct.stat* %9)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @EX_OSERR, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @err(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %32, %29
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @fstat(i32 %44, %struct.stat* %10)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @EX_OSERR, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @err(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %43, %40
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %54, %51
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %105, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* @PROT_READ, align 4
  %71 = load i32, i32* @MAP_SHARED, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i8* @mmap(i32* null, i64 %69, i32 %70, i32 %71, i32 %72, i32 0)
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** @MAP_FAILED, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @EX_OSERR, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 (i32, i8*, i8*, ...) @err(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %77, %68
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @PROT_READ, align 4
  %84 = load i32, i32* @MAP_SHARED, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i8* @mmap(i32* null, i64 %82, i32 %83, i32 %84, i32 %85, i32 0)
  store i8* %86, i8** %6, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** @MAP_FAILED, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @EX_OSERR, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 (i32, i8*, i8*, ...) @err(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %81
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @memcmp(i8* %95, i8* %96, i64 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @munmap(i8* %99, i64 %100)
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @munmap(i8* %102, i64 %103)
  br label %105

105:                                              ; preds = %94, %63
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i8*, i8** %3, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = call i64 @rename(i8* %109, i8* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32, i32* @EX_OSERR, align 4
  %115 = load i8*, i8** %3, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 (i32, i8*, i8*, ...) @err(i32 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %113, %108
  br label %128

119:                                              ; preds = %105
  %120 = load i8*, i8** %3, align 8
  %121 = call i64 @unlink(i8* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* @EX_OSERR, align 4
  %125 = load i8*, i8** %3, align 8
  %126 = call i32 (i32, i8*, i8*, ...) @err(i32 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %127, %118
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i64 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
