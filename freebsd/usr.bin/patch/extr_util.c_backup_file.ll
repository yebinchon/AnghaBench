; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_util.c_backup_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_util.c_backup_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@backup_type = common dso_local global i64 0, align 8
@none = common dso_local global i64 0, align 8
@origprae = common dso_local global i64* null, align 8
@simple_backup_suffix = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"filename %s too long for buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @backup_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i64, i64* @backup_type, align 8
  %17 = load i64, i64* @none, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @stat(i8* %20, %struct.stat* %4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %153

24:                                               ; preds = %19
  %25 = load i64*, i64** @origprae, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64*, i64** @origprae, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %24
  %32 = load i64*, i64** @simple_backup_suffix, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @unlink(i8* %36)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %153

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i64*, i64** @origprae, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load i64*, i64** @origprae, align 8
  %47 = call i32 (i8*, ...) @strlcpy(i8* %15, i64* %46, i64 %13)
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %48, %13
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  %52 = trunc i64 %13 to i32
  %53 = call i32 @strlcat(i8* %15, i8* %51, i32 %52)
  %54 = sext i32 %53 to i64
  %55 = icmp uge i64 %54, %13
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %45
  %57 = load i64*, i64** @origprae, align 8
  %58 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64* %57)
  br label %59

59:                                               ; preds = %56, %50
  br label %77

60:                                               ; preds = %38
  %61 = load i8*, i8** %3, align 8
  %62 = call i8* @find_backup_file_name(i8* %61)
  store i8* %62, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i8*, ...) @strlcpy(i8* %15, i8* %67, i64 %13)
  %69 = sext i32 %68 to i64
  %70 = icmp uge i64 %69, %13
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @free(i8* %75)
  br label %77

77:                                               ; preds = %74, %59
  %78 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %78, i8** %8, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %8, align 8
  br label %84

83:                                               ; preds = %77
  store i8* %15, i8** %8, align 8
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %137, %84
  %86 = call i64 @stat(i8* %15, %struct.stat* %4)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %94, %96
  br label %98

98:                                               ; preds = %93, %88, %85
  %99 = phi i1 [ false, %88 ], [ false, %85 ], [ %97, %93 ]
  br i1 %99, label %100, label %138

100:                                              ; preds = %98
  %101 = load i8*, i8** %8, align 8
  store i8* %101, i8** %7, align 8
  br label %102

102:                                              ; preds = %116, %100
  %103 = load i8*, i8** %7, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @islower(i8 zeroext %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %107, %102
  %114 = phi i1 [ false, %102 ], [ %112, %107 ]
  br i1 %114, label %115, label %119

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %7, align 8
  br label %102

119:                                              ; preds = %113
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %124, align 1
  %126 = call signext i8 @toupper(i8 zeroext %125)
  %127 = load i8*, i8** %7, align 8
  store i8 %126, i8* %127, align 1
  br label %137

128:                                              ; preds = %119
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = call i64 @strlen(i8* %133)
  %135 = add nsw i64 %134, 1
  %136 = call i32 @memmove(i8* %129, i8* %131, i64 %135)
  br label %137

137:                                              ; preds = %128, %123
  br label %85

138:                                              ; preds = %98
  %139 = load i8*, i8** %3, align 8
  %140 = call i64 @rename(i8* %139, i8* %15)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i64, i64* @errno, align 8
  %144 = load i64, i64* @EXDEV, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i8*, i8** %3, align 8
  %148 = call i64 @copy_file(i8* %147, i8* %15)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146, %142
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %153

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151, %138
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %153

153:                                              ; preds = %152, %150, %35, %23
  %154 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @strlcpy(i8*, ...) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @fatal(i8*, ...) #2

declare dso_local i8* @find_backup_file_name(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @islower(i8 zeroext) #2

declare dso_local signext i8 @toupper(i8 zeroext) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i64 @copy_file(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
