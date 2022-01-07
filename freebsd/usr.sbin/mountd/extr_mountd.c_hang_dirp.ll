; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_hang_dirp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_hang_dirp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { %struct.dirlist*, %struct.hostlist*, i32 }
%struct.hostlist = type { %struct.hostlist*, %struct.grouplist* }
%struct.grouplist = type { i64, %struct.grouplist*, i32 }
%struct.exportlist = type { i64, i64, i32, i32, i32, %struct.dirlist*, %struct.xucred, i32, i32 }
%struct.xucred = type { i32 }

@OP_ALLDIRS = common dso_local global i32 0, align 4
@EX_DEFSET = common dso_local global i32 0, align 4
@DP_DEFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dirlist*, %struct.grouplist*, %struct.exportlist*, i32, %struct.xucred*, i32)* @hang_dirp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hang_dirp(%struct.dirlist* %0, %struct.grouplist* %1, %struct.exportlist* %2, i32 %3, %struct.xucred* %4, i32 %5) #0 {
  %7 = alloca %struct.dirlist*, align 8
  %8 = alloca %struct.grouplist*, align 8
  %9 = alloca %struct.exportlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xucred*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostlist*, align 8
  %14 = alloca %struct.dirlist*, align 8
  store %struct.dirlist* %0, %struct.dirlist** %7, align 8
  store %struct.grouplist* %1, %struct.grouplist** %8, align 8
  store %struct.exportlist* %2, %struct.exportlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.xucred* %4, %struct.xucred** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @OP_ALLDIRS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %118

19:                                               ; preds = %6
  %20 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %21 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %20, i32 0, i32 5
  %22 = load %struct.dirlist*, %struct.dirlist** %21, align 8
  %23 = icmp ne %struct.dirlist* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.dirlist*, %struct.dirlist** %7, align 8
  %26 = ptrtoint %struct.dirlist* %25 to i32
  %27 = call i32 @free(i32 %26)
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.dirlist*, %struct.dirlist** %7, align 8
  %30 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %31 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %30, i32 0, i32 5
  store %struct.dirlist* %29, %struct.dirlist** %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %34 = icmp eq %struct.grouplist* %33, null
  br i1 %34, label %35, label %74

35:                                               ; preds = %32
  %36 = load i32, i32* @EX_DEFSET, align 4
  %37 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %38 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* @DP_DEFSET, align 4
  %42 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %43 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %42, i32 0, i32 5
  %44 = load %struct.dirlist*, %struct.dirlist** %43, align 8
  %45 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 8
  %48 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %49 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %52 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %54 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %35
  %58 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %59 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %62 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @memcpy(i32 %60, i32 %63, i32 4)
  br label %65

65:                                               ; preds = %57, %35
  %66 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %67 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %66, i32 0, i32 6
  %68 = load %struct.xucred*, %struct.xucred** %11, align 8
  %69 = bitcast %struct.xucred* %67 to i8*
  %70 = bitcast %struct.xucred* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 4 %70, i64 4, i1 false)
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %73 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %117

74:                                               ; preds = %32
  br label %75

75:                                               ; preds = %112, %74
  %76 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %77 = icmp ne %struct.grouplist* %76, null
  br i1 %77, label %78, label %116

78:                                               ; preds = %75
  %79 = call %struct.hostlist* (...) @get_ht()
  store %struct.hostlist* %79, %struct.hostlist** %13, align 8
  %80 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %81 = load %struct.hostlist*, %struct.hostlist** %13, align 8
  %82 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %81, i32 0, i32 1
  store %struct.grouplist* %80, %struct.grouplist** %82, align 8
  %83 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %84 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %83, i32 0, i32 5
  %85 = load %struct.dirlist*, %struct.dirlist** %84, align 8
  %86 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %85, i32 0, i32 1
  %87 = load %struct.hostlist*, %struct.hostlist** %86, align 8
  %88 = load %struct.hostlist*, %struct.hostlist** %13, align 8
  %89 = getelementptr inbounds %struct.hostlist, %struct.hostlist* %88, i32 0, i32 0
  store %struct.hostlist* %87, %struct.hostlist** %89, align 8
  %90 = load %struct.hostlist*, %struct.hostlist** %13, align 8
  %91 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %92 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %91, i32 0, i32 5
  %93 = load %struct.dirlist*, %struct.dirlist** %92, align 8
  %94 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %93, i32 0, i32 1
  store %struct.hostlist* %90, %struct.hostlist** %94, align 8
  %95 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %96 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %99 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %101 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %78
  %105 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %106 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %109 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i32 %107, i32 %110, i32 4)
  br label %112

112:                                              ; preds = %104, %78
  %113 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %114 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %113, i32 0, i32 1
  %115 = load %struct.grouplist*, %struct.grouplist** %114, align 8
  store %struct.grouplist* %115, %struct.grouplist** %8, align 8
  br label %75

116:                                              ; preds = %75
  br label %117

117:                                              ; preds = %116, %65
  br label %137

118:                                              ; preds = %6
  br label %119

119:                                              ; preds = %122, %118
  %120 = load %struct.dirlist*, %struct.dirlist** %7, align 8
  %121 = icmp ne %struct.dirlist* %120, null
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load %struct.dirlist*, %struct.dirlist** %7, align 8
  %124 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %123, i32 0, i32 0
  %125 = load %struct.dirlist*, %struct.dirlist** %124, align 8
  store %struct.dirlist* %125, %struct.dirlist** %14, align 8
  %126 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %127 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %126, i32 0, i32 3
  %128 = load %struct.dirlist*, %struct.dirlist** %7, align 8
  %129 = load %struct.grouplist*, %struct.grouplist** %8, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.exportlist*, %struct.exportlist** %9, align 8
  %132 = load %struct.xucred*, %struct.xucred** %11, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @add_dlist(i32* %127, %struct.dirlist* %128, %struct.grouplist* %129, i32 %130, %struct.exportlist* %131, %struct.xucred* %132, i32 %133)
  %135 = load %struct.dirlist*, %struct.dirlist** %14, align 8
  store %struct.dirlist* %135, %struct.dirlist** %7, align 8
  br label %119

136:                                              ; preds = %119
  br label %137

137:                                              ; preds = %136, %117
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.hostlist* @get_ht(...) #1

declare dso_local i32 @add_dlist(i32*, %struct.dirlist*, %struct.grouplist*, i32, %struct.exportlist*, %struct.xucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
