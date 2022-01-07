; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_getdirentries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_getdirentries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, i32 }
%struct.vnode = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vnode* }
%struct.file = type { i32, %struct.vnode*, %struct.vnode*, i32 }
%struct.uio = type { i64, i32, i32, i64, %struct.thread*, i32, %struct.iovec* }
%struct.iovec = type { i8*, i64 }

@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@cap_read_rights = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@MNT_UNION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_getdirentries(%struct.thread* %0, i32 %1, i8* %2, i64 %3, i64* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.file*, align 8
  %18 = alloca %struct.uio, align 8
  %19 = alloca %struct.iovec, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.vnode*, align 8
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @AUDIT_ARG_FD(i32 %25)
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @IOSIZE_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %8, align 4
  br label %168

32:                                               ; preds = %7
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load %struct.thread*, %struct.thread** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @getvnode(%struct.thread* %35, i32 %36, i32* @cap_read_rights, %struct.file** %17)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %21, align 4
  store i32 %41, i32* %8, align 4
  br label %168

42:                                               ; preds = %32
  %43 = load %struct.file*, %struct.file** %17, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FREAD, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.file*, %struct.file** %17, align 8
  %51 = load %struct.thread*, %struct.thread** %9, align 8
  %52 = call i32 @fdrop(%struct.file* %50, %struct.thread* %51)
  %53 = load i32, i32* @EBADF, align 4
  store i32 %53, i32* %8, align 4
  br label %168

54:                                               ; preds = %42
  %55 = load %struct.file*, %struct.file** %17, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 2
  %57 = load %struct.vnode*, %struct.vnode** %56, align 8
  store %struct.vnode* %57, %struct.vnode** %16, align 8
  %58 = load %struct.file*, %struct.file** %17, align 8
  %59 = call i64 @foffset_lock(%struct.file* %58, i32 0)
  store i64 %59, i64* %23, align 8
  br label %60

60:                                               ; preds = %123, %54
  %61 = load %struct.vnode*, %struct.vnode** %16, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VDIR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %21, align 4
  br label %160

68:                                               ; preds = %60
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 6
  store %struct.iovec* %19, %struct.iovec** %73, align 8
  %74 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @UIO_READ, align 4
  %76 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 5
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* %15, align 4
  %78 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = load %struct.thread*, %struct.thread** %9, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 4
  store %struct.thread* %79, %struct.thread** %80, align 8
  %81 = load %struct.vnode*, %struct.vnode** %16, align 8
  %82 = load i32, i32* @LK_SHARED, align 4
  %83 = load i32, i32* @LK_RETRY, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @vn_lock(%struct.vnode* %81, i32 %84)
  %86 = load %struct.vnode*, %struct.vnode** %16, align 8
  %87 = call i32 @AUDIT_ARG_VNODE1(%struct.vnode* %86)
  %88 = load i64, i64* %23, align 8
  %89 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 3
  store i64 %88, i64* %89, align 8
  store i64 %88, i64* %20, align 8
  %90 = load %struct.vnode*, %struct.vnode** %16, align 8
  %91 = load %struct.file*, %struct.file** %17, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @VOP_READDIR(%struct.vnode* %90, %struct.uio* %18, i32 %93, i32* %22, i32* null, i32* null)
  store i32 %94, i32* %21, align 4
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %23, align 8
  %97 = load i32, i32* %21, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %68
  %100 = load %struct.vnode*, %struct.vnode** %16, align 8
  %101 = call i32 @VOP_UNLOCK(%struct.vnode* %100, i32 0)
  br label %160

102:                                              ; preds = %68
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %102
  %108 = load %struct.vnode*, %struct.vnode** %16, align 8
  %109 = getelementptr inbounds %struct.vnode, %struct.vnode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @VV_ROOT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %107
  %115 = load %struct.vnode*, %struct.vnode** %16, align 8
  %116 = getelementptr inbounds %struct.vnode, %struct.vnode* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MNT_UNION, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %114
  %124 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %124, %struct.vnode** %24, align 8
  %125 = load %struct.vnode*, %struct.vnode** %16, align 8
  %126 = getelementptr inbounds %struct.vnode, %struct.vnode* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load %struct.vnode*, %struct.vnode** %128, align 8
  store %struct.vnode* %129, %struct.vnode** %16, align 8
  %130 = load %struct.vnode*, %struct.vnode** %16, align 8
  %131 = call i32 @VREF(%struct.vnode* %130)
  %132 = load %struct.vnode*, %struct.vnode** %16, align 8
  %133 = load %struct.file*, %struct.file** %17, align 8
  %134 = getelementptr inbounds %struct.file, %struct.file* %133, i32 0, i32 2
  store %struct.vnode* %132, %struct.vnode** %134, align 8
  %135 = load %struct.vnode*, %struct.vnode** %16, align 8
  %136 = load %struct.file*, %struct.file** %17, align 8
  %137 = getelementptr inbounds %struct.file, %struct.file* %136, i32 0, i32 1
  store %struct.vnode* %135, %struct.vnode** %137, align 8
  store i64 0, i64* %23, align 8
  %138 = load %struct.vnode*, %struct.vnode** %24, align 8
  %139 = call i32 @vput(%struct.vnode* %138)
  br label %60

140:                                              ; preds = %114, %107, %102
  %141 = load %struct.vnode*, %struct.vnode** %16, align 8
  %142 = call i32 @VOP_UNLOCK(%struct.vnode* %141, i32 0)
  %143 = load i64, i64* %20, align 8
  %144 = load i64*, i64** %13, align 8
  store i64 %143, i64* %144, align 8
  %145 = load i64*, i64** %14, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %14, align 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %140
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %152, %154
  %156 = load %struct.thread*, %struct.thread** %9, align 8
  %157 = getelementptr inbounds %struct.thread, %struct.thread* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  store i64 %155, i64* %159, align 8
  br label %160

160:                                              ; preds = %151, %99, %66
  %161 = load %struct.file*, %struct.file** %17, align 8
  %162 = load i64, i64* %23, align 8
  %163 = call i32 @foffset_unlock(%struct.file* %161, i64 %162, i32 0)
  %164 = load %struct.file*, %struct.file** %17, align 8
  %165 = load %struct.thread*, %struct.thread** %9, align 8
  %166 = call i32 @fdrop(%struct.file* %164, %struct.thread* %165)
  %167 = load i32, i32* %21, align 4
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %160, %49, %40, %30
  %169 = load i32, i32* %8, align 4
  ret i32 %169
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getvnode(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i64 @foffset_lock(%struct.file*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @AUDIT_ARG_VNODE1(%struct.vnode*) #1

declare dso_local i32 @VOP_READDIR(%struct.vnode*, %struct.uio*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @foffset_unlock(%struct.file*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
