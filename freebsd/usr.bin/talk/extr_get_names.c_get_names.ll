; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_get_names.c_get_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_get_names.c_get_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.passwd = type { i8* }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"standard input must be a tty, not a pipe or a file\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"you don't exist. Go away\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"@:!\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TALK_VERSION = common dso_local global i32 0, align 4
@msg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AF_INET = common dso_local global i32 0, align 4
@NAME_SIZE = common dso_local global i32 0, align 4
@TTY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_names(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.passwd*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %14 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @usage()
  br label %22

22:                                               ; preds = %20, %2
  %23 = call i32 @isatty(i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = call i8* (...) @getlogin()
  store i8* %28, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = call i32 (...) @getuid()
  %32 = call %struct.passwd* @getpwuid(i32 %31)
  store %struct.passwd* %32, %struct.passwd** %13, align 8
  %33 = icmp eq %struct.passwd* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.passwd*, %struct.passwd** %13, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %36, %27
  %41 = trunc i64 %15 to i32
  %42 = call i32 @gethostname(i8* %17, i32 %41)
  store i8* %17, i8** %9, align 8
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcspn(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %45, i64 %50
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %40
  %57 = load i8**, i8*** %4, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %7, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %79

60:                                               ; preds = %40
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i8**, i8*** %4, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %12, align 8
  store i8* %70, i8** %10, align 8
  br label %76

71:                                               ; preds = %60
  %72 = load i8*, i8** %12, align 8
  store i8* %72, i8** %7, align 8
  %73 = load i8**, i8*** %4, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** %12, align 8
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %76, %56
  %80 = load i32, i32* %3, align 4
  %81 = icmp sgt i32 %80, 2
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 2
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %11, align 8
  br label %87

86:                                               ; preds = %79
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @get_addrs(i8* %88, i8* %89)
  %91 = load i32, i32* @TALK_VERSION, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msg, i32 0, i32 6), align 8
  %92 = load i32, i32* @AF_INET, align 4
  %93 = call i8* @htons(i32 %92)
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msg, i32 0, i32 5, i32 0), align 8
  %94 = load i32, i32* @AF_INET, align 4
  %95 = call i8* @htons(i32 %94)
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msg, i32 0, i32 4, i32 0), align 8
  %96 = call i32 @htonl(i32 0)
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msg, i32 0, i32 3), align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msg, i32 0, i32 2), align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* @NAME_SIZE, align 4
  %100 = call i32 @strlcpy(i32 %97, i8* %98, i32 %99)
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msg, i32 0, i32 1), align 4
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* @NAME_SIZE, align 4
  %104 = call i32 @strlcpy(i32 %101, i8* %102, i32 %103)
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @msg, i32 0, i32 0), align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* @TTY_SIZE, align 4
  %108 = call i32 @strlcpy(i32 %105, i8* %106, i32 %107)
  %109 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %109)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @isatty(i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i8* @getlogin(...) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i32 @get_addrs(i8*, i8*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
