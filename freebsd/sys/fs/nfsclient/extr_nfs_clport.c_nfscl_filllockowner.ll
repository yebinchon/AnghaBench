; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_filllockowner.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_filllockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }
%struct.proc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NFSV4CL_LOCKNAMELEN = common dso_local global i64 0, align 8
@F_POSIX = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"nfscl_filllockowner: not F_POSIX or F_FLOCK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfscl_filllockowner(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca %struct.proc*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* @NFSV4CL_LOCKNAMELEN, align 8
  %14 = call i32 @bzero(i32* %12, i64 %13)
  br label %119

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @F_POSIX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.proc*
  store %struct.proc* %22, %struct.proc** %8, align 8
  %23 = load %struct.proc*, %struct.proc** %8, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %union.anon* %7 to i32*
  store i32 %25, i32* %26, align 4
  %27 = bitcast %union.anon* %7 to [4 x i32]*
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %32 = bitcast %union.anon* %7 to [4 x i32]*
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %37 = bitcast %union.anon* %7 to [4 x i32]*
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %42 = bitcast %union.anon* %7 to [4 x i32]*
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %47 = load %struct.proc*, %struct.proc** %8, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.anon* %7 to i32*
  store i32 %52, i32* %53, align 4
  %54 = bitcast %union.anon* %7 to [4 x i32]*
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  %59 = bitcast %union.anon* %7 to [4 x i32]*
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %64 = bitcast %union.anon* %7 to [4 x i32]*
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i64 0, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %69 = bitcast %union.anon* %7 to [4 x i32]*
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  %74 = load %struct.proc*, %struct.proc** %8, align 8
  %75 = getelementptr inbounds %struct.proc, %struct.proc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %union.anon* %7 to i32*
  store i32 %79, i32* %80, align 4
  %81 = bitcast %union.anon* %7 to [4 x i32]*
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %81, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %86 = bitcast %union.anon* %7 to [4 x i32]*
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %86, i64 0, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  %91 = bitcast %union.anon* %7 to [4 x i32]*
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %91, i64 0, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %96 = bitcast %union.anon* %7 to [4 x i32]*
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %96, i64 0, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  br label %119

100:                                              ; preds = %15
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @F_FLOCK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @bcopy(i8** %4, i32* %106, i32 8)
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  %110 = load i64, i64* @NFSV4CL_LOCKNAMELEN, align 8
  %111 = sub i64 %110, 8
  %112 = call i32 @bzero(i32* %109, i64 %111)
  br label %118

113:                                              ; preds = %100
  %114 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* @NFSV4CL_LOCKNAMELEN, align 8
  %117 = call i32 @bzero(i32* %115, i64 %116)
  br label %118

118:                                              ; preds = %113, %105
  br label %119

119:                                              ; preds = %11, %118, %20
  ret void
}

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i32 @bcopy(i8**, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
