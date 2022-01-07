; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_emptydir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_emptydir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i32 }
%struct.uio = type { i32, i32, %struct.TYPE_2__*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i32, %struct.dirent* }
%struct.dirent = type { i64, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"vfs_emptydir\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@DT_WHT = common dso_local global i64 0, align 8
@DT_DIR = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_emptydir(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.uio, align 8
  %4 = alloca %struct.iovec, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.vnode*, %struct.vnode** %2, align 8
  %11 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @M_TEMP, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = call %struct.dirent* @malloc(i32 24, i32 %12, i32 %13)
  store %struct.dirent* %14, %struct.dirent** %5, align 8
  %15 = load %struct.dirent*, %struct.dirent** %5, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i32 0, i32 1
  store %struct.dirent* %15, %struct.dirent** %16, align 8
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i32 0, i32 0
  store i32 24, i32* %17, align 8
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 6
  store %struct.iovec* %4, %struct.iovec** %18, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 1
  store i32 24, i32* %21, align 4
  %22 = load i32, i32* @UIO_SYSSPACE, align 4
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @UIO_READ, align 4
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 2
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %27, align 8
  br label %28

28:                                               ; preds = %136, %1
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %137

36:                                               ; preds = %34
  %37 = load %struct.vnode*, %struct.vnode** %2, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @VOP_READDIR(%struct.vnode* %37, %struct.uio* %3, i32 %40, i32* %9, i32* null, i32* null)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %137

45:                                               ; preds = %36
  %46 = load %struct.dirent*, %struct.dirent** %5, align 8
  %47 = bitcast %struct.dirent* %46 to i32*
  %48 = getelementptr inbounds i32, i32* %47, i64 24
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = bitcast i32* %53 to i8*
  %55 = bitcast i8* %54 to %struct.dirent*
  store %struct.dirent* %55, %struct.dirent** %7, align 8
  %56 = load %struct.dirent*, %struct.dirent** %5, align 8
  store %struct.dirent* %56, %struct.dirent** %6, align 8
  br label %57

57:                                               ; preds = %127, %45
  %58 = load %struct.dirent*, %struct.dirent** %6, align 8
  %59 = load %struct.dirent*, %struct.dirent** %7, align 8
  %60 = icmp ult %struct.dirent* %58, %59
  br i1 %60, label %61, label %136

61:                                               ; preds = %57
  %62 = load %struct.dirent*, %struct.dirent** %6, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DT_WHT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %127

68:                                               ; preds = %61
  %69 = load %struct.dirent*, %struct.dirent** %6, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %127

74:                                               ; preds = %68
  %75 = load %struct.dirent*, %struct.dirent** %6, align 8
  %76 = getelementptr inbounds %struct.dirent, %struct.dirent* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DT_DIR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.dirent*, %struct.dirent** %6, align 8
  %82 = getelementptr inbounds %struct.dirent, %struct.dirent* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DT_UNKNOWN, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %87, i32* %8, align 4
  br label %136

88:                                               ; preds = %80, %74
  %89 = load %struct.dirent*, %struct.dirent** %6, align 8
  %90 = getelementptr inbounds %struct.dirent, %struct.dirent* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 2
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %94, i32* %8, align 4
  br label %136

95:                                               ; preds = %88
  %96 = load %struct.dirent*, %struct.dirent** %6, align 8
  %97 = getelementptr inbounds %struct.dirent, %struct.dirent* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.dirent*, %struct.dirent** %6, align 8
  %102 = getelementptr inbounds %struct.dirent, %struct.dirent* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 46
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %109, i32* %8, align 4
  br label %136

110:                                              ; preds = %100, %95
  %111 = load %struct.dirent*, %struct.dirent** %6, align 8
  %112 = getelementptr inbounds %struct.dirent, %struct.dirent* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.dirent*, %struct.dirent** %6, align 8
  %117 = getelementptr inbounds %struct.dirent, %struct.dirent* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 46
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %124, i32* %8, align 4
  br label %136

125:                                              ; preds = %115, %110
  %126 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 1
  store i32 24, i32* %126, align 4
  br label %127

127:                                              ; preds = %125, %73, %67
  %128 = load %struct.dirent*, %struct.dirent** %6, align 8
  %129 = bitcast %struct.dirent* %128 to i32*
  %130 = load %struct.dirent*, %struct.dirent** %6, align 8
  %131 = call i32 @GENERIC_DIRSIZ(%struct.dirent* %130)
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = bitcast i32* %133 to i8*
  %135 = bitcast i8* %134 to %struct.dirent*
  store %struct.dirent* %135, %struct.dirent** %6, align 8
  br label %57

136:                                              ; preds = %123, %108, %93, %86, %57
  br label %28

137:                                              ; preds = %44, %34
  %138 = load %struct.dirent*, %struct.dirent** %5, align 8
  %139 = load i32, i32* @M_TEMP, align 4
  %140 = call i32 @free(%struct.dirent* %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.dirent* @malloc(i32, i32, i32) #1

declare dso_local i32 @VOP_READDIR(%struct.vnode*, %struct.uio*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GENERIC_DIRSIZ(%struct.dirent*) #1

declare dso_local i32 @free(%struct.dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
