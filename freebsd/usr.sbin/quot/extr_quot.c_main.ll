; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8*, i32, i32 }
%struct.fstab = type { i8* }

@douser = common dso_local global i32 0, align 4
@func = common dso_local global i32 0, align 4
@headerlen = common dso_local global i32 0, align 4
@blocksize = common dso_local global i32 0, align 4
@header = common dso_local global i32 0, align 4
@donames = common dso_local global i32 0, align 4
@dofsizes = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@estimate = common dso_local global i32 0, align 4
@unused = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@MFSNAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.statfs*, align 8
  %8 = alloca %struct.fstab*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 0, i8* %6, align 1
  %10 = load i32, i32* @douser, align 4
  store i32 %10, i32* @func, align 4
  %11 = call i32 @getbsize(i32* @headerlen, i32* @blocksize)
  store i32 %11, i32* @header, align 4
  br label %12

12:                                               ; preds = %49, %2
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i1 [ false, %12 ], [ %22, %16 ]
  br i1 %24, label %25, label %50

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %46 [
    i32 110, label %37
    i32 99, label %39
    i32 97, label %41
    i32 102, label %42
    i32 104, label %43
    i32 107, label %44
    i32 118, label %45
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @donames, align 4
  store i32 %38, i32* @func, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load i32, i32* @dofsizes, align 4
  store i32 %40, i32* @func, align 4
  br label %48

41:                                               ; preds = %32
  store i8 1, i8* %6, align 1
  br label %48

42:                                               ; preds = %32
  store i32 1, i32* @count, align 4
  br label %48

43:                                               ; preds = %32
  store i32 1, i32* @estimate, align 4
  br label %48

44:                                               ; preds = %32
  store i32 1024, i32* @blocksize, align 4
  br label %48

45:                                               ; preds = %32
  store i32 1, i32* @unused, align 4
  br label %48

46:                                               ; preds = %32
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %45, %44, %43, %42, %41, %39, %37
  br label %26

49:                                               ; preds = %26
  br label %12

50:                                               ; preds = %23
  %51 = load i8, i8* %6, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load i32, i32* @MNT_NOWAIT, align 4
  %55 = call i32 @getmntinfo(%struct.statfs** %7, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %76, %53
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %9, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.statfs*, %struct.statfs** %7, align 8
  %62 = getelementptr inbounds %struct.statfs, %struct.statfs* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MFSNAMELEN, align 4
  %65 = call i32 @strncmp(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %60
  %68 = load %struct.statfs*, %struct.statfs** %7, align 8
  %69 = getelementptr inbounds %struct.statfs, %struct.statfs* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.statfs*, %struct.statfs** %7, align 8
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @quot(i8* %70, i32 %73)
  br label %75

75:                                               ; preds = %67, %60
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.statfs*, %struct.statfs** %7, align 8
  %78 = getelementptr inbounds %struct.statfs, %struct.statfs* %77, i32 1
  store %struct.statfs* %78, %struct.statfs** %7, align 8
  br label %56

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %99, %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %4, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i8**, i8*** %5, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call %struct.fstab* @getfsfile(i8* %87)
  store %struct.fstab* %88, %struct.fstab** %8, align 8
  %89 = icmp ne %struct.fstab* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.fstab*, %struct.fstab** %8, align 8
  %92 = getelementptr inbounds %struct.fstab, %struct.fstab* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @quot(i8* %93, i32 0)
  br label %99

95:                                               ; preds = %85
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @quot(i8* %97, i32 0)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %5, align 8
  br label %81

102:                                              ; preds = %81
  ret i32 0
}

declare dso_local i32 @getbsize(i32*, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @quot(i8*, i32) #1

declare dso_local %struct.fstab* @getfsfile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
