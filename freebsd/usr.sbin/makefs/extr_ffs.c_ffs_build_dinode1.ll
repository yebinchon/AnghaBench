; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_build_dinode1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_build_dinode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs1_dinode = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.stat, i32 }
%struct.TYPE_11__ = type { i32 }

@stampst = common dso_local global %struct.stat zeroinitializer, align 8
@UFS1_MAXSYMLINKLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ufs1_dinode*, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @ffs_build_dinode1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ffs_build_dinode1(%struct.ufs1_dinode* %0, %struct.TYPE_12__* %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca %struct.ufs1_dinode*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat*, align 8
  store %struct.ufs1_dinode* %0, %struct.ufs1_dinode** %6, align 8
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
  %24 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %25 = call i32 @memset(%struct.ufs1_dinode* %24, i32 0, i32 64)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %33 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %32, i32 0, i32 14
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %40 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %39, i32 0, i32 13
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %48 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = call i32 (...) @random()
  %50 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %51 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %59 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %67 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load %struct.stat*, %struct.stat** %13, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %72 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.stat*, %struct.stat** %13, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %77 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load %struct.stat*, %struct.stat** %13, align 8
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %82 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  store i8* null, i8** %12, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = icmp eq %struct.TYPE_10__* %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %22
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %12, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %94 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %155

95:                                               ; preds = %22
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @S_ISBLK(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @S_ISCHR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %101, %95
  %108 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %109 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ufs_rw32(i32 %115, i32 %118)
  %120 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %121 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  br label %154

122:                                              ; preds = %101
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @S_ISLNK(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %122
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strlen(i8* %131)
  store i64 %132, i64* %11, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* @UFS1_MAXSYMLINKLEN, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %138 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @memcpy(i32 %139, i8* %142, i64 %143)
  br label %149

145:                                              ; preds = %128
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %12, align 8
  br label %149

149:                                              ; preds = %145, %136
  %150 = load i64, i64* %11, align 8
  %151 = load %struct.ufs1_dinode*, %struct.ufs1_dinode** %6, align 8
  %152 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %149, %122
  br label %154

154:                                              ; preds = %153, %107
  br label %155

155:                                              ; preds = %154, %86
  %156 = load i8*, i8** %12, align 8
  ret i8* %156
}

declare dso_local i32 @memset(%struct.ufs1_dinode*, i32, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @ufs_rw32(i32, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
