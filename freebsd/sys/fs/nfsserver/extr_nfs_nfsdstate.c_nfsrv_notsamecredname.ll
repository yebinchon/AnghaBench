; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_notsamecredname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_notsamecredname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nfsclient = type { i32, i64, i64, i32 }

@ND_GSS = common dso_local global i32 0, align 4
@LCL_GSS = common dso_local global i32 0, align 4
@LCL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsrv_descript*, %struct.nfsclient*)* @nfsrv_notsamecredname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_notsamecredname(%struct.nfsrv_descript* %0, %struct.nfsclient* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca %struct.nfsclient*, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store %struct.nfsclient* %1, %struct.nfsclient** %5, align 8
  %6 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %7 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ND_GSS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %2
  %13 = load %struct.nfsclient*, %struct.nfsclient** %5, align 8
  %14 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LCL_GSS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %89

20:                                               ; preds = %12
  %21 = load %struct.nfsclient*, %struct.nfsclient** %5, align 8
  %22 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @LCL_NAME, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %20
  %28 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %29 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nfsclient*, %struct.nfsclient** %5, align 8
  %32 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  %36 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %37 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nfsclient*, %struct.nfsclient** %5, align 8
  %40 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nfsclient*, %struct.nfsclient** %5, align 8
  %43 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @NFSBCMP(i32 %38, i32 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35, %27
  store i32 1, i32* %3, align 4
  br label %89

48:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %89

49:                                               ; preds = %20
  %50 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %51 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.nfsclient*, %struct.nfsclient** %5, align 8
  %56 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %89

60:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %89

61:                                               ; preds = %2
  %62 = load %struct.nfsclient*, %struct.nfsclient** %5, align 8
  %63 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LCL_GSS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %89

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %72 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nfsclient*, %struct.nfsclient** %5, align 8
  %77 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %70
  %81 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %82 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80, %70
  store i32 0, i32* %3, align 4
  br label %89

88:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %68, %60, %59, %48, %47, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @NFSBCMP(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
