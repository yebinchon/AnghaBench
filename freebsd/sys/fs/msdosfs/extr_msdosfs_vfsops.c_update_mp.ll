; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_update_mp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vfsops.c_update_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i8*, i32**)* }
%struct.mount = type { i32 }
%struct.thread = type { i32 }
%struct.msdosfsmount = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"kiconv\00", align 1
@msdosfs_iconv = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"cs_win\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cs_local\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cs_dos\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@ALLPERMS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"dirmask\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"shortname\00", align 1
@MSDOSFSMNT_SHORTNAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"shortnames\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"longname\00", align 1
@MSDOSFSMNT_LONGNAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"longnames\00", align 1
@MSDOSFSMNT_KICONV = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"nowin95\00", align 1
@MSDOSFSMNT_NOWIN95 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.thread*)* @update_mp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_mp(%struct.mount* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = call %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount* %12)
  store %struct.msdosfsmount* %13, %struct.msdosfsmount** %6, align 8
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vfs_getopt(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** null, i32* null)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %94, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %19
  %23 = load %struct.mount*, %struct.mount** %4, align 8
  %24 = getelementptr inbounds %struct.mount, %struct.mount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vfs_getopt(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.mount*, %struct.mount** %4, align 8
  %31 = getelementptr inbounds %struct.mount, %struct.mount* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vfs_getopt(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %9, i32* null)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.mount*, %struct.mount** %4, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vfs_getopt(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %7, i32* null)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (i8*, i8*, i32**)*, i32 (i8*, i8*, i32**)** %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %52 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %51, i32 0, i32 7
  %53 = call i32 %48(i8* %49, i8* %50, i32** %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (i8*, i8*, i32**)*, i32 (i8*, i8*, i32**)** %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %60 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %59, i32 0, i32 8
  %61 = call i32 %56(i8* %57, i8* %58, i32** %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (i8*, i8*, i32**)*, i32 (i8*, i8*, i32**)** %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %68 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %67, i32 0, i32 5
  %69 = call i32 %64(i8* %65, i8* %66, i32** %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (i8*, i8*, i32**)*, i32 (i8*, i8*, i32**)** %71, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %76 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %75, i32 0, i32 6
  %77 = call i32 %72(i8* %73, i8* %74, i32** %76)
  br label %78

78:                                               ; preds = %45, %42
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %212

83:                                               ; preds = %78
  br label %93

84:                                               ; preds = %19
  %85 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %86 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %85, i32 0, i32 8
  store i32* null, i32** %86, align 8
  %87 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %88 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %87, i32 0, i32 7
  store i32* null, i32** %88, align 8
  %89 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %90 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %89, i32 0, i32 6
  store i32* null, i32** %90, align 8
  %91 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %92 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %91, i32 0, i32 5
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %84, %83
  br label %94

94:                                               ; preds = %93, %2
  %95 = load %struct.mount*, %struct.mount** %4, align 8
  %96 = getelementptr inbounds %struct.mount, %struct.mount* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @vfs_scanopt(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %11)
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %103 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.mount*, %struct.mount** %4, align 8
  %106 = getelementptr inbounds %struct.mount, %struct.mount* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @vfs_scanopt(i32 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %11)
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %113 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load %struct.mount*, %struct.mount** %4, align 8
  %116 = getelementptr inbounds %struct.mount, %struct.mount* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @vfs_scanopt(i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %11)
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @ALLPERMS, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %125 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %120, %114
  %127 = load %struct.mount*, %struct.mount** %4, align 8
  %128 = getelementptr inbounds %struct.mount, %struct.mount* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vfs_scanopt(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %11)
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @ALLPERMS, align 4
  %135 = and i32 %133, %134
  %136 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %137 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %126
  %139 = load %struct.mount*, %struct.mount** %4, align 8
  %140 = getelementptr inbounds %struct.mount, %struct.mount* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %143 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %142, i32 0, i32 4
  %144 = load i32, i32* @MSDOSFSMNT_SHORTNAME, align 4
  %145 = call i32 @vfs_flagopt(i32 %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %143, i32 %144)
  %146 = load %struct.mount*, %struct.mount** %4, align 8
  %147 = getelementptr inbounds %struct.mount, %struct.mount* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %150 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %149, i32 0, i32 4
  %151 = load i32, i32* @MSDOSFSMNT_SHORTNAME, align 4
  %152 = call i32 @vfs_flagopt(i32 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %150, i32 %151)
  %153 = load %struct.mount*, %struct.mount** %4, align 8
  %154 = getelementptr inbounds %struct.mount, %struct.mount* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %157 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %156, i32 0, i32 4
  %158 = load i32, i32* @MSDOSFSMNT_LONGNAME, align 4
  %159 = call i32 @vfs_flagopt(i32 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* %157, i32 %158)
  %160 = load %struct.mount*, %struct.mount** %4, align 8
  %161 = getelementptr inbounds %struct.mount, %struct.mount* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %164 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %163, i32 0, i32 4
  %165 = load i32, i32* @MSDOSFSMNT_LONGNAME, align 4
  %166 = call i32 @vfs_flagopt(i32 %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %164, i32 %165)
  %167 = load %struct.mount*, %struct.mount** %4, align 8
  %168 = getelementptr inbounds %struct.mount, %struct.mount* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %171 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %170, i32 0, i32 4
  %172 = load i32, i32* @MSDOSFSMNT_KICONV, align 4
  %173 = call i32 @vfs_flagopt(i32 %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %171, i32 %172)
  %174 = load %struct.mount*, %struct.mount** %4, align 8
  %175 = getelementptr inbounds %struct.mount, %struct.mount* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @vfs_getopt(i32 %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** null, i32* null)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %138
  %180 = load i32, i32* @MSDOSFSMNT_NOWIN95, align 4
  %181 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %182 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %192

185:                                              ; preds = %138
  %186 = load i32, i32* @MSDOSFSMNT_NOWIN95, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %189 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %185, %179
  %193 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %194 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @MSDOSFSMNT_NOWIN95, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load i32, i32* @MSDOSFSMNT_SHORTNAME, align 4
  %201 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %202 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %211

205:                                              ; preds = %192
  %206 = load i32, i32* @MSDOSFSMNT_LONGNAME, align 4
  %207 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %208 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %199
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %81
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount*) #1

declare dso_local i32 @vfs_getopt(i32, i8*, i8**, i32*) #1

declare dso_local i32 @vfs_scanopt(i32, i8*, i8*, i32*) #1

declare dso_local i32 @vfs_flagopt(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
