; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_getprivs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_getprivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { %struct.quotause*, i32 }
%struct.fstab = type { i32 }
%struct.statfs = type { i8*, i8*, i32 }

@filename = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot statfs %s\00", align 1
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no filesystems mounted!\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@lflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.quotause* (i64, i32)* @getprivs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.quotause* @getprivs(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.quotause*, align 8
  %6 = alloca %struct.quotause*, align 8
  %7 = alloca %struct.fstab*, align 8
  %8 = alloca %struct.quotause*, align 8
  %9 = alloca %struct.statfs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.statfs, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.quotause* null, %struct.quotause** %6, align 8
  store %struct.quotause* null, %struct.quotause** %8, align 8
  store %struct.quotause* null, %struct.quotause** %5, align 8
  %13 = load i32*, i32** @filename, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** @filename, align 8
  %17 = call i64 @statfs(i32* %16, %struct.statfs* %12)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** @filename, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %20)
  br label %22

22:                                               ; preds = %19, %15, %2
  %23 = load i32, i32* @MNT_NOWAIT, align 4
  %24 = call i32 @getmntinfo(%struct.statfs** %9, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @errx(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = call i32 (...) @setfsent()
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %138, %29
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %141

35:                                               ; preds = %31
  %36 = load %struct.quotause*, %struct.quotause** %5, align 8
  %37 = icmp eq %struct.quotause* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = call i64 @malloc(i32 16)
  %40 = inttoptr i64 %39 to %struct.quotause*
  store %struct.quotause* %40, %struct.quotause** %5, align 8
  %41 = icmp eq %struct.quotause* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @errx(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32*, i32** @filename, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.statfs, %struct.statfs* %12, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.statfs*, %struct.statfs** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i64 %53
  %55 = getelementptr inbounds %struct.statfs, %struct.statfs* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %50, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %138

60:                                               ; preds = %48, %45
  %61 = load %struct.statfs*, %struct.statfs** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.statfs, %struct.statfs* %61, i64 %63
  %65 = getelementptr inbounds %struct.statfs, %struct.statfs* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %60
  %70 = load i64, i64* @lflag, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %138

73:                                               ; preds = %69
  %74 = load %struct.statfs*, %struct.statfs** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.statfs, %struct.statfs* %74, i64 %76
  %78 = load %struct.quotause*, %struct.quotause** %5, align 8
  %79 = load i64, i64* %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @getnfsquota(%struct.statfs* %77, %struct.quotause* %78, i64 %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %138

84:                                               ; preds = %73
  br label %115

85:                                               ; preds = %60
  %86 = load %struct.statfs*, %struct.statfs** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.statfs, %struct.statfs* %86, i64 %88
  %90 = getelementptr inbounds %struct.statfs, %struct.statfs* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %85
  %95 = load %struct.statfs*, %struct.statfs** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.statfs, %struct.statfs* %95, i64 %97
  %99 = getelementptr inbounds %struct.statfs, %struct.statfs* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.fstab* @getfsspec(i32 %100)
  store %struct.fstab* %101, %struct.fstab** %7, align 8
  %102 = icmp eq %struct.fstab* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %138

104:                                              ; preds = %94
  %105 = load %struct.fstab*, %struct.fstab** %7, align 8
  %106 = load %struct.quotause*, %struct.quotause** %5, align 8
  %107 = load i64, i64* %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @getufsquota(%struct.fstab* %105, %struct.quotause* %106, i64 %107, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %138

112:                                              ; preds = %104
  br label %114

113:                                              ; preds = %85
  br label %138

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %84
  %116 = load %struct.quotause*, %struct.quotause** %5, align 8
  %117 = getelementptr inbounds %struct.quotause, %struct.quotause* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.statfs*, %struct.statfs** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.statfs, %struct.statfs* %119, i64 %121
  %123 = getelementptr inbounds %struct.statfs, %struct.statfs* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strcpy(i32 %118, i8* %124)
  %126 = load %struct.quotause*, %struct.quotause** %8, align 8
  %127 = icmp eq %struct.quotause* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load %struct.quotause*, %struct.quotause** %5, align 8
  store %struct.quotause* %129, %struct.quotause** %8, align 8
  br label %134

130:                                              ; preds = %115
  %131 = load %struct.quotause*, %struct.quotause** %5, align 8
  %132 = load %struct.quotause*, %struct.quotause** %6, align 8
  %133 = getelementptr inbounds %struct.quotause, %struct.quotause* %132, i32 0, i32 0
  store %struct.quotause* %131, %struct.quotause** %133, align 8
  br label %134

134:                                              ; preds = %130, %128
  %135 = load %struct.quotause*, %struct.quotause** %5, align 8
  store %struct.quotause* %135, %struct.quotause** %6, align 8
  %136 = load %struct.quotause*, %struct.quotause** %6, align 8
  %137 = getelementptr inbounds %struct.quotause, %struct.quotause* %136, i32 0, i32 0
  store %struct.quotause* null, %struct.quotause** %137, align 8
  store %struct.quotause* null, %struct.quotause** %5, align 8
  br label %138

138:                                              ; preds = %134, %113, %111, %103, %83, %72, %59
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %31

141:                                              ; preds = %31
  %142 = load %struct.quotause*, %struct.quotause** %5, align 8
  %143 = icmp ne %struct.quotause* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.quotause*, %struct.quotause** %5, align 8
  %146 = call i32 @free(%struct.quotause* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = call i32 (...) @endfsent()
  %149 = load %struct.quotause*, %struct.quotause** %8, align 8
  ret %struct.quotause* %149
}

declare dso_local i64 @statfs(i32*, %struct.statfs*) #1

declare dso_local i32 @err(i32, i8*, i32*) #1

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @setfsent(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @getnfsquota(%struct.statfs*, %struct.quotause*, i64, i32) #1

declare dso_local %struct.fstab* @getfsspec(i32) #1

declare dso_local i64 @getufsquota(%struct.fstab*, %struct.quotause*, i64, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @free(%struct.quotause*) #1

declare dso_local i32 @endfsent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
