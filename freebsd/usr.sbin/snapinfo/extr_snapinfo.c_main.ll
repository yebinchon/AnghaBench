; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/snapinfo/extr_snapinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/snapinfo/extr_snapinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.statfs = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"adv\00", align 1
@cont_search = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca %struct.statfs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %32 [
    i32 97, label %23
    i32 100, label %26
    i32 118, label %29
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @cont_search, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @cont_search, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @verbose, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @verbose, align 4
  br label %34

32:                                               ; preds = %21
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %29, %26, %23
  br label %16

35:                                               ; preds = %16
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %35
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %46
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %52, %49
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @PATH_MAX, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %14, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %15, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32* @realpath(i8* %67, i8* %64)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %60
  %71 = call i32 @stat(i8* %64, %struct.stat* %7)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @S_ISDIR(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73, %70, %60
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %73
  store i8* %64, i8** %6, align 8
  %81 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %81)
  br label %82

82:                                               ; preds = %80, %57
  %83 = load i32, i32* @MNT_WAIT, align 4
  %84 = call i32 @getmntinfo(%struct.statfs** %8, i32 %83)
  store i32 %84, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %121, %82
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %85
  %90 = load %struct.statfs*, %struct.statfs** %8, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.statfs, %struct.statfs* %90, i64 %92
  %94 = getelementptr inbounds %struct.statfs, %struct.statfs* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strncmp(i32 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %120, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %6, align 8
  %103 = load %struct.statfs*, %struct.statfs** %8, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.statfs, %struct.statfs* %103, i64 %105
  %107 = getelementptr inbounds %struct.statfs, %struct.statfs* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @strcmp(i8* %102, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %101, %98
  %112 = load %struct.statfs*, %struct.statfs** %8, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.statfs, %struct.statfs* %112, i64 %114
  %116 = call i32 @find_snapshot(%struct.statfs* %115)
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %111, %101
  br label %120

120:                                              ; preds = %119, %89
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %85

124:                                              ; preds = %85
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (...) @usage()
  br label %129

129:                                              ; preds = %127, %124
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @realpath(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @find_snapshot(%struct.statfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
