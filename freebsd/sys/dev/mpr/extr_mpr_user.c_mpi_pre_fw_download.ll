; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpi_pre_fw_download.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpi_pre_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_command = type { i32, i32, i64 }
%struct.mpr_usr_command = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT = common dso_local global i32 0, align 4
@MPR_CM_FLAGS_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_command*, %struct.mpr_usr_command*)* @mpi_pre_fw_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_pre_fw_download(%struct.mpr_command* %0, %struct.mpr_usr_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca %struct.mpr_usr_command*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mpr_command* %0, %struct.mpr_command** %4, align 8
  store %struct.mpr_usr_command* %1, %struct.mpr_usr_command** %5, align 8
  %9 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %10 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  %14 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %15 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 40
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %92

21:                                               ; preds = %2
  %22 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %23 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %21
  %30 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %31 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %92

36:                                               ; preds = %29
  %37 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %38 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %41 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %44 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @copyin(i32 %39, i32 %42, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %92

51:                                               ; preds = %36
  %52 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = call i32 @mpr_init_sge(%struct.mpr_command* %52, %struct.TYPE_3__* %53, i32* %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %3, align 4
  br label %92

65:                                               ; preds = %51
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %70 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %3, align 4
  br label %92

75:                                               ; preds = %65
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.mpr_usr_command*, %struct.mpr_usr_command** %5, align 8
  %79 = getelementptr inbounds %struct.mpr_usr_command, %struct.mpr_usr_command* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* @MPR_CM_FLAGS_DATAOUT, align 4
  %84 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %85 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = call i32 @mpr_push_ieee_sge(%struct.mpr_command* %88, i32* %90, i32 0)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %75, %73, %63, %49, %34, %27, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @copyin(i32, i32, i64) #1

declare dso_local i32 @mpr_init_sge(%struct.mpr_command*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @mpr_push_ieee_sge(%struct.mpr_command*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
