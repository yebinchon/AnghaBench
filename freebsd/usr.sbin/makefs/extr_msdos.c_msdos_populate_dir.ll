; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_msdos.c_msdos_populate_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_msdos.c_msdos_populate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"path %s too long\00", align 1
@FI_ALLOCATED = common dso_local global i32 0, align 4
@FI_WRITTEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"msdosfs_mkdire %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"msdos_populate_dir %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"skipping non-regular file %s/%s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"msdosfs_mkfile %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.denode*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @msdos_populate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_populate_dir(i8* %0, %struct.denode* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.denode*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.denode*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.denode* %1, %struct.denode** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load %struct.denode*, %struct.denode** %8, align 8
  %22 = icmp ne %struct.denode* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %12, align 8
  br label %36

36:                                               ; preds = %162, %5
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %166

39:                                               ; preds = %36
  %40 = trunc i64 %18 to i32
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @snprintf(i8* %20, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %44)
  %46 = icmp uge i64 %45, %18
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %167

49:                                               ; preds = %39
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FI_ALLOCATED, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %49
  %59 = load i32, i32* @FI_ALLOCATED, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = icmp ne %struct.TYPE_10__* %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i64 %76, i64* %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %83, align 8
  br label %84

84:                                               ; preds = %69, %58
  br label %85

85:                                               ; preds = %84, %49
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @FI_WRITTEN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %162

95:                                               ; preds = %85
  %96 = load i32, i32* @FI_WRITTEN, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %95
  %108 = load %struct.denode*, %struct.denode** %8, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %110 = call %struct.denode* @msdosfs_mkdire(i8* %20, %struct.denode* %108, %struct.TYPE_10__* %109)
  store %struct.denode* %110, %struct.denode** %16, align 8
  %111 = icmp eq %struct.denode* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %167

114:                                              ; preds = %107
  %115 = load %struct.denode*, %struct.denode** %16, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = call i32 @msdos_populate_dir(i8* %20, %struct.denode* %115, %struct.TYPE_10__* %118, %struct.TYPE_10__* %119, %struct.TYPE_11__* %120)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %167

125:                                              ; preds = %114
  br label %162

126:                                              ; preds = %95
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @S_ISREG(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %137, i8* %140)
  br label %162

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  br label %153

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i8* [ %151, %148 ], [ %20, %152 ]
  %155 = load %struct.denode*, %struct.denode** %8, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %157 = call i32* @msdosfs_mkfile(i8* %154, %struct.denode* %155, %struct.TYPE_10__* %156)
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %167

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %132, %125, %94
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 7
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  store %struct.TYPE_10__* %165, %struct.TYPE_10__** %12, align 8
  br label %36

166:                                              ; preds = %36
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %167

167:                                              ; preds = %166, %159, %123, %112, %47
  %168 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*, ...) #2

declare dso_local %struct.denode* @msdosfs_mkdire(i8*, %struct.denode*, %struct.TYPE_10__*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32* @msdosfs_mkfile(i8*, %struct.denode*, %struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
