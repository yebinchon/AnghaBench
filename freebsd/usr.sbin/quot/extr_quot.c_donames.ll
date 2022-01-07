; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_donames.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_donames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32, i32 }
%union.dinode = type { i32 }
%struct.TYPE_2__ = type { i8* }

@EOF = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"illegal inode %ju\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@di_uid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fs*, i8*)* @donames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @donames(i32 %0, %struct.fs* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.dinode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fs* %1, %struct.fs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.fs*, %struct.fs** %5, align 8
  %12 = getelementptr inbounds %struct.fs, %struct.fs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fs*, %struct.fs** %5, align 8
  %15 = getelementptr inbounds %struct.fs, %struct.fs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %44, %3
  %20 = call i32 (...) @getchar()
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 48
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 57
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ true, %23 ], [ %28, %26 ]
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi i1 [ false, %19 ], [ %30, %29 ]
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %43, %33
  %35 = call i32 (...) @getchar()
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @EOF, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 10
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i1 [ false, %34 ], [ %40, %38 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %34

44:                                               ; preds = %41
  br label %19

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @stdin, align 4
  %48 = call i32 @ungetc(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %128, %45
  %50 = call i32 @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %9)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %129

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %129

59:                                               ; preds = %52
  store i64 0, i64* @errno, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.fs*, %struct.fs** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call %union.dinode* @get_inode(i32 %60, %struct.fs* %61, i32 %62)
  store %union.dinode* %63, %union.dinode** %10, align 8
  %64 = icmp ne %union.dinode* %63, null
  br i1 %64, label %65, label %105

65:                                               ; preds = %59
  %66 = load %struct.fs*, %struct.fs** %5, align 8
  %67 = load %union.dinode*, %union.dinode** %10, align 8
  %68 = call i32 @isfree(%struct.fs* %66, %union.dinode* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %105, label %70

70:                                               ; preds = %65
  %71 = load %struct.fs*, %struct.fs** %5, align 8
  %72 = load %union.dinode*, %union.dinode** %10, align 8
  %73 = load i32, i32* @di_uid, align 4
  %74 = call i32 @DIP(%struct.fs* %71, %union.dinode* %72, i32 %73)
  %75 = call %struct.TYPE_2__* @user(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %87, %70
  %80 = call i32 (...) @getchar()
  store i32 %80, i32* %7, align 4
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 9
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi i1 [ true, %79 ], [ %84, %82 ]
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br label %79

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %98, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @EOF, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 10
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i1 [ false, %89 ], [ %95, %93 ]
  br i1 %97, label %98, label %103

98:                                               ; preds = %96
  %99 = load i32, i32* %7, align 4
  %100 = trunc i32 %99 to i8
  %101 = call i32 @putchar(i8 signext %100)
  %102 = call i32 (...) @getchar()
  store i32 %102, i32* %7, align 4
  br label %89

103:                                              ; preds = %96
  %104 = call i32 @putchar(i8 signext 10)
  br label %123

105:                                              ; preds = %65, %59
  %106 = load i64, i64* @errno, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %121, %111
  %113 = call i32 (...) @getchar()
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* @EOF, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 10
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i1 [ false, %112 ], [ %118, %116 ]
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  br label %112

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %103
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @EOF, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %129

128:                                              ; preds = %123
  br label %49

129:                                              ; preds = %56, %127, %49
  ret void
}

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @ungetc(i32, i32) #1

declare dso_local i32 @scanf(i8*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local %union.dinode* @get_inode(i32, %struct.fs*, i32) #1

declare dso_local i32 @isfree(%struct.fs*, %union.dinode*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @user(i32) #1

declare dso_local i32 @DIP(%struct.fs*, %union.dinode*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
