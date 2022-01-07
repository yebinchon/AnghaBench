; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_build_dinode2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_build_dinode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs2_dinode = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.stat, i32 }
%struct.TYPE_11__ = type { i32 }

@stampst = common dso_local global %struct.stat zeroinitializer, align 8
@UFS2_MAXSYMLINKLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ufs2_dinode*, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @ffs_build_dinode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ffs_build_dinode2(%struct.ufs2_dinode* %0, %struct.TYPE_12__* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca %struct.ufs2_dinode*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat*, align 8
  store %struct.ufs2_dinode* %0, %struct.ufs2_dinode** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %10, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @stampst, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %22

17:                                               ; preds = %5
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  br label %22

22:                                               ; preds = %17, %16
  %23 = phi %struct.stat* [ @stampst, %16 ], [ %21, %17 ]
  store %struct.stat* %23, %struct.stat** %13, align 8
  %24 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %25 = call i32 @memset(%struct.ufs2_dinode* %24, i32 0, i32 72)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %33 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %32, i32 0, i32 16
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %40 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %39, i32 0, i32 15
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %48 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = call i32 (...) @random()
  %50 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %51 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %59 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %58, i32 0, i32 12
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %67 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 8
  %68 = load %struct.stat*, %struct.stat** %13, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %72 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 4
  %73 = load %struct.stat*, %struct.stat** %13, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %77 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 8
  %78 = load %struct.stat*, %struct.stat** %13, align 8
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %82 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = load %struct.stat*, %struct.stat** %13, align 8
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %87 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  store i8* null, i8** %12, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = icmp eq %struct.TYPE_10__* %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %22
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %12, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %99 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %160

100:                                              ; preds = %22
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @S_ISBLK(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @S_ISCHR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %106, %100
  %113 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %114 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ufs_rw64(i32 %120, i32 %123)
  %125 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %126 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  br label %159

127:                                              ; preds = %106
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @S_ISLNK(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %127
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @strlen(i8* %136)
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @UFS2_MAXSYMLINKLEN, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %143 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @memcpy(i32 %144, i8* %147, i64 %148)
  br label %154

150:                                              ; preds = %133
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %12, align 8
  br label %154

154:                                              ; preds = %150, %141
  %155 = load i64, i64* %11, align 8
  %156 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %6, align 8
  %157 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %154, %127
  br label %159

159:                                              ; preds = %158, %112
  br label %160

160:                                              ; preds = %159, %91
  %161 = load i8*, i8** %12, align 8
  ret i8* %161
}

declare dso_local i32 @memset(%struct.ufs2_dinode*, i32, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @ufs_rw64(i32, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
