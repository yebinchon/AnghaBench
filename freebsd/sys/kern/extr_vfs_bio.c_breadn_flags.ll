; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_breadn_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_breadn_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.buf = type { i32, {}*, i32, i32, %struct.ucred*, i32, i32 }

@KTR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"breadn(%p, %jd, %d)\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@GB_NOSPARSE = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@GB_CKHASH = common dso_local global i32 0, align 4
@B_CKHASH = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@NOCRED = common dso_local global %struct.ucred* null, align 8
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @breadn_flags(%struct.vnode* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, %struct.ucred* %6, i32 %7, void (%struct.buf*)* %8, %struct.buf** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ucred*, align 8
  %19 = alloca i32, align 4
  %20 = alloca void (%struct.buf*)*, align 8
  %21 = alloca %struct.buf**, align 8
  %22 = alloca %struct.buf*, align 8
  %23 = alloca %struct.thread*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.ucred* %6, %struct.ucred** %18, align 8
  store i32 %7, i32* %19, align 4
  store void (%struct.buf*)* %8, void (%struct.buf*)** %20, align 8
  store %struct.buf** %9, %struct.buf*** %21, align 8
  %27 = load i32, i32* @KTR_BUF, align 4
  %28 = load %struct.vnode*, %struct.vnode** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @CTR3(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.vnode* %28, i32 %29, i32 %30)
  %32 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %32, %struct.thread** %23, align 8
  %33 = load %struct.vnode*, %struct.vnode** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %19, align 4
  %37 = call i32 @getblkx(%struct.vnode* %33, i32 %34, i32 %35, i32 0, i32 0, i32 %36, %struct.buf** %22)
  store i32 %37, i32* %24, align 4
  %38 = load i32, i32* %24, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %10
  %41 = load %struct.buf**, %struct.buf*** %21, align 8
  store %struct.buf* null, %struct.buf** %41, align 8
  %42 = load i32, i32* %24, align 4
  store i32 %42, i32* %11, align 4
  br label %142

43:                                               ; preds = %10
  %44 = load i32, i32* @GB_NOSPARSE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %19, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %19, align 4
  %48 = load %struct.buf*, %struct.buf** %22, align 8
  %49 = load %struct.buf**, %struct.buf*** %21, align 8
  store %struct.buf* %48, %struct.buf** %49, align 8
  store i32 0, i32* %25, align 4
  %50 = load %struct.buf*, %struct.buf** %22, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @B_CACHE, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %119

56:                                               ; preds = %43
  %57 = load %struct.thread*, %struct.thread** %23, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @BIO_READ, align 4
  %63 = load %struct.buf*, %struct.buf** %22, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @B_INVAL, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.buf*, %struct.buf** %22, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* @GB_CKHASH, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %56
  %76 = load i32, i32* @B_CKHASH, align 4
  %77 = load %struct.buf*, %struct.buf** %22, align 8
  %78 = getelementptr inbounds %struct.buf, %struct.buf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load void (%struct.buf*)*, void (%struct.buf*)** %20, align 8
  %82 = load %struct.buf*, %struct.buf** %22, align 8
  %83 = getelementptr inbounds %struct.buf, %struct.buf* %82, i32 0, i32 1
  %84 = bitcast {}** %83 to void (%struct.buf*)**
  store void (%struct.buf*)* %81, void (%struct.buf*)** %84, align 8
  br label %85

85:                                               ; preds = %75, %56
  %86 = load i32, i32* @BIO_ERROR, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.buf*, %struct.buf** %22, align 8
  %89 = getelementptr inbounds %struct.buf, %struct.buf* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.buf*, %struct.buf** %22, align 8
  %93 = getelementptr inbounds %struct.buf, %struct.buf* %92, i32 0, i32 4
  %94 = load %struct.ucred*, %struct.ucred** %93, align 8
  %95 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %96 = icmp eq %struct.ucred* %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %85
  %98 = load %struct.ucred*, %struct.ucred** %18, align 8
  %99 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %100 = icmp ne %struct.ucred* %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.ucred*, %struct.ucred** %18, align 8
  %103 = call %struct.ucred* @crhold(%struct.ucred* %102)
  %104 = load %struct.buf*, %struct.buf** %22, align 8
  %105 = getelementptr inbounds %struct.buf, %struct.buf* %104, i32 0, i32 4
  store %struct.ucred* %103, %struct.ucred** %105, align 8
  br label %106

106:                                              ; preds = %101, %97, %85
  %107 = load %struct.buf*, %struct.buf** %22, align 8
  %108 = call i32 @vfs_busy_pages(%struct.buf* %107, i32 0)
  %109 = load %struct.buf*, %struct.buf** %22, align 8
  %110 = getelementptr inbounds %struct.buf, %struct.buf* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dbtob(i32 %111)
  %113 = load %struct.buf*, %struct.buf** %22, align 8
  %114 = getelementptr inbounds %struct.buf, %struct.buf* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.buf*, %struct.buf** %22, align 8
  %116 = call i32 @bstrategy(%struct.buf* %115)
  %117 = load i32, i32* %25, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %25, align 4
  br label %119

119:                                              ; preds = %106, %43
  %120 = load %struct.vnode*, %struct.vnode** %12, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.ucred*, %struct.ucred** %18, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load void (%struct.buf*)*, void (%struct.buf*)** %20, align 8
  %127 = call i32 @breada(%struct.vnode* %120, i32* %121, i32* %122, i32 %123, %struct.ucred* %124, i32 %125, void (%struct.buf*)* %126)
  store i32 0, i32* %26, align 4
  %128 = load i32, i32* %25, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %119
  %131 = load %struct.buf*, %struct.buf** %22, align 8
  %132 = call i32 @bufwait(%struct.buf* %131)
  store i32 %132, i32* %26, align 4
  %133 = load i32, i32* %26, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load %struct.buf*, %struct.buf** %22, align 8
  %137 = call i32 @brelse(%struct.buf* %136)
  %138 = load %struct.buf**, %struct.buf*** %21, align 8
  store %struct.buf* null, %struct.buf** %138, align 8
  br label %139

139:                                              ; preds = %135, %130
  br label %140

140:                                              ; preds = %139, %119
  %141 = load i32, i32* %26, align 4
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %140, %40
  %143 = load i32, i32* %11, align 4
  ret i32 %143
}

declare dso_local i32 @CTR3(i32, i8*, %struct.vnode*, i32, i32) #1

declare dso_local i32 @getblkx(%struct.vnode*, i32, i32, i32, i32, i32, %struct.buf**) #1

declare dso_local %struct.ucred* @crhold(%struct.ucred*) #1

declare dso_local i32 @vfs_busy_pages(%struct.buf*, i32) #1

declare dso_local i32 @dbtob(i32) #1

declare dso_local i32 @bstrategy(%struct.buf*) #1

declare dso_local i32 @breada(%struct.vnode*, i32*, i32*, i32, %struct.ucred*, i32, void (%struct.buf*)*) #1

declare dso_local i32 @bufwait(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
