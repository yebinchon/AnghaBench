; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_get_cverf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_get_cverf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8** }

@nfs_get_cverf.cverf = internal global %struct.TYPE_3__ zeroinitializer, align 8
@nfs_get_cverf.cverf_initialized = internal global i32 0, align 4
@nfs_cverf_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i8** } ()* @nfs_get_cverf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i8** } @nfs_get_cverf() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = call i32 @mtx_lock(i32* @nfs_cverf_mtx)
  %3 = load i32, i32* @nfs_get_cverf.cverf_initialized, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call i8* (...) @arc4random()
  %7 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfs_get_cverf.cverf, i32 0, i32 1), align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  store i8* %6, i8** %8, align 8
  %9 = call i8* (...) @arc4random()
  %10 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfs_get_cverf.cverf, i32 0, i32 1), align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* %9, i8** %11, align 8
  store i32 1, i32* @nfs_get_cverf.cverf_initialized, align 4
  br label %15

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfs_get_cverf.cverf, i32 0, i32 0), align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfs_get_cverf.cverf, i32 0, i32 0), align 8
  br label %15

15:                                               ; preds = %12, %5
  %16 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_3__* @nfs_get_cverf.cverf to i8*), i64 16, i1 false)
  %17 = call i32 @mtx_unlock(i32* @nfs_cverf_mtx)
  %18 = bitcast %struct.TYPE_3__* %1 to { i32, i8** }*
  %19 = load { i32, i8** }, { i32, i8** }* %18, align 8
  ret { i32, i8** } %19
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i8* @arc4random(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
