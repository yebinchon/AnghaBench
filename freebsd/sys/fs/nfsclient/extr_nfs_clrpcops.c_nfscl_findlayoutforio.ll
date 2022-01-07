; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_findlayoutforio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_findlayoutforio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfscllayout = type { i32, i32 }
%struct.nfsclflayout = type { i64, i64 }

@NFSV4OPEN_ACCESSREAD = common dso_local global i64 0, align 8
@nfsfl_list = common dso_local global i32 0, align 4
@NFSV4OPEN_ACCESSWRITE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscl_findlayoutforio(%struct.nfscllayout* %0, i64 %1, i64 %2, %struct.nfsclflayout** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfscllayout*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfsclflayout**, align 8
  %10 = alloca %struct.nfsclflayout*, align 8
  %11 = alloca %struct.nfsclflayout*, align 8
  %12 = alloca %struct.nfsclflayout*, align 8
  %13 = alloca i64, align 8
  store %struct.nfscllayout* %0, %struct.nfscllayout** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.nfsclflayout** %3, %struct.nfsclflayout*** %9, align 8
  store %struct.nfsclflayout* null, %struct.nfsclflayout** %12, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %13, align 8
  br label %15

15:                                               ; preds = %70, %4
  %16 = load i64, i64* %13, align 8
  %17 = load i64, i64* @NFSV4OPEN_ACCESSREAD, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.nfscllayout*, %struct.nfscllayout** %6, align 8
  %21 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %20, i32 0, i32 1
  %22 = call %struct.nfsclflayout* @LIST_FIRST(i32* %21)
  store %struct.nfsclflayout* %22, %struct.nfsclflayout** %10, align 8
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.nfscllayout*, %struct.nfscllayout** %6, align 8
  %25 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %24, i32 0, i32 0
  %26 = call %struct.nfsclflayout* @LIST_FIRST(i32* %25)
  store %struct.nfsclflayout* %26, %struct.nfsclflayout** %10, align 8
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %60, %27
  %29 = load %struct.nfsclflayout*, %struct.nfsclflayout** %10, align 8
  %30 = icmp ne %struct.nfsclflayout* %29, null
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load %struct.nfsclflayout*, %struct.nfsclflayout** %10, align 8
  %33 = load i32, i32* @nfsfl_list, align 4
  %34 = call %struct.nfsclflayout* @LIST_NEXT(%struct.nfsclflayout* %32, i32 %33)
  store %struct.nfsclflayout* %34, %struct.nfsclflayout** %11, align 8
  %35 = load %struct.nfsclflayout*, %struct.nfsclflayout** %10, align 8
  %36 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %62

41:                                               ; preds = %31
  %42 = load %struct.nfsclflayout*, %struct.nfsclflayout** %10, align 8
  %43 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.nfsclflayout*, %struct.nfsclflayout** %12, align 8
  %49 = icmp eq %struct.nfsclflayout* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load %struct.nfsclflayout*, %struct.nfsclflayout** %12, align 8
  %52 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nfsclflayout*, %struct.nfsclflayout** %10, align 8
  %55 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50, %47
  %59 = load %struct.nfsclflayout*, %struct.nfsclflayout** %10, align 8
  store %struct.nfsclflayout* %59, %struct.nfsclflayout** %12, align 8
  br label %60

60:                                               ; preds = %58, %50, %41
  %61 = load %struct.nfsclflayout*, %struct.nfsclflayout** %11, align 8
  store %struct.nfsclflayout* %61, %struct.nfsclflayout** %10, align 8
  br label %28

62:                                               ; preds = %40, %28
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @NFSV4OPEN_ACCESSREAD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* @NFSV4OPEN_ACCESSWRITE, align 8
  store i64 %67, i64* %13, align 8
  br label %69

68:                                               ; preds = %62
  store i64 0, i64* %13, align 8
  br label %69

69:                                               ; preds = %68, %66
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %15, label %73

73:                                               ; preds = %70
  %74 = load %struct.nfsclflayout*, %struct.nfsclflayout** %12, align 8
  %75 = icmp ne %struct.nfsclflayout* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.nfsclflayout*, %struct.nfsclflayout** %12, align 8
  %78 = load %struct.nfsclflayout**, %struct.nfsclflayout*** %9, align 8
  store %struct.nfsclflayout* %77, %struct.nfsclflayout** %78, align 8
  store i32 0, i32* %5, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @EIO, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.nfsclflayout* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfsclflayout* @LIST_NEXT(%struct.nfsclflayout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
