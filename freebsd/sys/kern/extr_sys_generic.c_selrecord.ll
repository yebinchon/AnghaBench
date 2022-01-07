; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_selrecord.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_selrecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.seltd* }
%struct.seltd = type { i32, i32, %struct.selfd*, %struct.selfd* }
%struct.selfd = type { i32, %struct.mtx*, %struct.selinfo* }
%struct.mtx = type { i32 }
%struct.selinfo = type { %struct.mtx*, i32 }

@SELTD_RESCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"selrecord: No free selfd on selq\00", align 1
@mtxpool_select = common dso_local global i32 0, align 4
@sf_link = common dso_local global i32 0, align 4
@sf_threads = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selrecord(%struct.thread* %0, %struct.selinfo* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.selinfo*, align 8
  %5 = alloca %struct.selfd*, align 8
  %6 = alloca %struct.seltd*, align 8
  %7 = alloca %struct.mtx*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.selinfo* %1, %struct.selinfo** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.seltd*, %struct.seltd** %9, align 8
  store %struct.seltd* %10, %struct.seltd** %6, align 8
  %11 = load %struct.seltd*, %struct.seltd** %6, align 8
  %12 = getelementptr inbounds %struct.seltd, %struct.seltd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SELTD_RESCAN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %85

18:                                               ; preds = %2
  store %struct.selfd* null, %struct.selfd** %5, align 8
  %19 = load %struct.seltd*, %struct.seltd** %6, align 8
  %20 = getelementptr inbounds %struct.seltd, %struct.seltd* %19, i32 0, i32 3
  %21 = load %struct.selfd*, %struct.selfd** %20, align 8
  store %struct.selfd* %21, %struct.selfd** %5, align 8
  %22 = icmp ne %struct.selfd* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.seltd*, %struct.seltd** %6, align 8
  %25 = getelementptr inbounds %struct.seltd, %struct.seltd* %24, i32 0, i32 3
  store %struct.selfd* null, %struct.selfd** %25, align 8
  br label %37

26:                                               ; preds = %18
  %27 = load %struct.seltd*, %struct.seltd** %6, align 8
  %28 = getelementptr inbounds %struct.seltd, %struct.seltd* %27, i32 0, i32 2
  %29 = load %struct.selfd*, %struct.selfd** %28, align 8
  store %struct.selfd* %29, %struct.selfd** %5, align 8
  %30 = icmp ne %struct.selfd* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.seltd*, %struct.seltd** %6, align 8
  %33 = getelementptr inbounds %struct.seltd, %struct.seltd* %32, i32 0, i32 2
  store %struct.selfd* null, %struct.selfd** %33, align 8
  br label %36

34:                                               ; preds = %26
  %35 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %39 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %38, i32 0, i32 0
  %40 = load %struct.mtx*, %struct.mtx** %39, align 8
  store %struct.mtx* %40, %struct.mtx** %7, align 8
  %41 = load %struct.mtx*, %struct.mtx** %7, align 8
  %42 = icmp eq %struct.mtx* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @mtxpool_select, align 4
  %45 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %46 = call %struct.mtx* @mtx_pool_find(i32 %44, %struct.selinfo* %45)
  store %struct.mtx* %46, %struct.mtx** %7, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %49 = load %struct.selfd*, %struct.selfd** %5, align 8
  %50 = getelementptr inbounds %struct.selfd, %struct.selfd* %49, i32 0, i32 2
  store %struct.selinfo* %48, %struct.selinfo** %50, align 8
  %51 = load %struct.mtx*, %struct.mtx** %7, align 8
  %52 = load %struct.selfd*, %struct.selfd** %5, align 8
  %53 = getelementptr inbounds %struct.selfd, %struct.selfd* %52, i32 0, i32 1
  store %struct.mtx* %51, %struct.mtx** %53, align 8
  %54 = load %struct.selfd*, %struct.selfd** %5, align 8
  %55 = getelementptr inbounds %struct.selfd, %struct.selfd* %54, i32 0, i32 0
  %56 = call i32 @refcount_init(i32* %55, i32 2)
  %57 = load %struct.seltd*, %struct.seltd** %6, align 8
  %58 = getelementptr inbounds %struct.seltd, %struct.seltd* %57, i32 0, i32 1
  %59 = load %struct.selfd*, %struct.selfd** %5, align 8
  %60 = load i32, i32* @sf_link, align 4
  %61 = call i32 @STAILQ_INSERT_TAIL(i32* %58, %struct.selfd* %59, i32 %60)
  %62 = load %struct.mtx*, %struct.mtx** %7, align 8
  %63 = call i32 @mtx_lock(%struct.mtx* %62)
  %64 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %65 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %64, i32 0, i32 0
  %66 = load %struct.mtx*, %struct.mtx** %65, align 8
  %67 = icmp eq %struct.mtx* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %47
  %69 = load %struct.mtx*, %struct.mtx** %7, align 8
  %70 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %71 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %70, i32 0, i32 0
  store %struct.mtx* %69, %struct.mtx** %71, align 8
  %72 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %73 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %72, i32 0, i32 1
  %74 = call i32 @TAILQ_INIT(i32* %73)
  br label %75

75:                                               ; preds = %68, %47
  %76 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %77 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %76, i32 0, i32 1
  %78 = load %struct.selfd*, %struct.selfd** %5, align 8
  %79 = load i32, i32* @sf_threads, align 4
  %80 = call i32 @TAILQ_INSERT_TAIL(i32* %77, %struct.selfd* %78, i32 %79)
  %81 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %82 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %81, i32 0, i32 0
  %83 = load %struct.mtx*, %struct.mtx** %82, align 8
  %84 = call i32 @mtx_unlock(%struct.mtx* %83)
  br label %85

85:                                               ; preds = %75, %17
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.selinfo*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.selfd*, i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.selfd*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
