; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_readdir_processdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_readdir_processdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32 }
%struct.fuse_iov = type { i32, i64 }
%struct.dirent = type { i32, i8*, i32, i32 }
%struct.fuse_dirent = type { i8*, i64, i32, i32 }
%struct.pseudo_dirent = type { i32 }

@FUSE_NAME_OFFSET = common dso_local global i64 0, align 8
@MAXNAMLEN = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_readdir_processdata(%struct.uio* %0, i64 %1, i32* %2, i64 %3, i8* %4, i64 %5, %struct.fuse_iov* %6, i32* %7, i64** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.uio*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fuse_iov*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.dirent*, align 8
  %24 = alloca %struct.fuse_dirent*, align 8
  %25 = alloca i64*, align 8
  store %struct.uio* %0, %struct.uio** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.fuse_iov* %6, %struct.fuse_iov** %17, align 8
  store i32* %7, i32** %18, align 8
  store i64** %8, i64*** %19, align 8
  store i32 0, i32* %20, align 4
  %26 = load i64**, i64*** %19, align 8
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %25, align 8
  %28 = load i64, i64* %16, align 8
  %29 = load i64, i64* @FUSE_NAME_OFFSET, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %180

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %164, %32
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* @FUSE_NAME_OFFSET, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %20, align 4
  br label %176

38:                                               ; preds = %33
  %39 = load i8*, i8** %15, align 8
  %40 = bitcast i8* %39 to %struct.fuse_dirent*
  store %struct.fuse_dirent* %40, %struct.fuse_dirent** %24, align 8
  %41 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %42 = call i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent* %41)
  store i64 %42, i64* %22, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %22, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 -1, i32* %20, align 4
  br label %176

47:                                               ; preds = %38
  %48 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %49 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %54 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** @MAXNAMLEN, align 8
  %57 = icmp ugt i8* %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52, %47
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %20, align 4
  br label %176

60:                                               ; preds = %52
  %61 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %62 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %61, i32 0, i32 0
  %63 = bitcast i8** %62 to %struct.pseudo_dirent*
  %64 = call i32 @GENERIC_DIRSIZ(%struct.pseudo_dirent* %63)
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = load %struct.uio*, %struct.uio** %11, align 8
  %67 = call i32 @uio_resid(%struct.uio* %66)
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 -1, i32* %20, align 4
  br label %176

70:                                               ; preds = %60
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %155

74:                                               ; preds = %70
  %75 = load %struct.fuse_iov*, %struct.fuse_iov** %17, align 8
  %76 = load i32, i32* %21, align 4
  %77 = call i32 @fiov_adjust(%struct.fuse_iov* %75, i32 %76)
  %78 = load %struct.fuse_iov*, %struct.fuse_iov** %17, align 8
  %79 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @bzero(i64 %80, i32 %81)
  %83 = load %struct.fuse_iov*, %struct.fuse_iov** %17, align 8
  %84 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.dirent*
  store %struct.dirent* %86, %struct.dirent** %23, align 8
  %87 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %88 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dirent*, %struct.dirent** %23, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %21, align 4
  %93 = load %struct.dirent*, %struct.dirent** %23, align 8
  %94 = getelementptr inbounds %struct.dirent, %struct.dirent* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %96 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.dirent*, %struct.dirent** %23, align 8
  %99 = getelementptr inbounds %struct.dirent, %struct.dirent* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %101 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.dirent*, %struct.dirent** %23, align 8
  %104 = getelementptr inbounds %struct.dirent, %struct.dirent* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.fuse_iov*, %struct.fuse_iov** %17, align 8
  %106 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = getelementptr inbounds i8, i8* %108, i64 24
  %110 = load i8*, i8** @MAXNAMLEN, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sub nsw i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = load i8*, i8** %15, align 8
  %117 = load i64, i64* @FUSE_NAME_OFFSET, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %120 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @memcpy(i32 %115, i8* %118, i8* %121)
  %123 = load %struct.dirent*, %struct.dirent** %23, align 8
  %124 = call i32 @dirent_terminate(%struct.dirent* %123)
  %125 = load %struct.fuse_iov*, %struct.fuse_iov** %17, align 8
  %126 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.fuse_iov*, %struct.fuse_iov** %17, align 8
  %129 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.uio*, %struct.uio** %11, align 8
  %132 = call i32 @uiomove(i64 %127, i32 %130, %struct.uio* %131)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %74
  br label %176

136:                                              ; preds = %74
  %137 = load i64*, i64** %25, align 8
  %138 = icmp ne i64* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 -1, i32* %20, align 4
  br label %176

144:                                              ; preds = %139
  %145 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %146 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %25, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i64*, i64** %25, align 8
  %150 = getelementptr inbounds i64, i64* %149, i32 1
  store i64* %150, i64** %25, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %144, %136
  br label %164

155:                                              ; preds = %70
  %156 = load i64, i64* %12, align 8
  %157 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %158 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32*, i32** %13, align 8
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %161, %155
  br label %164

164:                                              ; preds = %163, %154
  %165 = load i8*, i8** %15, align 8
  %166 = load i64, i64* %22, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %15, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load i64, i64* %16, align 8
  %170 = sub i64 %169, %168
  store i64 %170, i64* %16, align 8
  %171 = load %struct.uio*, %struct.uio** %11, align 8
  %172 = load %struct.fuse_dirent*, %struct.fuse_dirent** %24, align 8
  %173 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @uio_setoffset(%struct.uio* %171, i64 %174)
  br label %33

176:                                              ; preds = %143, %135, %69, %58, %46, %37
  %177 = load i64*, i64** %25, align 8
  %178 = load i64**, i64*** %19, align 8
  store i64* %177, i64** %178, align 8
  %179 = load i32, i32* %20, align 4
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %176, %31
  %181 = load i32, i32* %10, align 4
  ret i32 %181
}

declare dso_local i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent*) #1

declare dso_local i32 @GENERIC_DIRSIZ(%struct.pseudo_dirent*) #1

declare dso_local i32 @uio_resid(%struct.uio*) #1

declare dso_local i32 @fiov_adjust(%struct.fuse_iov*, i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i8*) #1

declare dso_local i32 @dirent_terminate(%struct.dirent*) #1

declare dso_local i32 @uiomove(i64, i32, %struct.uio*) #1

declare dso_local i32 @uio_setoffset(%struct.uio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
