; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_find_veriexec_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_find_veriexec_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veriexec_dev_list = type { i64, i32 }
%struct.veriexec_devhead = type { i32 }

@entries = common dso_local global i32 0, align 4
@M_VERIEXEC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ve_mutex = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.veriexec_dev_list* (i64, %struct.veriexec_devhead*)* @find_veriexec_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.veriexec_dev_list* @find_veriexec_dev(i64 %0, %struct.veriexec_devhead* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.veriexec_devhead*, align 8
  %5 = alloca %struct.veriexec_dev_list*, align 8
  %6 = alloca %struct.veriexec_dev_list*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.veriexec_devhead* %1, %struct.veriexec_devhead** %4, align 8
  store %struct.veriexec_dev_list* null, %struct.veriexec_dev_list** %6, align 8
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct.veriexec_devhead*, %struct.veriexec_devhead** %4, align 8
  %9 = call %struct.veriexec_dev_list* @LIST_FIRST(%struct.veriexec_devhead* %8)
  store %struct.veriexec_dev_list* %9, %struct.veriexec_dev_list** %5, align 8
  br label %10

10:                                               ; preds = %21, %7
  %11 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %12 = icmp ne %struct.veriexec_dev_list* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %15 = getelementptr inbounds %struct.veriexec_dev_list, %struct.veriexec_dev_list* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %23 = load i32, i32* @entries, align 4
  %24 = call %struct.veriexec_dev_list* @LIST_NEXT(%struct.veriexec_dev_list* %22, i32 %23)
  store %struct.veriexec_dev_list* %24, %struct.veriexec_dev_list** %5, align 8
  br label %10

25:                                               ; preds = %19, %10
  %26 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %27 = icmp eq %struct.veriexec_dev_list* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %30 = icmp eq %struct.veriexec_dev_list* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* @M_VERIEXEC, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = call %struct.veriexec_dev_list* @malloc(i32 16, i32 %32, i32 %33)
  store %struct.veriexec_dev_list* %34, %struct.veriexec_dev_list** %6, align 8
  %35 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %36 = icmp eq %struct.veriexec_dev_list* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = call i32 @mtx_unlock(i32* @ve_mutex)
  %39 = load i32, i32* @M_VERIEXEC, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call %struct.veriexec_dev_list* @malloc(i32 16, i32 %39, i32 %40)
  store %struct.veriexec_dev_list* %41, %struct.veriexec_dev_list** %6, align 8
  %42 = call i32 @mtx_lock(i32* @ve_mutex)
  br label %7

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %46 = icmp ne %struct.veriexec_dev_list* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  store %struct.veriexec_dev_list* %48, %struct.veriexec_dev_list** %5, align 8
  %49 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %50 = getelementptr inbounds %struct.veriexec_dev_list, %struct.veriexec_dev_list* %49, i32 0, i32 1
  %51 = call i32 @LIST_INIT(i32* %50)
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %54 = getelementptr inbounds %struct.veriexec_dev_list, %struct.veriexec_dev_list* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.veriexec_devhead*, %struct.veriexec_devhead** %4, align 8
  %56 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  %57 = load i32, i32* @entries, align 4
  %58 = call i32 @LIST_INSERT_HEAD(%struct.veriexec_devhead* %55, %struct.veriexec_dev_list* %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %44
  br label %70

60:                                               ; preds = %25
  %61 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %62 = icmp ne %struct.veriexec_dev_list* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = call i32 @mtx_unlock(i32* @ve_mutex)
  %65 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %66 = load i32, i32* @M_VERIEXEC, align 4
  %67 = call i32 @free(%struct.veriexec_dev_list* %65, i32 %66)
  %68 = call i32 @mtx_lock(i32* @ve_mutex)
  br label %69

69:                                               ; preds = %63, %60
  br label %70

70:                                               ; preds = %69, %59
  %71 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %5, align 8
  ret %struct.veriexec_dev_list* %71
}

declare dso_local %struct.veriexec_dev_list* @LIST_FIRST(%struct.veriexec_devhead*) #1

declare dso_local %struct.veriexec_dev_list* @LIST_NEXT(%struct.veriexec_dev_list*, i32) #1

declare dso_local %struct.veriexec_dev_list* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.veriexec_devhead*, %struct.veriexec_dev_list*, i32) #1

declare dso_local i32 @free(%struct.veriexec_dev_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
