; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_free_veriexec_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_free_veriexec_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veriexec_devhead = type { i32 }
%struct.veriexec_dev_list = type { i64, %struct.veriexec_dev_list*, %struct.veriexec_devhead }
%struct.mac_veriexec_file_info = type { i64, %struct.mac_veriexec_file_info*, %struct.veriexec_devhead }

@entries = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ve_mutex = common dso_local global i32 0, align 4
@M_VERIEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.veriexec_devhead*)* @free_veriexec_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_veriexec_dev(i64 %0, %struct.veriexec_devhead* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.veriexec_devhead*, align 8
  %6 = alloca %struct.veriexec_dev_list*, align 8
  %7 = alloca %struct.mac_veriexec_file_info*, align 8
  %8 = alloca %struct.mac_veriexec_file_info*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.veriexec_devhead* %1, %struct.veriexec_devhead** %5, align 8
  %9 = load %struct.veriexec_devhead*, %struct.veriexec_devhead** %5, align 8
  %10 = call %struct.veriexec_dev_list* @LIST_FIRST(%struct.veriexec_devhead* %9)
  store %struct.veriexec_dev_list* %10, %struct.veriexec_dev_list** %6, align 8
  br label %11

11:                                               ; preds = %22, %2
  %12 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %13 = icmp ne %struct.veriexec_dev_list* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %16 = getelementptr inbounds %struct.veriexec_dev_list, %struct.veriexec_dev_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %26

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %24 = load i32, i32* @entries, align 4
  %25 = call %struct.veriexec_dev_list* @LIST_NEXT(%struct.veriexec_dev_list* %23, i32 %24)
  store %struct.veriexec_dev_list* %25, %struct.veriexec_dev_list** %6, align 8
  br label %11

26:                                               ; preds = %20, %11
  %27 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %28 = icmp eq %struct.veriexec_dev_list* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %3, align 4
  br label %76

31:                                               ; preds = %26
  %32 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %33 = load i32, i32* @entries, align 4
  %34 = call i32 @LIST_REMOVE(%struct.veriexec_dev_list* %32, i32 %33)
  %35 = call i32 @mtx_unlock(i32* @ve_mutex)
  %36 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %37 = getelementptr inbounds %struct.veriexec_dev_list, %struct.veriexec_dev_list* %36, i32 0, i32 2
  %38 = call %struct.veriexec_dev_list* @LIST_FIRST(%struct.veriexec_devhead* %37)
  %39 = bitcast %struct.veriexec_dev_list* %38 to %struct.mac_veriexec_file_info*
  store %struct.mac_veriexec_file_info* %39, %struct.mac_veriexec_file_info** %7, align 8
  br label %40

40:                                               ; preds = %69, %31
  %41 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %42 = icmp ne %struct.mac_veriexec_file_info* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %45 = bitcast %struct.mac_veriexec_file_info* %44 to %struct.veriexec_dev_list*
  %46 = load i32, i32* @entries, align 4
  %47 = call %struct.veriexec_dev_list* @LIST_NEXT(%struct.veriexec_dev_list* %45, i32 %46)
  %48 = bitcast %struct.veriexec_dev_list* %47 to %struct.mac_veriexec_file_info*
  store %struct.mac_veriexec_file_info* %48, %struct.mac_veriexec_file_info** %8, align 8
  %49 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %50 = bitcast %struct.mac_veriexec_file_info* %49 to %struct.veriexec_dev_list*
  %51 = load i32, i32* @entries, align 4
  %52 = call i32 @LIST_REMOVE(%struct.veriexec_dev_list* %50, i32 %51)
  %53 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %54 = getelementptr inbounds %struct.mac_veriexec_file_info, %struct.mac_veriexec_file_info* %53, i32 0, i32 1
  %55 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %54, align 8
  %56 = icmp ne %struct.mac_veriexec_file_info* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %43
  %58 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %59 = getelementptr inbounds %struct.mac_veriexec_file_info, %struct.mac_veriexec_file_info* %58, i32 0, i32 1
  %60 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %59, align 8
  %61 = bitcast %struct.mac_veriexec_file_info* %60 to %struct.veriexec_dev_list*
  %62 = load i32, i32* @M_VERIEXEC, align 4
  %63 = call i32 @free(%struct.veriexec_dev_list* %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %43
  %65 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %7, align 8
  %66 = bitcast %struct.mac_veriexec_file_info* %65 to %struct.veriexec_dev_list*
  %67 = load i32, i32* @M_VERIEXEC, align 4
  %68 = call i32 @free(%struct.veriexec_dev_list* %66, i32 %67)
  br label %69

69:                                               ; preds = %64
  %70 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %8, align 8
  store %struct.mac_veriexec_file_info* %70, %struct.mac_veriexec_file_info** %7, align 8
  br label %40

71:                                               ; preds = %40
  %72 = load %struct.veriexec_dev_list*, %struct.veriexec_dev_list** %6, align 8
  %73 = load i32, i32* @M_VERIEXEC, align 4
  %74 = call i32 @free(%struct.veriexec_dev_list* %72, i32 %73)
  %75 = call i32 @mtx_lock(i32* @ve_mutex)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %29
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.veriexec_dev_list* @LIST_FIRST(%struct.veriexec_devhead*) #1

declare dso_local %struct.veriexec_dev_list* @LIST_NEXT(%struct.veriexec_dev_list*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.veriexec_dev_list*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.veriexec_dev_list*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
