; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_dserr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_dserr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfscldevinfo = type { i32 }
%struct.nfscllayout = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfsclds = type { i32 }
%struct.nfsclrecalllayout = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"DS being disabled, error=%d\0A\00", align 1
@M_NFSLAYRECALL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NFSLY_RECALL = common dso_local global i32 0, align 4
@NFSLAYOUTIOMODE_READ = common dso_local global i32 0, align 4
@NFSLAYOUTIOMODE_RW = common dso_local global i32 0, align 4
@NFSLAYOUTRETURN_FILE = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"nfscl_dserr recall iomode=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfscl_dserr(i32 %0, i32 %1, %struct.nfscldevinfo* %2, %struct.nfscllayout* %3, %struct.nfsclds* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfscldevinfo*, align 8
  %9 = alloca %struct.nfscllayout*, align 8
  %10 = alloca %struct.nfsclds*, align 8
  %11 = alloca %struct.nfsclrecalllayout*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.nfscldevinfo* %2, %struct.nfscldevinfo** %8, align 8
  store %struct.nfscllayout* %3, %struct.nfscllayout** %9, align 8
  store %struct.nfsclds* %4, %struct.nfsclds** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @M_NFSLAYRECALL, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call %struct.nfsclrecalllayout* @malloc(i32 4, i32 %15, i32 %16)
  store %struct.nfsclrecalllayout* %17, %struct.nfsclrecalllayout** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = call i32 (...) @NFSLOCKCLSTATE()
  %19 = load %struct.nfscllayout*, %struct.nfscllayout** %9, align 8
  %20 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NFSLY_RECALL, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %5
  %26 = load %struct.nfscllayout*, %struct.nfscllayout** %9, align 8
  %27 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %26, i32 0, i32 3
  %28 = call i32 @LIST_EMPTY(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @NFSLAYOUTIOMODE_READ, align 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.nfscllayout*, %struct.nfscllayout** %9, align 8
  %36 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %35, i32 0, i32 2
  %37 = call i32 @LIST_EMPTY(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @NFSLAYOUTIOMODE_RW, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @NFSLAYOUTRETURN_FILE, align 4
  %45 = load %struct.nfscllayout*, %struct.nfscllayout** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @UINT64_MAX, align 4
  %48 = load %struct.nfscllayout*, %struct.nfscllayout** %9, align 8
  %49 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %8, align 8
  %55 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfsclrecalllayout*, %struct.nfsclrecalllayout** %11, align 8
  %58 = call i32 @nfscl_layoutrecall(i32 %44, %struct.nfscllayout* %45, i32 %46, i32 0, i32 %47, i32 %51, i32 %52, i32 %53, i32 %56, %struct.nfsclrecalllayout* %57)
  %59 = call i32 (...) @NFSUNLOCKCLSTATE()
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %67

62:                                               ; preds = %5
  %63 = call i32 (...) @NFSUNLOCKCLSTATE()
  %64 = load %struct.nfsclrecalllayout*, %struct.nfsclrecalllayout** %11, align 8
  %65 = load i32, i32* @M_NFSLAYRECALL, align 4
  %66 = call i32 @free(%struct.nfsclrecalllayout* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %43
  %68 = load %struct.nfsclds*, %struct.nfsclds** %10, align 8
  %69 = call i32 @nfscl_cancelreqs(%struct.nfsclds* %68)
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local %struct.nfsclrecalllayout* @malloc(i32, i32, i32) #1

declare dso_local i32 @NFSLOCKCLSTATE(...) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @nfscl_layoutrecall(i32, %struct.nfscllayout*, i32, i32, i32, i32, i32, i32, i32, %struct.nfsclrecalllayout*) #1

declare dso_local i32 @NFSUNLOCKCLSTATE(...) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.nfsclrecalllayout*, i32) #1

declare dso_local i32 @nfscl_cancelreqs(%struct.nfsclds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
