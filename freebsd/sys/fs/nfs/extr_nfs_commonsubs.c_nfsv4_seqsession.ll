; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsv4_seqsession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsv4_seqsession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsslot = type { i64, i32, %struct.mbuf* }
%struct.mbuf = type { i32 }

@NFSERR_BADSLOT = common dso_local global i32 0, align 4
@NFSERR_DELAY = common dso_local global i32 0, align 4
@NFSERR_REPLYFROMCACHE = common dso_local global i32 0, align 4
@NFSERR_SEQMISORDERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsv4_seqsession(i64 %0, i64 %1, i64 %2, %struct.nfsslot* %3, %struct.mbuf** %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfsslot*, align 8
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.nfsslot* %3, %struct.nfsslot** %11, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %16 = icmp ne %struct.mbuf** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %18, align 8
  br label %19

19:                                               ; preds = %17, %6
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @NFSERR_BADSLOT, align 4
  store i32 %24, i32* %7, align 4
  br label %119

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %27, i64 %28
  %30 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %25
  %34 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %34, i64 %35
  %37 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @NFSERR_DELAY, align 4
  store i32 %41, i32* %14, align 4
  br label %75

42:                                               ; preds = %33
  %43 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %43, i64 %44
  %46 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %45, i32 0, i32 2
  %47 = load %struct.mbuf*, %struct.mbuf** %46, align 8
  %48 = icmp ne %struct.mbuf* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %51 = icmp ne %struct.mbuf** %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %53, i64 %54
  %56 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %55, i32 0, i32 2
  %57 = load %struct.mbuf*, %struct.mbuf** %56, align 8
  %58 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  store %struct.mbuf* %57, %struct.mbuf** %58, align 8
  %59 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %59, i64 %60
  %62 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %61, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %62, align 8
  br label %63

63:                                               ; preds = %52, %49
  %64 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %64, i64 %65
  %67 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* @NFSERR_REPLYFROMCACHE, align 4
  store i32 %68, i32* %14, align 4
  br label %74

69:                                               ; preds = %42
  %70 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %70, i64 %71
  %73 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %40
  br label %117

76:                                               ; preds = %25
  %77 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %77, i64 %78
  %80 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  %83 = load i64, i64* %8, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %76
  %86 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %86, i64 %87
  %89 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %88, i32 0, i32 2
  %90 = load %struct.mbuf*, %struct.mbuf** %89, align 8
  %91 = icmp ne %struct.mbuf* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %93, i64 %94
  %96 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %95, i32 0, i32 2
  %97 = load %struct.mbuf*, %struct.mbuf** %96, align 8
  %98 = call i32 @m_freem(%struct.mbuf* %97)
  br label %99

99:                                               ; preds = %92, %85
  %100 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %100, i64 %101
  %103 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %102, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %103, align 8
  %104 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %104, i64 %105
  %107 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %106, i32 0, i32 1
  store i32 1, i32* %107, align 8
  %108 = load %struct.nfsslot*, %struct.nfsslot** %11, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %108, i64 %109
  %111 = getelementptr inbounds %struct.nfsslot, %struct.nfsslot* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %111, align 8
  br label %116

114:                                              ; preds = %76
  %115 = load i32, i32* @NFSERR_SEQMISORDERED, align 4
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %114, %99
  br label %117

117:                                              ; preds = %116, %75
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %23
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
