; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_prep_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_prep_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8, i8*, i32*, i32, i32, i8*, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"bsize\00", align 1
@OPT_INT32 = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"block size\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fsize\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fragment size\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"bytes per inode\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"minfree\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"maxbpg\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"max blocks per file in a cg\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"avgfilesize\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"expected average file size\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"avgfpdir\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"expected # of files per directory\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"extent\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"maximum # extent size\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"maxbpcg\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"max # of blocks per group\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"UFS version\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"optimization\00", align 1
@OPT_STRBUF = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"Optimization (time|space)\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@OPT_STRARRAY = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"UFS label\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"softupdates\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"enable softupdates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_prep_opts(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca [14 x %struct.TYPE_7__], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = call %struct.TYPE_9__* @ecalloc(i32 1, i32 64)
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds [14 x %struct.TYPE_7__], [14 x %struct.TYPE_7__]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8 98, i8* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32* %11, i32** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %13 = load i32, i32* @OPT_INT32, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  %16 = load i32, i32* @INT_MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  store i32* bitcast ([11 x i8]* @.str.1 to i32*), i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i64 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i8 102, i8* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32* %26, i32** %24, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %28 = load i32, i32* @OPT_INT32, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  %31 = load i32, i32* @INT_MAX, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %30, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  store i32* bitcast ([14 x i8]* @.str.3 to i32*), i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i8 100, i8* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32* %41, i32** %39, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %43 = load i32, i32* @OPT_INT32, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %46 = load i32, i32* @INT_MAX, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %45, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  store i32* bitcast ([16 x i8]* @.str.5 to i32*), i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 7
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i8 109, i8* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  store i32* %56, i32** %54, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %58 = load i32, i32* @OPT_INT32, align 4
  store i32 %58, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store i8* inttoptr (i64 99 to i8*), i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 6
  store i32* bitcast ([8 x i8]* @.str.6 to i32*), i32** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 7
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i8 77, i8* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  store i32* %68, i32** %66, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %70 = load i32, i32* @OPT_INT32, align 4
  store i32 %70, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i32 1, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  %73 = load i32, i32* @INT_MAX, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %72, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 6
  store i32* bitcast ([28 x i8]* @.str.8 to i32*), i32** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 7
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i8 97, i8* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 5
  store i32* %83, i32** %81, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %85 = load i32, i32* @OPT_INT32, align 4
  store i32 %85, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i32 1, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 5
  %88 = load i32, i32* @INT_MAX, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %87, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 6
  store i32* bitcast ([27 x i8]* @.str.10 to i32*), i32** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 7
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i8 110, i8* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 6
  store i32* %98, i32** %96, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %100 = load i32, i32* @OPT_INT32, align 4
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  store i32 1, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %103 = load i32, i32* @INT_MAX, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %102, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 6
  store i32* bitcast ([34 x i8]* @.str.12 to i32*), i32** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 7
  store i32 0, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i8 120, i8* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 7
  store i32* %113, i32** %111, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %115 = load i32, i32* @OPT_INT32, align 4
  store i32 %115, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  store i32 1, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 5
  %118 = load i32, i32* @INT_MAX, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %117, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 6
  store i32* bitcast ([22 x i8]* @.str.14 to i32*), i32** %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 7
  store i32 0, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i8 103, i8* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 8
  store i32* %128, i32** %126, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %130 = load i32, i32* @OPT_INT32, align 4
  store i32 %130, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  store i32 1, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  %133 = load i32, i32* @INT_MAX, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %132, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  store i32* bitcast ([26 x i8]* @.str.16 to i32*), i32** %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 7
  store i32 0, i32* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i8 118, i8* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 9
  store i32* %143, i32** %141, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %145 = load i32, i32* @OPT_INT32, align 4
  store i32 %145, i32* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  store i32 1, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 5
  store i8* inttoptr (i64 2 to i8*), i8** %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 6
  store i32* bitcast ([12 x i8]* @.str.18 to i32*), i32** %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 7
  store i32 0, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  store i8 111, i8* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  store i32* null, i32** %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %155 = load i32, i32* @OPT_STRBUF, align 4
  store i32 %155, i32* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 4
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 5
  store i8* null, i8** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  store i32* bitcast ([26 x i8]* @.str.20 to i32*), i32** %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 7
  store i32 0, i32* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i8 108, i8* %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 10
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %163, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  %168 = load i32, i32* @OPT_STRARRAY, align 4
  store i32 %168, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 4
  store i32 1, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 5
  store i8* inttoptr (i64 8 to i8*), i8** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  store i32* bitcast ([10 x i8]* @.str.22 to i32*), i32** %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 7
  store i32 0, i32* %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 1
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i8 115, i8* %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8** %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 11
  store i32* %178, i32** %176, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  %180 = load i32, i32* @OPT_INT32, align 4
  store i32 %180, i32* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 4
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  store i8* inttoptr (i64 1 to i8*), i8** %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  store i32* bitcast ([19 x i8]* @.str.24 to i32*), i32** %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 7
  store i32 0, i32* %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 1
  %186 = bitcast %struct.TYPE_7__* %185 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %186, i8 0, i64 56, i1 false)
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  store i32 -1, i32* %188, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  store i32 -1, i32* %190, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 12
  store i32 -1, i32* %192, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  store i32 -1, i32* %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  store i32 -1, i32* %196, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 13
  store i32 -1, i32* %198, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 14
  store i32 -1, i32* %200, align 4
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 4
  store i32 -1, i32* %202, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 5
  store i32 -1, i32* %204, align 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 6
  store i32 -1, i32* %206, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 9
  store i32 1, i32* %208, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 11
  store i32 0, i32* %210, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  store %struct.TYPE_9__* %211, %struct.TYPE_9__** %213, align 8
  %214 = getelementptr inbounds [14 x %struct.TYPE_7__], [14 x %struct.TYPE_7__]* %4, i64 0, i64 0
  %215 = call i32 @copy_opts(%struct.TYPE_7__* %214)
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  ret void
}

declare dso_local %struct.TYPE_9__* @ecalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @copy_opts(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
