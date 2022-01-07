; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_install_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_install_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"stat %s\00", align 1
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"mkdir %s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"install: mkdir %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s exists but is not a directory\00", align 1
@dounpriv = common dso_local global i32 0, align 4
@gid = common dso_local global i64 0, align 8
@uid = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"chown %u:%u %s\00", align 1
@mode = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"chmod %o %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @install_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_dir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %79, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %16, label %78

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %78

21:                                               ; preds = %16, %8
  store i32 0, i32* %6, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i8*, i8** %3, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %49, %21
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @stat(i8* %27, %struct.stat* %4)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOENT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @EX_OSERR, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @err(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i8*, i8** %2, align 8
  %43 = call i64 @mkdir(i8* %42, i32 493)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EEXIST, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %26

50:                                               ; preds = %45
  %51 = load i32, i32* @EX_OSERR, align 4
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @err(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i64, i64* @verbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %71

61:                                               ; preds = %26
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @S_ISDIR(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EX_OSERR, align 4
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 @errx(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %60
  %72 = load i32, i32* %5, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %3, align 8
  store i8 %73, i8* %74, align 1
  %75 = icmp ne i8 %73, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %82

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %16, %12
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %3, align 8
  br label %8

82:                                               ; preds = %76
  %83 = load i32, i32* @dounpriv, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %114, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* @gid, align 8
  %87 = icmp ne i64 %86, -1
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @uid, align 8
  %90 = icmp ne i64 %89, -1
  br i1 %90, label %91, label %103

91:                                               ; preds = %88, %85
  %92 = load i8*, i8** %2, align 8
  %93 = load i64, i64* @uid, align 8
  %94 = load i64, i64* @gid, align 8
  %95 = call i64 @chown(i8* %92, i64 %93, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i64, i64* @uid, align 8
  %99 = load i64, i64* @gid, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load i8*, i8** %2, align 8
  %102 = call i32 (i8*, i64, i8*, ...) @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %98, i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %97, %91, %88
  %104 = load i8*, i8** %2, align 8
  %105 = load i32, i32* @mode, align 4
  %106 = call i64 @chmod(i8* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @mode, align 4
  %110 = sext i32 %109 to i64
  %111 = load i8*, i8** %2, align 8
  %112 = call i32 (i8*, i64, i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %110, i8* %111)
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %82
  %115 = load i8*, i8** %2, align 8
  %116 = call i32 @metadata_log(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0)
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @chown(i8*, i64, i64) #1

declare dso_local i32 @warn(i8*, i64, i8*, ...) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @metadata_log(i8*, i8*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
