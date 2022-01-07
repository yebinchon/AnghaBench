; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_recvjob.c_readfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_recvjob.c_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32 }

@SPL_BUFSIZ = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@FILMOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: readfile: error on open(%s): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: lost connection\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: write error on close(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer*, i8*, i64)* @readfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readfile(%struct.printer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.printer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.printer* %0, %struct.printer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @SPL_BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @O_CREAT, align 4
  %23 = load i32, i32* @O_EXCL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @O_WRONLY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FILMOD, align 4
  %28 = call i32 @open(i8* %21, i32 %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.printer*, %struct.printer** %5, align 8
  %33 = getelementptr inbounds %struct.printer, %struct.printer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i8*, i32, ...) @frecverr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35, i32 %37)
  br label %39

39:                                               ; preds = %31, %3
  %40 = call i32 (...) @ack()
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %41

41:                                               ; preds = %104, %39
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %109

45:                                               ; preds = %41
  %46 = load i32, i32* @SPL_BUFSIZ, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %11, align 8
  store i8* %20, i8** %8, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %48, %49
  %51 = load i64, i64* %7, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %53, %45
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* @STDOUT_FILENO, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @read(i32 %59, i8* %60, i64 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.printer*, %struct.printer** %5, align 8
  %67 = getelementptr inbounds %struct.printer, %struct.printer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @frecverr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %11, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %8, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %11, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %58, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @SPL_BUFSIZ, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %85, %86
  %88 = load i64, i64* %7, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %12, align 8
  %93 = sub i64 %91, %92
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i32, i32* %14, align 4
  %96 = load i64, i64* %11, align 8
  %97 = call i64 @write(i32 %95, i8* %20, i64 %96)
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %109

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* @SPL_BUFSIZ, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %12, align 8
  br label %41

109:                                              ; preds = %100, %41
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @close(i32 %110)
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.printer*, %struct.printer** %5, align 8
  %116 = getelementptr inbounds %struct.printer, %struct.printer* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 (i8*, i32, ...) @frecverr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %117, i8* %118)
  br label %120

120:                                              ; preds = %114, %109
  %121 = call i64 (...) @noresponse()
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i8*, i8** %6, align 8
  %125 = call i32* @strchr(i8* %124, i8 signext 47)
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @unlink(i8* %128)
  br label %130

130:                                              ; preds = %127, %123
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %133

131:                                              ; preds = %120
  %132 = call i32 (...) @ack()
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %133

133:                                              ; preds = %131, %130
  %134 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @frecverr(i8*, i32, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @ack(...) #2

declare dso_local i32 @read(i32, i8*, i64) #2

declare dso_local i64 @write(i32, i8*, i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @noresponse(...) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
