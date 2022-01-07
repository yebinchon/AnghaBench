; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_douser.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_douser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32, i32 }
%struct.user = type { i8*, i32, i32, i32, i64, i32 }
%union.dinode = type { i32 }

@errno = common dso_local global i64 0, align 8
@di_uid = common dso_local global i32 0, align 4
@estimate = common dso_local global i64 0, align 8
@di_atime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@nusers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"allocate users\00", align 1
@users = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@count = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"\09%5ld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\09%-8s\00", align 1
@unused = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"\09%5d\09%5d\09%5d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fs*, i8*)* @douser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @douser(i32 %0, %struct.fs* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.user*, align 8
  %10 = alloca %struct.user*, align 8
  %11 = alloca %union.dinode*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fs* %1, %struct.fs** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.fs*, %struct.fs** %5, align 8
  %14 = getelementptr inbounds %struct.fs, %struct.fs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fs*, %struct.fs** %5, align 8
  %17 = getelementptr inbounds %struct.fs, %struct.fs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %66, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  store i64 0, i64* @errno, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.fs*, %struct.fs** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %union.dinode* @get_inode(i32 %26, %struct.fs* %27, i32 %28)
  store %union.dinode* %29, %union.dinode** %11, align 8
  %30 = icmp ne %union.dinode* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.fs*, %struct.fs** %5, align 8
  %33 = load %union.dinode*, %union.dinode** %11, align 8
  %34 = call i32 @isfree(%struct.fs* %32, %union.dinode* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = load %struct.fs*, %struct.fs** %5, align 8
  %38 = load %union.dinode*, %union.dinode** %11, align 8
  %39 = load i32, i32* @di_uid, align 4
  %40 = call i32 @DIP(%struct.fs* %37, %union.dinode* %38, i32 %39)
  %41 = load i64, i64* @estimate, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.fs*, %struct.fs** %5, align 8
  %45 = load %union.dinode*, %union.dinode** %11, align 8
  %46 = call i32 @virtualblocks(%struct.fs* %44, %union.dinode* %45)
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.fs*, %struct.fs** %5, align 8
  %49 = load %union.dinode*, %union.dinode** %11, align 8
  %50 = call i32 @actualblocks(%struct.fs* %48, %union.dinode* %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %46, %43 ], [ %50, %47 ]
  %53 = load %struct.fs*, %struct.fs** %5, align 8
  %54 = load %union.dinode*, %union.dinode** %11, align 8
  %55 = load i32, i32* @di_atime, align 4
  %56 = call i32 @DIP(%struct.fs* %53, %union.dinode* %54, i32 %55)
  %57 = call i32 @uses(i32 %40, i32 %52, i32 %56)
  br label %65

58:                                               ; preds = %31, %25
  %59 = load i64, i64* @errno, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %21

69:                                               ; preds = %21
  %70 = load i32, i32* @nusers, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 40
  %73 = trunc i64 %72 to i32
  %74 = call i64 @malloc(i32 %73)
  %75 = inttoptr i64 %74 to %struct.user*
  store %struct.user* %75, %struct.user** %10, align 8
  %76 = icmp ne %struct.user* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %69
  %80 = load i32, i32* @users, align 4
  %81 = load %struct.user*, %struct.user** %10, align 8
  %82 = load i32, i32* @nusers, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 40
  %85 = trunc i64 %84 to i32
  %86 = call i32 @bcopy(i32 %80, %struct.user* %81, i32 %85)
  %87 = load %struct.user*, %struct.user** %10, align 8
  %88 = call i32 @sortusers(%struct.user* %87)
  %89 = load %struct.user*, %struct.user** %10, align 8
  store %struct.user* %89, %struct.user** %9, align 8
  %90 = load i32, i32* @nusers, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %138, %79
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %12, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.user*, %struct.user** %9, align 8
  %97 = getelementptr inbounds %struct.user, %struct.user* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi i1 [ false, %91 ], [ %99, %95 ]
  br i1 %101, label %102, label %141

102:                                              ; preds = %100
  %103 = load %struct.user*, %struct.user** %9, align 8
  %104 = getelementptr inbounds %struct.user, %struct.user* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @SIZE(i32 %105)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* @count, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load %struct.user*, %struct.user** %9, align 8
  %112 = getelementptr inbounds %struct.user, %struct.user* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %110, %102
  %116 = load %struct.user*, %struct.user** %9, align 8
  %117 = getelementptr inbounds %struct.user, %struct.user* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  %120 = load i64, i64* @unused, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = load %struct.user*, %struct.user** %9, align 8
  %124 = getelementptr inbounds %struct.user, %struct.user* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @SIZE(i32 %125)
  %127 = load %struct.user*, %struct.user** %9, align 8
  %128 = getelementptr inbounds %struct.user, %struct.user* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @SIZE(i32 %129)
  %131 = load %struct.user*, %struct.user** %9, align 8
  %132 = getelementptr inbounds %struct.user, %struct.user* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @SIZE(i32 %133)
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %122, %115
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136
  %139 = load %struct.user*, %struct.user** %9, align 8
  %140 = getelementptr inbounds %struct.user, %struct.user* %139, i32 1
  store %struct.user* %140, %struct.user** %9, align 8
  br label %91

141:                                              ; preds = %100
  %142 = load %struct.user*, %struct.user** %10, align 8
  %143 = call i32 @free(%struct.user* %142)
  ret void
}

declare dso_local %union.dinode* @get_inode(i32, %struct.fs*, i32) #1

declare dso_local i32 @isfree(%struct.fs*, %union.dinode*) #1

declare dso_local i32 @uses(i32, i32, i32) #1

declare dso_local i32 @DIP(%struct.fs*, %union.dinode*, i32) #1

declare dso_local i32 @virtualblocks(%struct.fs*, %union.dinode*) #1

declare dso_local i32 @actualblocks(%struct.fs*, %union.dinode*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bcopy(i32, %struct.user*, i32) #1

declare dso_local i32 @sortusers(%struct.user*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @SIZE(i32) #1

declare dso_local i32 @free(%struct.user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
