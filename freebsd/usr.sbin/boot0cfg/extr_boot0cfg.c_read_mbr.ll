; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_read_mbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/boot0cfg/extr_boot0cfg.c_read_mbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBRSIZE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"read %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: short read\00", align 1
@OFF_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%s: bad magic\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: unknown or incompatible boot code\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: unable to allocate read buffer\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%s: unable to allocate MBR buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i32)* @read_mbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mbr(i8* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MBRSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i8* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MBRSIZE, align 4
  %29 = call i32 @read(i32 %27, i32* %18, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @MBRSIZE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* @OFF_MAGIC, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %18, i64 %43
  %45 = call i32 @cv2(i32* %44)
  %46 = icmp ne i32 %45, 43605
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = call i32 @boot0bs(i32* %18)
  store i32 %51, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %98

60:                                               ; preds = %50
  %61 = call i32 @boot0version(i32* %18)
  %62 = icmp eq i32 %61, 257
  br i1 %62, label %63, label %97

63:                                               ; preds = %60
  store i32 1024, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32* @malloc(i32 %64)
  %66 = load i32**, i32*** %6, align 8
  store i32* %65, i32** %66, align 8
  %67 = icmp eq i32* %65, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @SEEK_SET, align 4
  %74 = call i32 @lseek(i32 %72, i32 0, i32 %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = load i32**, i32*** %6, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @read(i32 %77, i32* %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %76, %71
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @close(i32 %94)
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %117

97:                                               ; preds = %60
  br label %98

98:                                               ; preds = %97, %59
  %99 = mul nuw i64 4, %16
  %100 = trunc i64 %99 to i32
  %101 = call i32* @malloc(i32 %100)
  %102 = load i32**, i32*** %6, align 8
  store i32* %101, i32** %102, align 8
  %103 = icmp eq i32* %101, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %104, %98
  %108 = load i32**, i32*** %6, align 8
  %109 = load i32*, i32** %108, align 8
  %110 = mul nuw i64 4, %16
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memcpy(i32* %109, i32* %18, i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @close(i32 %113)
  %115 = mul nuw i64 4, %16
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %117

117:                                              ; preds = %107, %93
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @read(i32, i32*, i32) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @cv2(i32*) #2

declare dso_local i32 @boot0bs(i32*) #2

declare dso_local i32 @boot0version(i32*) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
