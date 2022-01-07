; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_add_dlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_add_dlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { i32, %struct.hostlist*, %struct.dirlist*, %struct.dirlist*, i32 }
%struct.hostlist = type { %struct.hostlist*, %struct.grouplist* }
%struct.grouplist = type { i64, %struct.grouplist*, i32 }
%struct.exportlist = type { i64, i64, i32, %struct.xucred, i32, i32, i32 }
%struct.xucred = type { i32 }

@EX_DEFSET = common dso_local global i32 0, align 4
@DP_DEFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dirlist**, %struct.dirlist*, %struct.grouplist*, i32, %struct.exportlist*, %struct.xucred*, i32)* @add_dlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dlist(%struct.dirlist** %0, %struct.dirlist* %1, %struct.grouplist* %2, i32 %3, %struct.exportlist* %4, %struct.xucred* %5, i32 %6) #0 {
  %8 = alloca %struct.dirlist**, align 8
  %9 = alloca %struct.dirlist*, align 8
  %10 = alloca %struct.grouplist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.exportlist*, align 8
  %13 = alloca %struct.xucred*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dirlist*, align 8
  %16 = alloca %struct.hostlist*, align 8
  %17 = alloca i32, align 4
  store %struct.dirlist** %0, %struct.dirlist*** %8, align 8
  store %struct.dirlist* %1, %struct.dirlist** %9, align 8
  store %struct.grouplist* %2, %struct.grouplist** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.exportlist* %4, %struct.exportlist** %12, align 8
  store %struct.xucred* %5, %struct.xucred** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.dirlist**, %struct.dirlist*** %8, align 8
  %19 = load %struct.dirlist*, %struct.dirlist** %18, align 8
  store %struct.dirlist* %19, %struct.dirlist** %15, align 8
  %20 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %21 = icmp ne %struct.dirlist* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %7
  %23 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %24 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dirlist*, %struct.dirlist** %9, align 8
  %27 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcmp(i32 %25, i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %34 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %33, i32 0, i32 2
  %35 = load %struct.dirlist*, %struct.dirlist** %9, align 8
  %36 = load %struct.grouplist*, %struct.grouplist** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %39 = load %struct.xucred*, %struct.xucred** %13, align 8
  %40 = load i32, i32* %14, align 4
  call void @add_dlist(%struct.dirlist** %34, %struct.dirlist* %35, %struct.grouplist* %36, i32 %37, %struct.exportlist* %38, %struct.xucred* %39, i32 %40)
  br label %144

41:                                               ; preds = %22
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %46 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %45, i32 0, i32 3
  %47 = load %struct.dirlist*, %struct.dirlist** %9, align 8
  %48 = load %struct.grouplist*, %struct.grouplist** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %51 = load %struct.xucred*, %struct.xucred** %13, align 8
  %52 = load i32, i32* %14, align 4
  call void @add_dlist(%struct.dirlist** %46, %struct.dirlist* %47, %struct.grouplist* %48, i32 %49, %struct.exportlist* %50, %struct.xucred* %51, i32 %52)
  br label %144

53:                                               ; preds = %41
  %54 = load %struct.dirlist*, %struct.dirlist** %9, align 8
  %55 = ptrtoint %struct.dirlist* %54 to i32
  %56 = call i32 @free(i32 %55)
  br label %57

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  br label %65

59:                                               ; preds = %7
  %60 = load %struct.dirlist*, %struct.dirlist** %9, align 8
  store %struct.dirlist* %60, %struct.dirlist** %15, align 8
  %61 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %62 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %61, i32 0, i32 2
  store %struct.dirlist* null, %struct.dirlist** %62, align 8
  %63 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %64 = load %struct.dirlist**, %struct.dirlist*** %8, align 8
  store %struct.dirlist* %63, %struct.dirlist** %64, align 8
  br label %65

65:                                               ; preds = %59, %58
  %66 = load %struct.grouplist*, %struct.grouplist** %10, align 8
  %67 = icmp ne %struct.grouplist* %66, null
  br i1 %67, label %68, label %107

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %103, %68
  %70 = call %struct.hostlist* (...) @get_ht()
  store %struct.hostlist* %70, %struct.hostlist** %16, align 8
  %71 = load %struct.grouplist*, %struct.grouplist** %10, align 8
  %72 = load %struct.hostlist*, %struct.hostlist** %16, align 8
  %73 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %72, i32 0, i32 1
  store %struct.grouplist* %71, %struct.grouplist** %73, align 8
  %74 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %75 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %74, i32 0, i32 1
  %76 = load %struct.hostlist*, %struct.hostlist** %75, align 8
  %77 = load %struct.hostlist*, %struct.hostlist** %16, align 8
  %78 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %77, i32 0, i32 0
  store %struct.hostlist* %76, %struct.hostlist** %78, align 8
  %79 = load %struct.hostlist*, %struct.hostlist** %16, align 8
  %80 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %81 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %80, i32 0, i32 1
  store %struct.hostlist* %79, %struct.hostlist** %81, align 8
  %82 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %83 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.grouplist*, %struct.grouplist** %10, align 8
  %86 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %88 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %69
  %92 = load %struct.grouplist*, %struct.grouplist** %10, align 8
  %93 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %96 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memcpy(i32 %94, i32 %97, i32 4)
  br label %99

99:                                               ; preds = %91, %69
  %100 = load %struct.grouplist*, %struct.grouplist** %10, align 8
  %101 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %100, i32 0, i32 1
  %102 = load %struct.grouplist*, %struct.grouplist** %101, align 8
  store %struct.grouplist* %102, %struct.grouplist** %10, align 8
  br label %103

103:                                              ; preds = %99
  %104 = load %struct.grouplist*, %struct.grouplist** %10, align 8
  %105 = icmp ne %struct.grouplist* %104, null
  br i1 %105, label %69, label %106

106:                                              ; preds = %103
  br label %144

107:                                              ; preds = %65
  %108 = load i32, i32* @EX_DEFSET, align 4
  %109 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %110 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @DP_DEFSET, align 4
  %114 = load %struct.dirlist*, %struct.dirlist** %15, align 8
  %115 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %119 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %122 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %124 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %107
  %128 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %129 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %132 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @memcpy(i32 %130, i32 %133, i32 4)
  br label %135

135:                                              ; preds = %127, %107
  %136 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %137 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %136, i32 0, i32 3
  %138 = load %struct.xucred*, %struct.xucred** %13, align 8
  %139 = bitcast %struct.xucred* %137 to i8*
  %140 = bitcast %struct.xucred* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 4, i1 false)
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.exportlist*, %struct.exportlist** %12, align 8
  %143 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %32, %44, %135, %106
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.hostlist* @get_ht(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
