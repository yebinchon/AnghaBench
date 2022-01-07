; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_user_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_user_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@UID_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"C:qn:u:FPa7\00", align 1
@optarg = common dso_local global i8* null, align 8
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"username or id required\00", align 1
@fakeuser = common dso_local global %struct.passwd zeroinitializer, align 4
@EX_NOUSER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"no such uid `%ju'\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no such user `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_user_show(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.passwd* null, %struct.passwd** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 -1, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strspn(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @UID_MAX, align 4
  %30 = call i64 @pw_checkid(i8* %28, i32 %29)
  store i64 %30, i64* %10, align 8
  br label %33

31:                                               ; preds = %19
  %32 = load i8*, i8** %7, align 8
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %3
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i8**, i8*** %6, align 8
  %38 = call i32 @getopt(i32 %36, i8** %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %11, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %54 [
    i32 67, label %42
    i32 113, label %43
    i32 110, label %44
    i32 117, label %46
    i32 70, label %50
    i32 80, label %51
    i32 97, label %52
    i32 55, label %53
  ]

42:                                               ; preds = %40
  br label %54

43:                                               ; preds = %40
  store i32 1, i32* %16, align 4
  br label %54

44:                                               ; preds = %40
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** %9, align 8
  br label %54

46:                                               ; preds = %40
  %47 = load i8*, i8** @optarg, align 8
  %48 = load i32, i32* @UID_MAX, align 4
  %49 = call i64 @pw_checkid(i8* %47, i32 %48)
  store i64 %49, i64* %10, align 8
  br label %54

50:                                               ; preds = %40
  store i32 1, i32* %14, align 4
  br label %54

51:                                               ; preds = %40
  store i32 1, i32* %13, align 4
  br label %54

52:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %54

53:                                               ; preds = %40
  store i32 1, i32* %15, align 4
  br label %54

54:                                               ; preds = %40, %53, %52, %51, %50, %46, %44, %43, %42
  br label %35

55:                                               ; preds = %35
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @_PATH_DEVNULL, align 4
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @freopen(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = call i32 (...) @SETPWENT()
  br label %67

67:                                               ; preds = %70, %65
  %68 = call %struct.passwd* (...) @GETPWENT()
  store %struct.passwd* %68, %struct.passwd** %8, align 8
  %69 = icmp ne %struct.passwd* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.passwd*, %struct.passwd** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @print_user(%struct.passwd* %71, i32 %72, i32 %73)
  br label %67

75:                                               ; preds = %67
  %76 = call i32 (...) @ENDPWENT()
  %77 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %77, i32* %4, align 4
  br label %123

78:                                               ; preds = %62
  %79 = load i64, i64* %10, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @EX_DATAERR, align 4
  %86 = call i32 (i32, i8*, ...) @errx(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81, %78
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @pw_checkname(i8* %91, i32 0)
  %93 = call %struct.passwd* @GETPWNAM(i32 %92)
  br label %97

94:                                               ; preds = %87
  %95 = load i64, i64* %10, align 8
  %96 = call %struct.passwd* @GETPWUID(i64 %95)
  br label %97

97:                                               ; preds = %94, %90
  %98 = phi %struct.passwd* [ %93, %90 ], [ %96, %94 ]
  store %struct.passwd* %98, %struct.passwd** %8, align 8
  %99 = load %struct.passwd*, %struct.passwd** %8, align 8
  %100 = icmp eq %struct.passwd* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store %struct.passwd* @fakeuser, %struct.passwd** %8, align 8
  br label %117

105:                                              ; preds = %101
  %106 = load i8*, i8** %9, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* @EX_NOUSER, align 4
  %110 = load i64, i64* %10, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 (i32, i8*, ...) @errx(i32 %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* @EX_NOUSER, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 (i32, i8*, ...) @errx(i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %104
  br label %118

118:                                              ; preds = %117, %97
  %119 = load %struct.passwd*, %struct.passwd** %8, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @print_user(%struct.passwd* %119, i32 %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %118, %75
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @pw_checkid(i8*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @freopen(i32, i8*, i32) #1

declare dso_local i32 @SETPWENT(...) #1

declare dso_local %struct.passwd* @GETPWENT(...) #1

declare dso_local i32 @print_user(%struct.passwd*, i32, i32) #1

declare dso_local i32 @ENDPWENT(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.passwd* @GETPWNAM(i32) #1

declare dso_local i32 @pw_checkname(i8*, i32) #1

declare dso_local %struct.passwd* @GETPWUID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
