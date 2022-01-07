; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_mounttab.c_read_mtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_mounttab.c_read_mtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtablist = type { i8*, i8*, %struct.mtablist*, i64 }

@STRSIZ = common dso_local global i32 0, align 4
@PATH_MOUNTTAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@mtabhead = common dso_local global %struct.mtablist* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@MNTNAMLEN = common dso_local global i32 0, align 4
@MNTPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_mtab() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mtablist**, align 8
  %3 = alloca %struct.mtablist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = load i32, i32* @STRSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @PATH_MOUNTTAB, align 4
  %20 = call i32* @fopen(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %13, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %0
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %151

27:                                               ; preds = %22
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i32, i32* @PATH_MOUNTTAB, align 4
  %30 = call i32 (i32, i8*, ...) @syslog(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %151

31:                                               ; preds = %0
  store i64 0, i64* %11, align 8
  store %struct.mtablist** @mtabhead, %struct.mtablist*** %2, align 8
  br label %32

32:                                               ; preds = %112, %100, %86, %74, %62, %52, %31
  %33 = load i32, i32* @STRSIZ, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = call i32* @fgets(i8* %18, i32 %33, i32* %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %148

37:                                               ; preds = %32
  store i8* %18, i8** %6, align 8
  store i64 0, i64* @errno, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42, %37
  br label %32

53:                                               ; preds = %47
  %54 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %53
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @badline(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %32

65:                                               ; preds = %57
  %66 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %66, i8** %4, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %65
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @badline(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  br label %32

77:                                               ; preds = %69
  %78 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %77
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @badline(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  br label %32

89:                                               ; preds = %81
  %90 = load i8*, i8** %9, align 8
  %91 = call i64 @strtoul(i8* %90, i8** %10, i32 10)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* @ULONG_MAX, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95, %89
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @badline(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  br label %32

103:                                              ; preds = %95
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %11, align 8
  %105 = call %struct.mtablist* @malloc(i32 32)
  store %struct.mtablist* %105, %struct.mtablist** %3, align 8
  %106 = icmp eq %struct.mtablist* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* @LOG_ERR, align 4
  %109 = call i32 (i32, i8*, ...) @syslog(i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @fclose(i32* %110)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %151

112:                                              ; preds = %103
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.mtablist*, %struct.mtablist** %3, align 8
  %115 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load %struct.mtablist*, %struct.mtablist** %3, align 8
  %117 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = load i32, i32* @MNTNAMLEN, align 4
  %121 = call i32 @memmove(i8* %118, i8* %119, i32 %120)
  %122 = load %struct.mtablist*, %struct.mtablist** %3, align 8
  %123 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @MNTNAMLEN, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load %struct.mtablist*, %struct.mtablist** %3, align 8
  %130 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* @MNTPATHLEN, align 4
  %134 = call i32 @memmove(i8* %131, i8* %132, i32 %133)
  %135 = load %struct.mtablist*, %struct.mtablist** %3, align 8
  %136 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* @MNTPATHLEN, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8 0, i8* %141, align 1
  %142 = load %struct.mtablist*, %struct.mtablist** %3, align 8
  %143 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %142, i32 0, i32 2
  store %struct.mtablist* null, %struct.mtablist** %143, align 8
  %144 = load %struct.mtablist*, %struct.mtablist** %3, align 8
  %145 = load %struct.mtablist**, %struct.mtablist*** %2, align 8
  store %struct.mtablist* %144, %struct.mtablist** %145, align 8
  %146 = load %struct.mtablist*, %struct.mtablist** %3, align 8
  %147 = getelementptr inbounds %struct.mtablist, %struct.mtablist* %146, i32 0, i32 2
  store %struct.mtablist** %147, %struct.mtablist*** %2, align 8
  br label %32

148:                                              ; preds = %32
  %149 = load i32*, i32** %13, align 8
  %150 = call i32 @fclose(i32* %149)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %151

151:                                              ; preds = %148, %107, %27, %26
  %152 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %1, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @badline(i8*, i8*) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local %struct.mtablist* @malloc(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
