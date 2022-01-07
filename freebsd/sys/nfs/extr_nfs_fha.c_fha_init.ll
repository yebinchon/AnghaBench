; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fha_params = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FHA_HASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fhalock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@FHA_DEF_ENABLE = common dso_local global i32 0, align 4
@FHA_DEF_READ = common dso_local global i32 0, align 4
@FHA_DEF_WRITE = common dso_local global i32 0, align 4
@FHA_DEF_BIN_SHIFT = common dso_local global i32 0, align 4
@FHA_DEF_MAX_NFSDS_PER_FH = common dso_local global i32 0, align 4
@FHA_DEF_MAX_REQS_PER_NFSD = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Enable NFS File Handle Affinity (FHA)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Enable NFS FHA read locality\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Enable NFS FHA write locality\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"bin_shift\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Maximum locality distance 2^(bin_shift) bytes\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"max_nfsds_per_fh\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"Maximum nfsd threads that should be working on requests for the same file handle\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"max_reqs_per_nfsd\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"Maximum requests that single nfsd thread should be working on at any time\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fhe_stats\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fha_init(%struct.fha_params* %0) #0 {
  %2 = alloca %struct.fha_params*, align 8
  %3 = alloca i32, align 4
  store %struct.fha_params* %0, %struct.fha_params** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @FHA_HASH_SIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %10 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load i32, i32* @FHA_DEF_ENABLE, align 4
  %23 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %24 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @FHA_DEF_READ, align 4
  %27 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %28 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @FHA_DEF_WRITE, align 4
  %31 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %32 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @FHA_DEF_BIN_SHIFT, align 4
  %35 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %36 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @FHA_DEF_MAX_NFSDS_PER_FH, align 4
  %39 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %40 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @FHA_DEF_MAX_REQS_PER_NFSD, align 4
  %43 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %44 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %47 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %46, i32 0, i32 2
  %48 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %49 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @SYSCTL_CHILDREN(i32 %50)
  %52 = load i32, i32* @OID_AUTO, align 4
  %53 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %54 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %55 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = call i32 @SYSCTL_ADD_UINT(i32* %47, i32 %51, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32* %56, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %59 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %58, i32 0, i32 2
  %60 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %61 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SYSCTL_CHILDREN(i32 %62)
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %66 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %67 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = call i32 @SYSCTL_ADD_UINT(i32* %59, i32 %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32* %68, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %70 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %71 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %70, i32 0, i32 2
  %72 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %73 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SYSCTL_CHILDREN(i32 %74)
  %76 = load i32, i32* @OID_AUTO, align 4
  %77 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %78 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %79 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = call i32 @SYSCTL_ADD_UINT(i32* %71, i32 %75, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32* %80, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %82 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %83 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %82, i32 0, i32 2
  %84 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %85 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SYSCTL_CHILDREN(i32 %86)
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %90 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %91 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = call i32 @SYSCTL_ADD_UINT(i32* %83, i32 %87, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %89, i32* %92, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %94 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %95 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %94, i32 0, i32 2
  %96 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %97 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @SYSCTL_CHILDREN(i32 %98)
  %100 = load i32, i32* @OID_AUTO, align 4
  %101 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %102 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %103 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = call i32 @SYSCTL_ADD_UINT(i32* %95, i32 %99, i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %101, i32* %104, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  %106 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %107 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %106, i32 0, i32 2
  %108 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %109 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @SYSCTL_CHILDREN(i32 %110)
  %112 = load i32, i32* @OID_AUTO, align 4
  %113 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %114 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %115 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = call i32 @SYSCTL_ADD_UINT(i32* %107, i32 %111, i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %113, i32* %116, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0))
  %118 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %119 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %118, i32 0, i32 2
  %120 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %121 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SYSCTL_CHILDREN(i32 %122)
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLTYPE_STRING, align 4
  %126 = load i32, i32* @CTLFLAG_RD, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.fha_params*, %struct.fha_params** %2, align 8
  %129 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @SYSCTL_ADD_OID(i32* %119, i32 %123, i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %127, i32 0, i32 0, i32 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_OID(i32*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
