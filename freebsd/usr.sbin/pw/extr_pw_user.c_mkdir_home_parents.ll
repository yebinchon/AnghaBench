; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_mkdir_home_parents.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_mkdir_home_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid base directory for home '%s'\00", align 1
@EX_OSFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"root home `/%s' is not a directory\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"usr/%s\00", align 1
@_DEF_DIRMODE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"'%s' (root home parent) is not a directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @mkdir_home_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkdir_home_parents(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 47
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EX_DATAERR, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i32, i8*, ...) @errx(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @fstatat(i32 %19, i8* %20, %struct.stat* %5, i32 0)
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISDIR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %138

29:                                               ; preds = %23
  %30 = load i32, i32* @EX_OSFILE, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i32, i8*, ...) @errx(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %16
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @strdup(i8* %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EX_UNAVAILABLE, align 4
  %40 = call i32 (i32, i8*, ...) @errx(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @strrchr(i8* %42, i8 signext 47)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  br label %138

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 47)
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %84

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EX_UNAVAILABLE, align 4
  %62 = call i32 (i32, i8*, ...) @errx(i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %3, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @_DEF_DIRMODE, align 4
  %67 = call i32 @mkdirat(i32 %64, i8* %65, i32 %66)
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EEXIST, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %3, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @fchownat(i32 %74, i8* %75, i32 0, i32 0, i32 0)
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @symlinkat(i8* %77, i32 %78, i8* %79)
  br label %81

81:                                               ; preds = %73, %69
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @free(i8* %82)
  br label %84

84:                                               ; preds = %81, %49
  %85 = load i8*, i8** %6, align 8
  store i8* %85, i8** %7, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @fstatat(i32 %86, i8* %87, %struct.stat* %5, i32 0)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %116

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %113, %90
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = call i8* @strchr(i8* %93, i8 signext 47)
  store i8* %94, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  store i8 0, i8* %97, align 1
  %98 = load i32, i32* %3, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @fstatat(i32 %98, i8* %99, %struct.stat* %5, i32 0)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load i32, i32* %3, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* @_DEF_DIRMODE, align 4
  %106 = call i32 @mkdirat(i32 %103, i8* %104, i32 %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @EX_OSFILE, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @err(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %108, %102
  br label %113

113:                                              ; preds = %112, %96
  %114 = load i8*, i8** %7, align 8
  store i8 47, i8* %114, align 1
  br label %91

115:                                              ; preds = %91
  br label %116

116:                                              ; preds = %115, %84
  %117 = load i32, i32* %3, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @fstatat(i32 %117, i8* %118, %struct.stat* %5, i32 0)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load i32, i32* %3, align 4
  %123 = load i8*, i8** %6, align 8
  %124 = load i32, i32* @_DEF_DIRMODE, align 4
  %125 = call i32 @mkdirat(i32 %122, i8* %123, i32 %124)
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @EX_OSFILE, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @err(i32 %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %127, %121
  %132 = load i32, i32* %3, align 4
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @fchownat(i32 %132, i8* %133, i32 0, i32 0, i32 0)
  br label %135

135:                                              ; preds = %131, %116
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %135, %46, %28
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @mkdirat(i32, i8*, i32) #1

declare dso_local i32 @fchownat(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @symlinkat(i8*, i32, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
