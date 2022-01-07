; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_freenfsclds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_freenfsclds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsclds = type { %struct.TYPE_4__, i32, %struct.nfsclds*, %struct.nfsclds*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@M_SONAME = common dso_local global i32 0, align 4
@M_NFSSOCKREQ = common dso_local global i32 0, align 4
@NFSV4_CBSLOTS = common dso_local global i32 0, align 4
@M_NFSCLDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfscl_freenfsclds(%struct.nfsclds* %0) #0 {
  %2 = alloca %struct.nfsclds*, align 8
  %3 = alloca i32, align 4
  store %struct.nfsclds* %0, %struct.nfsclds** %2, align 8
  %4 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %5 = icmp eq %struct.nfsclds* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %78

7:                                                ; preds = %1
  %8 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %9 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %8, i32 0, i32 2
  %10 = load %struct.nfsclds*, %struct.nfsclds** %9, align 8
  %11 = icmp ne %struct.nfsclds* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %14 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %13, i32 0, i32 2
  %15 = load %struct.nfsclds*, %struct.nfsclds** %14, align 8
  %16 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @NFSFREECRED(i32 %17)
  %19 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %20 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %19, i32 0, i32 2
  %21 = load %struct.nfsclds*, %struct.nfsclds** %20, align 8
  %22 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %21, i32 0, i32 4
  %23 = call i32 @NFSFREEMUTEX(i32* %22)
  %24 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %25 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %24, i32 0, i32 2
  %26 = load %struct.nfsclds*, %struct.nfsclds** %25, align 8
  %27 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %26, i32 0, i32 3
  %28 = load %struct.nfsclds*, %struct.nfsclds** %27, align 8
  %29 = load i32, i32* @M_SONAME, align 4
  %30 = call i32 @free(%struct.nfsclds* %28, i32 %29)
  %31 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %32 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %31, i32 0, i32 2
  %33 = load %struct.nfsclds*, %struct.nfsclds** %32, align 8
  %34 = load i32, i32* @M_NFSSOCKREQ, align 4
  %35 = call i32 @free(%struct.nfsclds* %33, i32 %34)
  br label %36

36:                                               ; preds = %12, %7
  %37 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %38 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %37, i32 0, i32 1
  %39 = call i32 @NFSFREEMUTEX(i32* %38)
  %40 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %41 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i32 @NFSFREEMUTEX(i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %71, %36
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @NFSV4_CBSLOTS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %50 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %61 = getelementptr inbounds %struct.nfsclds, %struct.nfsclds* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @m_freem(i32* %68)
  br label %70

70:                                               ; preds = %59, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load %struct.nfsclds*, %struct.nfsclds** %2, align 8
  %76 = load i32, i32* @M_NFSCLDS, align 4
  %77 = call i32 @free(%struct.nfsclds* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %6
  ret void
}

declare dso_local i32 @NFSFREECRED(i32) #1

declare dso_local i32 @NFSFREEMUTEX(i32*) #1

declare dso_local i32 @free(%struct.nfsclds*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
