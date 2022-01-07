; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf* }
%struct.iovec = type { i32, i32 }
%struct.uio = type { i32, i32, i32*, i32, i32, i64, %struct.iovec* }

@NFS_MAXPATHLEN = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_readlink(%struct.vnode* %0, %struct.ucred* %1, %struct.thread* %2, %struct.mbuf** %3, %struct.mbuf** %4, i32* %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.mbuf**, align 8
  %11 = alloca %struct.mbuf**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.iovec*, align 8
  %16 = alloca %struct.uio, align 8
  %17 = alloca %struct.uio*, align 8
  %18 = alloca %struct.mbuf*, align 8
  %19 = alloca %struct.mbuf*, align 8
  %20 = alloca %struct.mbuf*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.ucred* %1, %struct.ucred** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %10, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %11, align 8
  store i32* %5, i32** %12, align 8
  %25 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %26 = load i32, i32* @MLEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @MLEN, align 4
  %30 = sdiv i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %13, align 8
  %33 = alloca %struct.iovec, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  store %struct.iovec* %33, %struct.iovec** %15, align 8
  store %struct.uio* %16, %struct.uio** %17, align 8
  store %struct.mbuf* null, %struct.mbuf** %19, align 8
  store %struct.mbuf* null, %struct.mbuf** %20, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %34

34:                                               ; preds = %78, %6
  %35 = load i32, i32* %22, align 4
  %36 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %40 = call i32 @NFSMGET(%struct.mbuf* %39)
  %41 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = call i32 @MCLGET(%struct.mbuf* %41, i32 %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %45 = call i32 @M_SIZE(%struct.mbuf* %44)
  %46 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %22, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %51, %struct.mbuf** %19, align 8
  store %struct.mbuf* %51, %struct.mbuf** %20, align 8
  br label %57

52:                                               ; preds = %38
  %53 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 1
  store %struct.mbuf* %53, %struct.mbuf** %55, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %56, %struct.mbuf** %19, align 8
  br label %57

57:                                               ; preds = %52, %50
  %58 = load i32, i32* %22, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  %63 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %67 = load i32, i32* %22, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @NFS_MAXPATHLEN, align 4
  store i32 %71, i32* %22, align 4
  br label %78

72:                                               ; preds = %57
  %73 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %22, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %22, align 4
  br label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %80 = load i32, i32* @caddr_t, align 4
  %81 = call i32 @mtod(%struct.mbuf* %79, i32 %80)
  %82 = load %struct.iovec*, %struct.iovec** %15, align 8
  %83 = getelementptr inbounds %struct.iovec, %struct.iovec* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.iovec*, %struct.iovec** %15, align 8
  %88 = getelementptr inbounds %struct.iovec, %struct.iovec* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  %91 = load %struct.iovec*, %struct.iovec** %15, align 8
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %91, i32 1
  store %struct.iovec* %92, %struct.iovec** %15, align 8
  br label %34

93:                                               ; preds = %34
  %94 = load %struct.uio*, %struct.uio** %17, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 6
  store %struct.iovec* %33, %struct.iovec** %95, align 8
  %96 = load i32, i32* %21, align 4
  %97 = load %struct.uio*, %struct.uio** %17, align 8
  %98 = getelementptr inbounds %struct.uio, %struct.uio* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.uio*, %struct.uio** %17, align 8
  %100 = getelementptr inbounds %struct.uio, %struct.uio* %99, i32 0, i32 5
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* %22, align 4
  %102 = load %struct.uio*, %struct.uio** %17, align 8
  %103 = getelementptr inbounds %struct.uio, %struct.uio* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @UIO_READ, align 4
  %105 = load %struct.uio*, %struct.uio** %17, align 8
  %106 = getelementptr inbounds %struct.uio, %struct.uio* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @UIO_SYSSPACE, align 4
  %108 = load %struct.uio*, %struct.uio** %17, align 8
  %109 = getelementptr inbounds %struct.uio, %struct.uio* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load %struct.uio*, %struct.uio** %17, align 8
  %111 = getelementptr inbounds %struct.uio, %struct.uio* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  %112 = load %struct.vnode*, %struct.vnode** %7, align 8
  %113 = load %struct.uio*, %struct.uio** %17, align 8
  %114 = load %struct.ucred*, %struct.ucred** %8, align 8
  %115 = call i32 @VOP_READLINK(%struct.vnode* %112, %struct.uio* %113, %struct.ucred* %114)
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %93
  %119 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %120 = call i32 @m_freem(%struct.mbuf* %119)
  %121 = load i32*, i32** %12, align 8
  store i32 0, i32* %121, align 4
  br label %150

122:                                              ; preds = %93
  %123 = load %struct.uio*, %struct.uio** %17, align 8
  %124 = getelementptr inbounds %struct.uio, %struct.uio* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %122
  %128 = load %struct.uio*, %struct.uio** %17, align 8
  %129 = getelementptr inbounds %struct.uio, %struct.uio* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %22, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %22, align 4
  %134 = call i32 @NFSM_RNDUP(i32 %133)
  store i32 %134, i32* %23, align 4
  %135 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %136 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %137 = load i32, i32* %23, align 4
  %138 = sub nsw i32 %136, %137
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %22, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @nfsrv_adj(%struct.mbuf* %135, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %127, %122
  %144 = load i32, i32* %22, align 4
  %145 = load i32*, i32** %12, align 8
  store i32 %144, i32* %145, align 4
  %146 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %147 = load %struct.mbuf**, %struct.mbuf*** %10, align 8
  store %struct.mbuf* %146, %struct.mbuf** %147, align 8
  %148 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %149 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  store %struct.mbuf* %148, %struct.mbuf** %149, align 8
  br label %150

150:                                              ; preds = %143, %118
  %151 = load i32, i32* %24, align 4
  %152 = call i32 @NFSEXITCODE(i32 %151)
  %153 = load i32, i32* %24, align 4
  %154 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %154)
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NFSMGET(%struct.mbuf*) #2

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #2

declare dso_local i32 @M_SIZE(%struct.mbuf*) #2

declare dso_local i32 @mtod(%struct.mbuf*, i32) #2

declare dso_local i32 @VOP_READLINK(%struct.vnode*, %struct.uio*, %struct.ucred*) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @NFSM_RNDUP(i32) #2

declare dso_local i32 @nfsrv_adj(%struct.mbuf*, i32, i32) #2

declare dso_local i32 @NFSEXITCODE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
