; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.bufdomain = type { i64 }
%struct.vnode = type { i64 }

@GB_NOWAIT_BD = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@VCHR = common dso_local global i64 0, align 8
@TDP_BUFNEED = common dso_local global i32 0, align 4
@TDP_NORUNNINGBUF = common dso_local global i32 0, align 4
@flushbufqtarget = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"newbuf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufdomain*, %struct.vnode*, i32, i32, i32)* @bufspace_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufspace_wait(%struct.bufdomain* %0, %struct.vnode* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bufdomain*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bufdomain* %0, %struct.bufdomain** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GB_NOWAIT_BD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %104

20:                                               ; preds = %5
  %21 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %21, %struct.thread** %11, align 8
  %22 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %23 = call i32 @BD_LOCK(%struct.bufdomain* %22)
  br label %24

24:                                               ; preds = %100, %78, %20
  %25 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %26 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %101

29:                                               ; preds = %24
  %30 = load %struct.vnode*, %struct.vnode** %7, align 8
  %31 = icmp ne %struct.vnode* %30, null
  br i1 %31, label %32, label %86

32:                                               ; preds = %29
  %33 = load %struct.vnode*, %struct.vnode** %7, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VCHR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %32
  %39 = load %struct.thread*, %struct.thread** %11, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TDP_BUFNEED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %38
  %46 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %47 = call i32 @BD_UNLOCK(%struct.bufdomain* %46)
  %48 = load i32, i32* @TDP_BUFNEED, align 4
  %49 = load i32, i32* @TDP_NORUNNINGBUF, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.thread*, %struct.thread** %11, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TDP_NORUNNINGBUF, align 4
  %56 = and i32 %54, %55
  %57 = or i32 %51, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* @TDP_BUFNEED, align 4
  %59 = load i32, i32* @TDP_NORUNNINGBUF, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.thread*, %struct.thread** %11, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.vnode*, %struct.vnode** %7, align 8
  %66 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %67 = load i32, i32* @flushbufqtarget, align 4
  %68 = call i32 @buf_flush(%struct.vnode* %65, %struct.bufdomain* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.thread*, %struct.thread** %11, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %75 = call i32 @BD_LOCK(%struct.bufdomain* %74)
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %45
  br label %24

79:                                               ; preds = %45
  %80 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %81 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %101

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %38, %32, %29
  %87 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %88 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %87, i32 0, i32 0
  %89 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %90 = call i32 @BD_LOCKPTR(%struct.bufdomain* %89)
  %91 = load i32, i32* @PRIBIO, align 4
  %92 = add nsw i32 %91, 4
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @msleep(i64* %88, i32 %90, i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %101

100:                                              ; preds = %86
  br label %24

101:                                              ; preds = %99, %84, %24
  %102 = load %struct.bufdomain*, %struct.bufdomain** %6, align 8
  %103 = call i32 @BD_UNLOCK(%struct.bufdomain* %102)
  br label %104

104:                                              ; preds = %101, %19
  ret void
}

declare dso_local i32 @BD_LOCK(%struct.bufdomain*) #1

declare dso_local i32 @BD_UNLOCK(%struct.bufdomain*) #1

declare dso_local i32 @buf_flush(%struct.vnode*, %struct.bufdomain*, i32) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @BD_LOCKPTR(%struct.bufdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
