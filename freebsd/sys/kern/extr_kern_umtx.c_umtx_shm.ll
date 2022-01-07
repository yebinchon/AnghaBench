; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32 }
%struct.umtx_key = type { i32 }
%struct.umtx_shm_reg = type { i32 }
%struct.file = type { i32 }

@UMTX_SHM_CREAT = common dso_local global i32 0, align 4
@UMTX_SHM_LOOKUP = common dso_local global i32 0, align 4
@UMTX_SHM_DESTROY = common dso_local global i32 0, align 4
@UMTX_SHM_ALIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TYPE_SHM = common dso_local global i32 0, align 4
@PROCESS_SHARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"non-shared key\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"no reg\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@DTYPE_SHM = common dso_local global i32 0, align 4
@shm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32)* @umtx_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umtx_shm(%struct.thread* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.umtx_key, align 4
  %9 = alloca %struct.umtx_shm_reg*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @UMTX_SHM_CREAT, align 4
  %15 = load i32, i32* @UMTX_SHM_LOOKUP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @UMTX_SHM_DESTROY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @UMTX_SHM_ALIVE, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %13, %20
  %22 = call i32 @__bitcount(i32 %21)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %114

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @UMTX_SHM_ALIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.thread*, %struct.thread** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @umtx_shm_alive(%struct.thread* %32, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %114

35:                                               ; preds = %26
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @TYPE_SHM, align 4
  %38 = load i32, i32* @PROCESS_SHARE, align 4
  %39 = call i32 @umtx_key_get(i8* %36, i32 %37, i32 %38, %struct.umtx_key* %8)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %114

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.umtx_key, %struct.umtx_key* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = call i32 @KASSERT(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @UMTX_SHM_CREAT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.thread*, %struct.thread** %5, align 8
  %56 = call i32 @umtx_shm_create_reg(%struct.thread* %55, %struct.umtx_key* %8, %struct.umtx_shm_reg** %9)
  store i32 %56, i32* %11, align 4
  br label %64

57:                                               ; preds = %44
  %58 = call %struct.umtx_shm_reg* @umtx_shm_find_reg(%struct.umtx_key* %8)
  store %struct.umtx_shm_reg* %58, %struct.umtx_shm_reg** %9, align 8
  %59 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %9, align 8
  %60 = icmp eq %struct.umtx_shm_reg* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @ESRCH, align 4
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %54
  %65 = call i32 @umtx_key_release(%struct.umtx_key* %8)
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %114

70:                                               ; preds = %64
  %71 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %9, align 8
  %72 = icmp ne %struct.umtx_shm_reg* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @KASSERT(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @UMTX_SHM_DESTROY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %9, align 8
  %81 = call i32 @umtx_shm_unref_reg(%struct.umtx_shm_reg* %80, i32 1)
  br label %110

82:                                               ; preds = %70
  %83 = load %struct.thread*, %struct.thread** %5, align 8
  %84 = load i32, i32* @O_CLOEXEC, align 4
  %85 = call i32 @falloc_caps(%struct.thread* %83, %struct.file** %10, i32* %12, i32 %84, i32* null)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %9, align 8
  %90 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @shm_hold(i32 %91)
  %93 = load %struct.file*, %struct.file** %10, align 8
  %94 = load i32, i32* @O_RDWR, align 4
  %95 = call i32 @FFLAGS(i32 %94)
  %96 = load i32, i32* @DTYPE_SHM, align 4
  %97 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %9, align 8
  %98 = getelementptr inbounds %struct.umtx_shm_reg, %struct.umtx_shm_reg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @finit(%struct.file* %93, i32 %95, i32 %96, i32 %99, i32* @shm_ops)
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.thread*, %struct.thread** %5, align 8
  %103 = getelementptr inbounds %struct.thread, %struct.thread* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.file*, %struct.file** %10, align 8
  %107 = load %struct.thread*, %struct.thread** %5, align 8
  %108 = call i32 @fdrop(%struct.file* %106, %struct.thread* %107)
  br label %109

109:                                              ; preds = %88, %82
  br label %110

110:                                              ; preds = %109, %79
  %111 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %9, align 8
  %112 = call i32 @umtx_shm_unref_reg(%struct.umtx_shm_reg* %111, i32 0)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %68, %42, %31, %24
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @__bitcount(i32) #1

declare dso_local i32 @umtx_shm_alive(%struct.thread*, i8*) #1

declare dso_local i32 @umtx_key_get(i8*, i32, i32, %struct.umtx_key*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @umtx_shm_create_reg(%struct.thread*, %struct.umtx_key*, %struct.umtx_shm_reg**) #1

declare dso_local %struct.umtx_shm_reg* @umtx_shm_find_reg(%struct.umtx_key*) #1

declare dso_local i32 @umtx_key_release(%struct.umtx_key*) #1

declare dso_local i32 @umtx_shm_unref_reg(%struct.umtx_shm_reg*, i32) #1

declare dso_local i32 @falloc_caps(%struct.thread*, %struct.file**, i32*, i32, i32*) #1

declare dso_local i32 @shm_hold(i32) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, i32, i32*) #1

declare dso_local i32 @FFLAGS(i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
