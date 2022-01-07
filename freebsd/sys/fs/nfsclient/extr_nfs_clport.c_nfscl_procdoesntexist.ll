; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_procdoesntexist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_procdoesntexist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i64] }
%struct.proc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@NFSV4CL_LOCKNAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscl_procdoesntexist(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @NFSV4CL_LOCKNAMELEN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i64*, i64** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %25

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %9

25:                                               ; preds = %20, %9
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NFSV4CL_LOCKNAMELEN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %132

30:                                               ; preds = %25
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %3, align 8
  %33 = load i64, i64* %31, align 8
  %34 = bitcast %union.anon* %4 to [4 x i64]*
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %34, i64 0, i64 0
  store i64 %33, i64* %35, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %3, align 8
  %38 = load i64, i64* %36, align 8
  %39 = bitcast %union.anon* %4 to [4 x i64]*
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %39, i64 0, i64 1
  store i64 %38, i64* %40, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %3, align 8
  %43 = load i64, i64* %41, align 8
  %44 = bitcast %union.anon* %4 to [4 x i64]*
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %44, i64 0, i64 2
  store i64 %43, i64* %45, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %3, align 8
  %48 = load i64, i64* %46, align 8
  %49 = bitcast %union.anon* %4 to [4 x i64]*
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %49, i64 0, i64 3
  store i64 %48, i64* %50, align 8
  %51 = bitcast %union.anon* %4 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call %struct.proc* @pfind_any_locked(i64 %53)
  store %struct.proc* %54, %struct.proc** %5, align 8
  %55 = load %struct.proc*, %struct.proc** %5, align 8
  %56 = icmp eq %struct.proc* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %132

58:                                               ; preds = %30
  %59 = load %struct.proc*, %struct.proc** %5, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp eq %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.proc*, %struct.proc** %5, align 8
  %65 = call i32 @PROC_UNLOCK(%struct.proc* %64)
  store i32 0, i32* %2, align 4
  br label %132

66:                                               ; preds = %58
  %67 = load i64*, i64** %3, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %3, align 8
  %69 = load i64, i64* %67, align 8
  %70 = bitcast %union.anon* %4 to [4 x i64]*
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %70, i64 0, i64 0
  store i64 %69, i64* %71, align 8
  %72 = load i64*, i64** %3, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %3, align 8
  %74 = load i64, i64* %72, align 8
  %75 = bitcast %union.anon* %4 to [4 x i64]*
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %75, i64 0, i64 1
  store i64 %74, i64* %76, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %3, align 8
  %79 = load i64, i64* %77, align 8
  %80 = bitcast %union.anon* %4 to [4 x i64]*
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %80, i64 0, i64 2
  store i64 %79, i64* %81, align 8
  %82 = load i64*, i64** %3, align 8
  %83 = getelementptr inbounds i64, i64* %82, i32 1
  store i64* %83, i64** %3, align 8
  %84 = load i64, i64* %82, align 8
  %85 = bitcast %union.anon* %4 to [4 x i64]*
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %85, i64 0, i64 3
  store i64 %84, i64* %86, align 8
  %87 = bitcast %union.anon* %4 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.proc*, %struct.proc** %5, align 8
  %90 = getelementptr inbounds %struct.proc, %struct.proc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %88, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %128

97:                                               ; preds = %66
  %98 = load i64*, i64** %3, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %3, align 8
  %100 = load i64, i64* %98, align 8
  %101 = bitcast %union.anon* %4 to [4 x i64]*
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %101, i64 0, i64 0
  store i64 %100, i64* %102, align 8
  %103 = load i64*, i64** %3, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %3, align 8
  %105 = load i64, i64* %103, align 8
  %106 = bitcast %union.anon* %4 to [4 x i64]*
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %106, i64 0, i64 1
  store i64 %105, i64* %107, align 8
  %108 = load i64*, i64** %3, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %3, align 8
  %110 = load i64, i64* %108, align 8
  %111 = bitcast %union.anon* %4 to [4 x i64]*
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %111, i64 0, i64 2
  store i64 %110, i64* %112, align 8
  %113 = load i64*, i64** %3, align 8
  %114 = load i64, i64* %113, align 8
  %115 = bitcast %union.anon* %4 to [4 x i64]*
  %116 = getelementptr inbounds [4 x i64], [4 x i64]* %115, i64 0, i64 3
  store i64 %114, i64* %116, align 8
  %117 = bitcast %union.anon* %4 to i64*
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.proc*, %struct.proc** %5, align 8
  %120 = getelementptr inbounds %struct.proc, %struct.proc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %118, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %97
  store i32 1, i32* %8, align 4
  br label %127

127:                                              ; preds = %126, %97
  br label %128

128:                                              ; preds = %127, %96
  %129 = load %struct.proc*, %struct.proc** %5, align 8
  %130 = call i32 @PROC_UNLOCK(%struct.proc* %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %63, %57, %29
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.proc* @pfind_any_locked(i64) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
