; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_lock_vnodes_cel_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_lock_vnodes_cel_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.celockstate = type { %struct.mtx** }
%struct.mtx = type { i32 }
%struct.vnode = type { i32 }

@cache_lock_vnodes_cel_3_failures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.celockstate*, %struct.vnode*)* @cache_lock_vnodes_cel_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_lock_vnodes_cel_3(%struct.celockstate* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.celockstate*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca i32, align 4
  store %struct.celockstate* %0, %struct.celockstate** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %7 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %8 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %7, i32 0, i32 0
  %9 = load %struct.mtx**, %struct.mtx*** %8, align 8
  %10 = getelementptr inbounds %struct.mtx*, %struct.mtx** %9, i64 0
  %11 = load %struct.mtx*, %struct.mtx** %10, align 8
  %12 = call i32 @cache_assert_vlp_locked(%struct.mtx* %11)
  %13 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %14 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %13, i32 0, i32 0
  %15 = load %struct.mtx**, %struct.mtx*** %14, align 8
  %16 = getelementptr inbounds %struct.mtx*, %struct.mtx** %15, i64 1
  %17 = load %struct.mtx*, %struct.mtx** %16, align 8
  %18 = call i32 @cache_assert_vlp_locked(%struct.mtx* %17)
  %19 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %20 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %19, i32 0, i32 0
  %21 = load %struct.mtx**, %struct.mtx*** %20, align 8
  %22 = getelementptr inbounds %struct.mtx*, %struct.mtx** %21, i64 2
  %23 = load %struct.mtx*, %struct.mtx** %22, align 8
  %24 = icmp eq %struct.mtx* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @MPASS(i32 %25)
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = icmp ne %struct.vnode* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = call %struct.mtx* @VP2VNODELOCK(%struct.vnode* %31)
  store %struct.mtx* %32, %struct.mtx** %5, align 8
  store i32 1, i32* %6, align 4
  %33 = load %struct.mtx*, %struct.mtx** %5, align 8
  %34 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %35 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %34, i32 0, i32 0
  %36 = load %struct.mtx**, %struct.mtx*** %35, align 8
  %37 = getelementptr inbounds %struct.mtx*, %struct.mtx** %36, i64 1
  %38 = load %struct.mtx*, %struct.mtx** %37, align 8
  %39 = icmp uge %struct.mtx* %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load %struct.mtx*, %struct.mtx** %5, align 8
  %42 = call i32 @mtx_lock(%struct.mtx* %41)
  br label %99

43:                                               ; preds = %2
  %44 = load %struct.mtx*, %struct.mtx** %5, align 8
  %45 = call i64 @mtx_trylock(%struct.mtx* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %100

48:                                               ; preds = %43
  %49 = load i32, i32* @cache_lock_vnodes_cel_3_failures, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @cache_lock_vnodes_cel_3_failures, align 4
  %51 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %52 = call i32 @cache_unlock_vnodes_cel(%struct.celockstate* %51)
  %53 = load %struct.mtx*, %struct.mtx** %5, align 8
  %54 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %55 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %54, i32 0, i32 0
  %56 = load %struct.mtx**, %struct.mtx*** %55, align 8
  %57 = getelementptr inbounds %struct.mtx*, %struct.mtx** %56, i64 0
  %58 = load %struct.mtx*, %struct.mtx** %57, align 8
  %59 = icmp ult %struct.mtx* %53, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %48
  %61 = load %struct.mtx*, %struct.mtx** %5, align 8
  %62 = call i32 @mtx_lock(%struct.mtx* %61)
  %63 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %64 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %63, i32 0, i32 0
  %65 = load %struct.mtx**, %struct.mtx*** %64, align 8
  %66 = getelementptr inbounds %struct.mtx*, %struct.mtx** %65, i64 0
  %67 = load %struct.mtx*, %struct.mtx** %66, align 8
  %68 = call i32 @mtx_lock(%struct.mtx* %67)
  %69 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %70 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %69, i32 0, i32 0
  %71 = load %struct.mtx**, %struct.mtx*** %70, align 8
  %72 = getelementptr inbounds %struct.mtx*, %struct.mtx** %71, i64 1
  %73 = load %struct.mtx*, %struct.mtx** %72, align 8
  %74 = call i32 @mtx_lock(%struct.mtx* %73)
  br label %98

75:                                               ; preds = %48
  %76 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %77 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %76, i32 0, i32 0
  %78 = load %struct.mtx**, %struct.mtx*** %77, align 8
  %79 = getelementptr inbounds %struct.mtx*, %struct.mtx** %78, i64 0
  %80 = load %struct.mtx*, %struct.mtx** %79, align 8
  %81 = icmp ne %struct.mtx* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %84 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %83, i32 0, i32 0
  %85 = load %struct.mtx**, %struct.mtx*** %84, align 8
  %86 = getelementptr inbounds %struct.mtx*, %struct.mtx** %85, i64 0
  %87 = load %struct.mtx*, %struct.mtx** %86, align 8
  %88 = call i32 @mtx_lock(%struct.mtx* %87)
  br label %89

89:                                               ; preds = %82, %75
  %90 = load %struct.mtx*, %struct.mtx** %5, align 8
  %91 = call i32 @mtx_lock(%struct.mtx* %90)
  %92 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %93 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %92, i32 0, i32 0
  %94 = load %struct.mtx**, %struct.mtx*** %93, align 8
  %95 = getelementptr inbounds %struct.mtx*, %struct.mtx** %94, i64 1
  %96 = load %struct.mtx*, %struct.mtx** %95, align 8
  %97 = call i32 @mtx_lock(%struct.mtx* %96)
  br label %98

98:                                               ; preds = %89, %60
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %40
  br label %100

100:                                              ; preds = %99, %47
  %101 = load %struct.mtx*, %struct.mtx** %5, align 8
  %102 = load %struct.celockstate*, %struct.celockstate** %3, align 8
  %103 = getelementptr inbounds %struct.celockstate, %struct.celockstate* %102, i32 0, i32 0
  %104 = load %struct.mtx**, %struct.mtx*** %103, align 8
  %105 = getelementptr inbounds %struct.mtx*, %struct.mtx** %104, i64 2
  store %struct.mtx* %101, %struct.mtx** %105, align 8
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @cache_assert_vlp_locked(%struct.mtx*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.mtx* @VP2VNODELOCK(%struct.vnode*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i64 @mtx_trylock(%struct.mtx*) #1

declare dso_local i32 @cache_unlock_vnodes_cel(%struct.celockstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
