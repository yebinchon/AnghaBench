; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_finger.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_finger.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64 }

@main.myname = internal global [7 x i8] c"finger\00", align 1
@invoker_root = common dso_local global i32 0, align 4
@UNPRIV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setgid()\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"setuid()\00", align 1
@UNPRIV_UGID = common dso_local global i64 0, align 8
@LC_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@oflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"FINGER\00", align 1
@now = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@entries = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"No one logged on.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8*], align 16
  %9 = alloca %struct.passwd*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i64 (...) @getuid()
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i64 (...) @geteuid()
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %12, %2
  store i32 1, i32* @invoker_root, align 4
  %16 = load i32, i32* @UNPRIV_NAME, align 4
  %17 = call %struct.passwd* @getpwnam(i32 %16)
  store %struct.passwd* %17, %struct.passwd** %9, align 8
  %18 = icmp ne %struct.passwd* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.passwd*, %struct.passwd** %9, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.passwd*, %struct.passwd** %9, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @setgid(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.passwd*, %struct.passwd** %9, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @setuid(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %32
  br label %54

41:                                               ; preds = %19, %15
  %42 = load i64, i64* @UNPRIV_UGID, align 8
  %43 = call i64 @setgid(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i64, i64* @UNPRIV_UGID, align 8
  %49 = call i64 @setuid(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %12
  %56 = load i32, i32* @LC_ALL, align 4
  %57 = call i32 @setlocale(i32 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @oflag, align 4
  %58 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  store i8* %58, i8** %59, align 8
  %60 = icmp ne i8* %58, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  store i32 2, i32* %6, align 4
  %62 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @main.myname, i64 0, i64 0), i8** %62, align 16
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  store i8* null, i8** %63, align 16
  %64 = load i32, i32* %6, align 4
  %65 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %66 = call i32 @option(i32 %64, i8** %65)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32, i32* %4, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = call i32 @option(i32 %68, i8** %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  store i8** %77, i8*** %5, align 8
  %78 = call i32 @time(i32* @now)
  %79 = call i32 @setpassent(i32 1)
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %67
  %84 = load i32, i32* @lflag, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 1, i32* @sflag, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = call i32 (...) @loginlist()
  %89 = load i64, i64* @entries, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87
  br label %102

94:                                               ; preds = %67
  %95 = load i32, i32* %4, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = call i32 @userlist(i32 %95, i8** %96)
  %98 = load i32, i32* @sflag, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  store i32 1, i32* @lflag, align 4
  br label %101

101:                                              ; preds = %100, %94
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i64, i64* @entries, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* @lflag, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (...) @lflag_print()
  br label %112

110:                                              ; preds = %105
  %111 = call i32 (...) @sflag_print()
  br label %112

112:                                              ; preds = %110, %108
  br label %113

113:                                              ; preds = %112, %102
  ret i32 0
}

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @setuid(i64) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @option(i32, i8**) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @setpassent(i32) #1

declare dso_local i32 @loginlist(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @userlist(i32, i8**) #1

declare dso_local i32 @lflag_print(...) #1

declare dso_local i32 @sflag_print(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
