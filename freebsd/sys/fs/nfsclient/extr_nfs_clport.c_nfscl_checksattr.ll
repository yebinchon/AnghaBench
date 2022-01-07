; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_checksattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_checksattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vattr = type { i64, i64, i64, i64, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nfsvattr = type { i64, i64, i64, i64 }

@VNOVAL = common dso_local global i64 0, align 8
@VA_UTIMES_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscl_checksattr(%struct.vattr* %0, %struct.nfsvattr* %1) #0 {
  %3 = alloca %struct.vattr*, align 8
  %4 = alloca %struct.nfsvattr*, align 8
  store %struct.vattr* %0, %struct.vattr** %3, align 8
  store %struct.nfsvattr* %1, %struct.nfsvattr** %4, align 8
  %5 = load %struct.vattr*, %struct.vattr** %3, align 8
  %6 = getelementptr inbounds %struct.vattr, %struct.vattr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VNOVAL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.vattr*, %struct.vattr** %3, align 8
  %12 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.nfsvattr*, %struct.nfsvattr** %4, align 8
  %15 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i64, i64* @VNOVAL, align 8
  %20 = load %struct.vattr*, %struct.vattr** %3, align 8
  %21 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %10
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.vattr*, %struct.vattr** %3, align 8
  %25 = getelementptr inbounds %struct.vattr, %struct.vattr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VNOVAL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.vattr*, %struct.vattr** %3, align 8
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nfsvattr*, %struct.nfsvattr** %4, align 8
  %34 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i64, i64* @VNOVAL, align 8
  %39 = load %struct.vattr*, %struct.vattr** %3, align 8
  %40 = getelementptr inbounds %struct.vattr, %struct.vattr* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.vattr*, %struct.vattr** %3, align 8
  %44 = getelementptr inbounds %struct.vattr, %struct.vattr* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VNOVAL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.vattr*, %struct.vattr** %3, align 8
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nfsvattr*, %struct.nfsvattr** %4, align 8
  %53 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i64, i64* @VNOVAL, align 8
  %58 = load %struct.vattr*, %struct.vattr** %3, align 8
  %59 = getelementptr inbounds %struct.vattr, %struct.vattr* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %48
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.vattr*, %struct.vattr** %3, align 8
  %63 = getelementptr inbounds %struct.vattr, %struct.vattr* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VNOVAL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.vattr*, %struct.vattr** %3, align 8
  %69 = getelementptr inbounds %struct.vattr, %struct.vattr* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.nfsvattr*, %struct.nfsvattr** %4, align 8
  %72 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i64, i64* @VNOVAL, align 8
  %77 = load %struct.vattr*, %struct.vattr** %3, align 8
  %78 = getelementptr inbounds %struct.vattr, %struct.vattr* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %67
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.vattr*, %struct.vattr** %3, align 8
  %82 = getelementptr inbounds %struct.vattr, %struct.vattr* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VNOVAL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load %struct.vattr*, %struct.vattr** %3, align 8
  %89 = getelementptr inbounds %struct.vattr, %struct.vattr* %88, i32 0, i32 4
  %90 = call i32 @vfs_timestamp(%struct.TYPE_2__* %89)
  %91 = load i32, i32* @VA_UTIMES_NULL, align 4
  %92 = load %struct.vattr*, %struct.vattr** %3, align 8
  %93 = getelementptr inbounds %struct.vattr, %struct.vattr* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %87, %80
  %97 = load %struct.vattr*, %struct.vattr** %3, align 8
  %98 = getelementptr inbounds %struct.vattr, %struct.vattr* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @VNOVAL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.vattr*, %struct.vattr** %3, align 8
  %105 = getelementptr inbounds %struct.vattr, %struct.vattr* %104, i32 0, i32 5
  %106 = load %struct.vattr*, %struct.vattr** %3, align 8
  %107 = getelementptr inbounds %struct.vattr, %struct.vattr* %106, i32 0, i32 4
  %108 = bitcast %struct.TYPE_2__* %105 to i8*
  %109 = bitcast %struct.TYPE_2__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  br label %110

110:                                              ; preds = %103, %96
  ret i32 1
}

declare dso_local i32 @vfs_timestamp(%struct.TYPE_2__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
