; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32* }

@FILENAME_MAX = common dso_local global i32 0, align 4
@vtable = common dso_local global %struct.TYPE_3__* null, align 8
@ENVIRON = common dso_local global i32 0, align 4
@IREMOTE = common dso_local global i32 0, align 4
@HOME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"$HOME not set. Skipping check for ~/.tiprc\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Home directory path too long: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s/.tiprc\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@vflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"set %s\00", align 1
@WRITE = common dso_local global i32 0, align 4
@PUBLIC = common dso_local global i32 0, align 4
@EXCEPTIONS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vinit() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @FILENAME_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vtable, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %4, align 8
  br label %12

12:                                               ; preds = %53, %0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ENVIRON, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i8* @getenv(i32* %27)
  store i8* %28, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IREMOTE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32* @address(i8* %48)
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @setnumber(i8* %45, i32 %50)
  br label %52

52:                                               ; preds = %42, %35
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 1
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %4, align 8
  br label %12

56:                                               ; preds = %12
  %57 = load i32, i32* @HOME, align 4
  %58 = call i8* @value(i32 %57)
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %106

64:                                               ; preds = %56
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 8
  %69 = icmp ugt i64 %68, %8
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* @HOME, align 4
  %73 = call i8* @value(i32 %72)
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %105

75:                                               ; preds = %64
  %76 = trunc i64 %8 to i32
  %77 = load i32, i32* @HOME, align 4
  %78 = call i8* @value(i32 %77)
  %79 = call i32 @snprintf(i8* %10, i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %80, i32** %5, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %104

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %99, %82
  %84 = sub i64 %8, 1
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %5, align 8
  %87 = call i32* @fgets(i8* %10, i32 %85, i32* %86)
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load i64, i64* @vflag, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %10)
  br label %94

94:                                               ; preds = %92, %89
  %95 = call i8* @strrchr(i8* %10, i8 signext 10)
  store i8* %95, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i8*, i8** %6, align 8
  store i8 0, i8* %98, align 1
  br label %99

99:                                               ; preds = %97, %94
  %100 = call i32 @vlex(i8* %10)
  br label %83

101:                                              ; preds = %83
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @fclose(i32* %102)
  br label %104

104:                                              ; preds = %101, %75
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %61
  %107 = load i32, i32* @WRITE, align 4
  %108 = load i32, i32* @PUBLIC, align 4
  %109 = shl i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vtable, align 8
  %112 = load i64, i64* @EXCEPTIONS, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %110
  store i32 %116, i32* %114, align 8
  %117 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i32*) #2

declare dso_local i32 @setnumber(i8*, i32) #2

declare dso_local i32* @address(i8*) #2

declare dso_local i8* @value(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @vlex(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
