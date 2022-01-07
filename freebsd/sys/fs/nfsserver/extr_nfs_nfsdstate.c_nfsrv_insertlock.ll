; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_insertlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_insertlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.nfslock = type { i64, %struct.TYPE_3__, %struct.nfslockfile*, %struct.nfsstate* }
%struct.TYPE_3__ = type { i32* }
%struct.nfsstate = type { i32 }
%struct.nfslockfile = type { i32, i32 }

@lo_lckfile = common dso_local global i32 0, align 4
@lo_lckowner = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nfsrv_openpluslock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfslock*, %struct.nfslock*, %struct.nfsstate*, %struct.nfslockfile*)* @nfsrv_insertlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_insertlock(%struct.nfslock* %0, %struct.nfslock* %1, %struct.nfsstate* %2, %struct.nfslockfile* %3) #0 {
  %5 = alloca %struct.nfslock*, align 8
  %6 = alloca %struct.nfslock*, align 8
  %7 = alloca %struct.nfsstate*, align 8
  %8 = alloca %struct.nfslockfile*, align 8
  %9 = alloca %struct.nfslock*, align 8
  %10 = alloca %struct.nfslock*, align 8
  store %struct.nfslock* %0, %struct.nfslock** %5, align 8
  store %struct.nfslock* %1, %struct.nfslock** %6, align 8
  store %struct.nfsstate* %2, %struct.nfsstate** %7, align 8
  store %struct.nfslockfile* %3, %struct.nfslockfile** %8, align 8
  %11 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %12 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %13 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %12, i32 0, i32 3
  store %struct.nfsstate* %11, %struct.nfsstate** %13, align 8
  %14 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %15 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %16 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %15, i32 0, i32 2
  store %struct.nfslockfile* %14, %struct.nfslockfile** %16, align 8
  %17 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %18 = icmp ne %struct.nfsstate* %17, null
  br i1 %18, label %19, label %73

19:                                               ; preds = %4
  %20 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %21 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %20, i32 0, i32 1
  %22 = call %struct.nfslock* @LIST_FIRST(i32* %21)
  store %struct.nfslock* %22, %struct.nfslock** %9, align 8
  %23 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %24 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %25 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %24, i32 0, i32 1
  %26 = call %struct.nfslock* @LIST_END(i32* %25)
  %27 = icmp eq %struct.nfslock* %23, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %30 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %33 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28, %19
  %37 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %38 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %37, i32 0, i32 1
  %39 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %40 = load i32, i32* @lo_lckfile, align 4
  %41 = call i32 @LIST_INSERT_HEAD(i32* %38, %struct.nfslock* %39, i32 %40)
  br label %72

42:                                               ; preds = %28
  %43 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %44 = load i32, i32* @lo_lckfile, align 4
  %45 = call %struct.nfslock* @LIST_NEXT(%struct.nfslock* %43, i32 %44)
  store %struct.nfslock* %45, %struct.nfslock** %10, align 8
  br label %46

46:                                               ; preds = %62, %42
  %47 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %48 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %49 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %48, i32 0, i32 1
  %50 = call %struct.nfslock* @LIST_END(i32* %49)
  %51 = icmp ne %struct.nfslock* %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  %54 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %57 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br label %60

60:                                               ; preds = %52, %46
  %61 = phi i1 [ false, %46 ], [ %59, %52 ]
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = load %struct.nfslock*, %struct.nfslock** %10, align 8
  store %struct.nfslock* %63, %struct.nfslock** %9, align 8
  %64 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %65 = load i32, i32* @lo_lckfile, align 4
  %66 = call %struct.nfslock* @LIST_NEXT(%struct.nfslock* %64, i32 %65)
  store %struct.nfslock* %66, %struct.nfslock** %10, align 8
  br label %46

67:                                               ; preds = %60
  %68 = load %struct.nfslock*, %struct.nfslock** %9, align 8
  %69 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %70 = load i32, i32* @lo_lckfile, align 4
  %71 = call i32 @LIST_INSERT_AFTER(%struct.nfslock* %68, %struct.nfslock* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %36
  br label %77

73:                                               ; preds = %4
  %74 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %75 = getelementptr inbounds %struct.nfslock, %struct.nfslock* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %73, %72
  %78 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %79 = icmp eq %struct.nfsstate* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.nfslock*, %struct.nfslock** %6, align 8
  %82 = bitcast %struct.nfslock* %81 to %struct.nfslockfile*
  %83 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %84 = icmp eq %struct.nfslockfile* %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %87 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %86, i32 0, i32 0
  %88 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %89 = load i32, i32* @lo_lckowner, align 4
  %90 = call i32 @LIST_INSERT_HEAD(i32* %87, %struct.nfslock* %88, i32 %89)
  br label %108

91:                                               ; preds = %80, %77
  %92 = load %struct.nfslock*, %struct.nfslock** %6, align 8
  %93 = bitcast %struct.nfslock* %92 to %struct.nfsstate*
  %94 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %95 = icmp eq %struct.nfsstate* %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %98 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %97, i32 0, i32 0
  %99 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %100 = load i32, i32* @lo_lckowner, align 4
  %101 = call i32 @LIST_INSERT_HEAD(i32* %98, %struct.nfslock* %99, i32 %100)
  br label %107

102:                                              ; preds = %91
  %103 = load %struct.nfslock*, %struct.nfslock** %6, align 8
  %104 = load %struct.nfslock*, %struct.nfslock** %5, align 8
  %105 = load i32, i32* @lo_lckowner, align 4
  %106 = call i32 @LIST_INSERT_AFTER(%struct.nfslock* %103, %struct.nfslock* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %96
  br label %108

108:                                              ; preds = %107, %85
  %109 = load %struct.nfsstate*, %struct.nfsstate** %7, align 8
  %110 = icmp ne %struct.nfsstate* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsstatsv1, i32 0, i32 0), align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsstatsv1, i32 0, i32 0), align 4
  %114 = load i32, i32* @nfsrv_openpluslock, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @nfsrv_openpluslock, align 4
  br label %116

116:                                              ; preds = %111, %108
  ret void
}

declare dso_local %struct.nfslock* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfslock* @LIST_END(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfslock*, i32) #1

declare dso_local %struct.nfslock* @LIST_NEXT(%struct.nfslock*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.nfslock*, %struct.nfslock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
