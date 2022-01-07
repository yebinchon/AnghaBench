; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_recalllayout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_recalllayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfslayout = type { i32 }
%struct.nfsclient = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"nfsrv_recalllayout\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"aft nfsrv_getclient=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"nfsrv_recalllayout: getclient err=%d\0A\00", align 1
@LCL_NFSV41 = common dso_local global i32 0, align 4
@NFSV4OP_CBLAYOUTRECALL = common dso_local global i32 0, align 4
@NFSLAY_RECALL = common dso_local global i32 0, align 4
@NFSLAY_RETURNED = common dso_local global i32 0, align 4
@NFSERR_NOMATCHLAYOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"nfsrv_recalllayout: err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"nfsrv_recalllayout: clp not NFSv4.1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, %struct.nfslayout*, i32, i32, i32*)* @nfsrv_recalllayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_recalllayout(i32 %0, i32* %1, i32* %2, %struct.nfslayout* %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nfslayout*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nfsclient*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.nfslayout* %3, %struct.nfslayout** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %15, align 8
  %21 = call i32 @nfsrv_getclient(i32 %19, i32 0, %struct.nfsclient** %16, i32* null, i32 0, i32 0, i32* null, i32* %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = call i32 (i32, i8*, ...) @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load i32, i32* %17, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %81

30:                                               ; preds = %7
  %31 = load %struct.nfsclient*, %struct.nfsclient** %16, align 8
  %32 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LCL_NFSV41, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %30
  %38 = load %struct.nfsclient*, %struct.nfsclient** %16, align 8
  %39 = load i32, i32* @NFSV4OP_CBLAYOUTRECALL, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @nfsrv_docallback(%struct.nfsclient* %38, i32 %39, i32* %40, i32 %41, i32* %42, i32* null, i32* null, i32 %43, i32* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %37
  %49 = load %struct.nfslayout*, %struct.nfslayout** %12, align 8
  %50 = icmp ne %struct.nfslayout* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = call i32 (...) @NFSDRECALLLOCK()
  %53 = load %struct.nfslayout*, %struct.nfslayout** %12, align 8
  %54 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NFSLAY_RECALL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i32, i32* @NFSLAY_RETURNED, align 4
  %61 = load %struct.nfslayout*, %struct.nfslayout** %12, align 8
  %62 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.nfslayout*, %struct.nfslayout** %12, align 8
  %66 = call i32 @wakeup(%struct.nfslayout* %65)
  br label %67

67:                                               ; preds = %59, %51
  %68 = call i32 (...) @NFSDRECALLUNLOCK()
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @NFSERR_NOMATCHLAYOUT, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %17, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %48, %37
  br label %79

77:                                               ; preds = %30
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %76
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %26
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @NFSD_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @nfsrv_getclient(i32, i32, %struct.nfsclient**, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nfsrv_docallback(%struct.nfsclient*, i32, i32*, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @NFSDRECALLLOCK(...) #1

declare dso_local i32 @wakeup(%struct.nfslayout*) #1

declare dso_local i32 @NFSDRECALLUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
