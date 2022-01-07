; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.vnode = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf* }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.iovec = type { i8*, i32 }
%struct.uio = type { i32, i32, i32, i32, i32, %struct.iovec* }
%struct.nfsheur = type { i32, i32 }

@NFSPROC_WRITEDS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFSWRITE_FILESYNC = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"nfsvno_write\00", align 1
@NFSWRITE_UNSTABLE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_SEQSHIFT = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NFSV4OP_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_write(%struct.vnode* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.mbuf* %5, i8* %6, %struct.ucred* %7, %struct.thread* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ucred*, align 8
  %19 = alloca %struct.thread*, align 8
  %20 = alloca %struct.iovec*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.iovec*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.uio, align 8
  %27 = alloca %struct.uio*, align 8
  %28 = alloca %struct.nfsheur*, align 8
  store %struct.vnode* %0, %struct.vnode** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store %struct.mbuf* %5, %struct.mbuf** %16, align 8
  store i8* %6, i8** %17, align 8
  store %struct.ucred* %7, %struct.ucred** %18, align 8
  store %struct.thread* %8, %struct.thread** %19, align 8
  store %struct.uio* %26, %struct.uio** %27, align 8
  %29 = load %struct.vnode*, %struct.vnode** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.ucred*, %struct.ucred** %18, align 8
  %33 = load %struct.thread*, %struct.thread** %19, align 8
  %34 = load i32, i32* @NFSPROC_WRITEDS, align 4
  %35 = load i8*, i8** %17, align 8
  %36 = call i32 @nfsrv_proxyds(%struct.vnode* %29, i32 %30, i32 %31, %struct.ucred* %32, %struct.thread* %33, i32 %34, %struct.mbuf** %16, i8* %35, i32* null, i32* null, i32* null)
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %25, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %9
  %41 = load i32, i32* @NFSWRITE_FILESYNC, align 4
  %42 = load i32*, i32** %15, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %25, align 4
  store i32 %43, i32* %10, align 4
  br label %177

44:                                               ; preds = %9
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 16
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @M_TEMP, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = call %struct.iovec* @malloc(i32 %48, i32 %49, i32 %50)
  store %struct.iovec* %51, %struct.iovec** %20, align 8
  %52 = load %struct.iovec*, %struct.iovec** %20, align 8
  store %struct.iovec* %52, %struct.iovec** %23, align 8
  %53 = load %struct.uio*, %struct.uio** %27, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 5
  store %struct.iovec* %52, %struct.iovec** %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.uio*, %struct.uio** %27, align 8
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %59 = load i32, i32* @caddr_t, align 4
  %60 = call i8* @mtod(%struct.mbuf* %58, i32 %59)
  %61 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i8*, i8** %17, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %22, align 4
  br label %72

72:                                               ; preds = %111, %44
  %73 = load i32, i32* %22, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %112

75:                                               ; preds = %72
  %76 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %77 = icmp eq %struct.mbuf* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* %21, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %22, align 4
  %86 = call i32 @min(i32 %84, i32 %85)
  store i32 %86, i32* %21, align 4
  %87 = load i8*, i8** %17, align 8
  %88 = load %struct.iovec*, %struct.iovec** %20, align 8
  %89 = getelementptr inbounds %struct.iovec, %struct.iovec* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %21, align 4
  %91 = load %struct.iovec*, %struct.iovec** %20, align 8
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.iovec*, %struct.iovec** %20, align 8
  %94 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i32 1
  store %struct.iovec* %94, %struct.iovec** %20, align 8
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %22, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %22, align 4
  br label %98

98:                                               ; preds = %83, %80
  %99 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 1
  %101 = load %struct.mbuf*, %struct.mbuf** %100, align 8
  store %struct.mbuf* %101, %struct.mbuf** %16, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %103 = icmp ne %struct.mbuf* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %106 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %21, align 4
  %108 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %109 = load i32, i32* @caddr_t, align 4
  %110 = call i8* @mtod(%struct.mbuf* %108, i32 %109)
  store i8* %110, i8** %17, align 8
  br label %111

111:                                              ; preds = %104, %98
  br label %72

112:                                              ; preds = %72
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NFSWRITE_UNSTABLE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @IO_NODELOCKED, align 4
  store i32 %118, i32* %24, align 4
  br label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @IO_SYNC, align 4
  %121 = load i32, i32* @IO_NODELOCKED, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %24, align 4
  br label %123

123:                                              ; preds = %119, %117
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.uio*, %struct.uio** %27, align 8
  %126 = getelementptr inbounds %struct.uio, %struct.uio* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @UIO_WRITE, align 4
  %128 = load %struct.uio*, %struct.uio** %27, align 8
  %129 = getelementptr inbounds %struct.uio, %struct.uio* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @UIO_SYSSPACE, align 4
  %131 = load %struct.uio*, %struct.uio** %27, align 8
  %132 = getelementptr inbounds %struct.uio, %struct.uio* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load %struct.uio*, %struct.uio** %27, align 8
  %134 = load %struct.thread*, %struct.thread** %19, align 8
  %135 = call i32 @NFSUIOPROC(%struct.uio* %133, %struct.thread* %134)
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.uio*, %struct.uio** %27, align 8
  %138 = getelementptr inbounds %struct.uio, %struct.uio* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.uio*, %struct.uio** %27, align 8
  %140 = load %struct.vnode*, %struct.vnode** %11, align 8
  %141 = call %struct.nfsheur* @nfsrv_sequential_heuristic(%struct.uio* %139, %struct.vnode* %140)
  store %struct.nfsheur* %141, %struct.nfsheur** %28, align 8
  %142 = load %struct.nfsheur*, %struct.nfsheur** %28, align 8
  %143 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IO_SEQSHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* %24, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %24, align 4
  %149 = load %struct.uio*, %struct.uio** %27, align 8
  %150 = getelementptr inbounds %struct.uio, %struct.uio* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 8
  %153 = load i64, i64* @NFSV4OP_WRITE, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %151
  store i32 %156, i32* %154, align 4
  %157 = load %struct.vnode*, %struct.vnode** %11, align 8
  %158 = load %struct.uio*, %struct.uio** %27, align 8
  %159 = load i32, i32* %24, align 4
  %160 = load %struct.ucred*, %struct.ucred** %18, align 8
  %161 = call i32 @VOP_WRITE(%struct.vnode* %157, %struct.uio* %158, i32 %159, %struct.ucred* %160)
  store i32 %161, i32* %25, align 4
  %162 = load i32, i32* %25, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %123
  %165 = load %struct.uio*, %struct.uio** %27, align 8
  %166 = getelementptr inbounds %struct.uio, %struct.uio* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.nfsheur*, %struct.nfsheur** %28, align 8
  %169 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %164, %123
  %171 = load %struct.iovec*, %struct.iovec** %23, align 8
  %172 = load i32, i32* @M_TEMP, align 4
  %173 = call i32 @free(%struct.iovec* %171, i32 %172)
  %174 = load i32, i32* %25, align 4
  %175 = call i32 @NFSEXITCODE(i32 %174)
  %176 = load i32, i32* %25, align 4
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %170, %40
  %178 = load i32, i32* %10, align 4
  ret i32 %178
}

declare dso_local i32 @nfsrv_proxyds(%struct.vnode*, i32, i32, %struct.ucred*, %struct.thread*, i32, %struct.mbuf**, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.iovec* @malloc(i32, i32, i32) #1

declare dso_local i8* @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @NFSUIOPROC(%struct.uio*, %struct.thread*) #1

declare dso_local %struct.nfsheur* @nfsrv_sequential_heuristic(%struct.uio*, %struct.vnode*) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, %struct.ucred*) #1

declare dso_local i32 @free(%struct.iovec*, i32) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
