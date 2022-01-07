; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_newnfs_iosize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_newnfs_iosize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFSMNT_NFSV4 = common dso_local global i32 0, align 4
@NFS_MAXBSIZE = common dso_local global i8* null, align 8
@NFSMNT_NFSV3 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@NFS_MAXDGRAMDATA = common dso_local global i32 0, align 4
@NFS_V2MAXDATA = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i8* null, align 8
@NFS_DIRBLKSIZ = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @newnfs_iosize(%struct.nfsmount* %0) #0 {
  %2 = alloca %struct.nfsmount*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %2, align 8
  %5 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %6 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @NFSMNT_NFSV4, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** @NFS_MAXBSIZE, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %4, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %16 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NFSMNT_NFSV3, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %23 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOCK_DGRAM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @NFS_MAXDGRAMDATA, align 4
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** @NFS_MAXBSIZE, align 8
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %27
  br label %35

33:                                               ; preds = %14
  %34 = load i32, i32* @NFS_V2MAXDATA, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %32
  br label %36

36:                                               ; preds = %35, %11
  %37 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %38 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %44 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %50 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %53 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8*, i8** @NFS_MAXBSIZE, align 8
  %58 = icmp ugt i8* %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i8*, i8** @NFS_MAXBSIZE, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %63 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %59, %51
  %65 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %66 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %72 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70, %64
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %78 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %81 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %84 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %89 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %92 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %79
  %94 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %95 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  %100 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %101 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %93
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %107 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %110 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8*, i8** @NFS_MAXBSIZE, align 8
  %115 = icmp ugt i8* %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load i8*, i8** @NFS_MAXBSIZE, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %120 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %116, %108
  %122 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %123 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %126 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 @imax(i32 %124, i8* %129)
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i8*, i8** @PAGE_SIZE, align 8
  %133 = call i32 @imax(i32 %131, i8* %132)
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* %3, align 4
  %135 = load i8*, i8** @NFS_DIRBLKSIZ, align 8
  %136 = call i32 @imax(i32 %134, i8* %135)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %139 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %138, i32 0, i32 5
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @imax(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
