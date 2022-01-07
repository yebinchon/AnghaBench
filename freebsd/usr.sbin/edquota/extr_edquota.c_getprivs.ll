; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_getprivs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_getprivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { %struct.quotause*, i32, i32, %struct.quotafile* }
%struct.quotafile = type { i32 }
%struct.fstab = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot open quotas on %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot read quotas on %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"No quotas on %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"any filesystems\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.quotause* @getprivs(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quotafile*, align 8
  %8 = alloca %struct.fstab*, align 8
  %9 = alloca %struct.quotause*, align 8
  %10 = alloca %struct.quotause*, align 8
  %11 = alloca %struct.quotause*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = call i32 (...) @setfsent()
  store %struct.quotause* null, %struct.quotause** %10, align 8
  store %struct.quotause* null, %struct.quotause** %11, align 8
  br label %13

13:                                               ; preds = %103, %87, %63, %45, %38, %3
  %14 = call %struct.fstab* (...) @getfsent()
  store %struct.fstab* %14, %struct.fstab** %8, align 8
  %15 = icmp ne %struct.fstab* %14, null
  br i1 %15, label %16, label %107

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.fstab*, %struct.fstab** %8, align 8
  %27 = getelementptr inbounds %struct.fstab, %struct.fstab* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %25, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.fstab*, %struct.fstab** %8, align 8
  %34 = getelementptr inbounds %struct.fstab, %struct.fstab* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %32, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %13

39:                                               ; preds = %31, %24, %19, %16
  %40 = load %struct.fstab*, %struct.fstab** %8, align 8
  %41 = getelementptr inbounds %struct.fstab, %struct.fstab* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %13

46:                                               ; preds = %39
  %47 = load %struct.fstab*, %struct.fstab** %8, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @O_CREAT, align 4
  %50 = load i32, i32* @O_RDWR, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.quotafile* @quota_open(%struct.fstab* %47, i32 %48, i32 %51)
  store %struct.quotafile* %52, %struct.quotafile** %7, align 8
  %53 = icmp eq %struct.quotafile* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EOPNOTSUPP, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.fstab*, %struct.fstab** %8, align 8
  %60 = getelementptr inbounds %struct.fstab, %struct.fstab* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %58, %54
  br label %13

64:                                               ; preds = %46
  %65 = call i64 @calloc(i32 1, i32 24)
  %66 = inttoptr i64 %65 to %struct.quotause*
  store %struct.quotause* %66, %struct.quotause** %9, align 8
  %67 = icmp eq %struct.quotause* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @errx(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  %71 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %72 = load %struct.quotause*, %struct.quotause** %9, align 8
  %73 = getelementptr inbounds %struct.quotause, %struct.quotause* %72, i32 0, i32 3
  store %struct.quotafile* %71, %struct.quotafile** %73, align 8
  %74 = load %struct.quotause*, %struct.quotause** %9, align 8
  %75 = getelementptr inbounds %struct.quotause, %struct.quotause* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fstab*, %struct.fstab** %8, align 8
  %78 = getelementptr inbounds %struct.fstab, %struct.fstab* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlcpy(i32 %76, i8* %79, i32 4)
  %81 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %82 = load %struct.quotause*, %struct.quotause** %9, align 8
  %83 = getelementptr inbounds %struct.quotause, %struct.quotause* %82, i32 0, i32 1
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @quota_read(%struct.quotafile* %81, i32* %83, i64 %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %94

87:                                               ; preds = %70
  %88 = load %struct.fstab*, %struct.fstab** %8, align 8
  %89 = getelementptr inbounds %struct.fstab, %struct.fstab* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  %92 = load %struct.quotause*, %struct.quotause** %9, align 8
  %93 = call i32 @freeprivs(%struct.quotause* %92)
  br label %13

94:                                               ; preds = %70
  %95 = load %struct.quotause*, %struct.quotause** %11, align 8
  %96 = icmp eq %struct.quotause* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load %struct.quotause*, %struct.quotause** %9, align 8
  store %struct.quotause* %98, %struct.quotause** %11, align 8
  br label %103

99:                                               ; preds = %94
  %100 = load %struct.quotause*, %struct.quotause** %9, align 8
  %101 = load %struct.quotause*, %struct.quotause** %10, align 8
  %102 = getelementptr inbounds %struct.quotause, %struct.quotause* %101, i32 0, i32 0
  store %struct.quotause* %100, %struct.quotause** %102, align 8
  br label %103

103:                                              ; preds = %99, %97
  %104 = load %struct.quotause*, %struct.quotause** %9, align 8
  store %struct.quotause* %104, %struct.quotause** %10, align 8
  %105 = load %struct.quotause*, %struct.quotause** %9, align 8
  %106 = getelementptr inbounds %struct.quotause, %struct.quotause* %105, i32 0, i32 0
  store %struct.quotause* null, %struct.quotause** %106, align 8
  br label %13

107:                                              ; preds = %13
  %108 = load %struct.quotause*, %struct.quotause** %11, align 8
  %109 = icmp eq %struct.quotause* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i8*, i8** %6, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i8*, i8** %6, align 8
  br label %116

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i8* [ %114, %113 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %115 ]
  %118 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %116, %107
  %120 = call i32 (...) @endfsent()
  %121 = load %struct.quotause*, %struct.quotause** %11, align 8
  ret %struct.quotause* %121
}

declare dso_local i32 @setfsent(...) #1

declare dso_local %struct.fstab* @getfsent(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.quotafile* @quota_open(%struct.fstab*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @quota_read(%struct.quotafile*, i32*, i64) #1

declare dso_local i32 @freeprivs(%struct.quotause*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @endfsent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
