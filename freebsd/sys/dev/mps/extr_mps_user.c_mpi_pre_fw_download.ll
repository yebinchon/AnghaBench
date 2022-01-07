; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mpi_pre_fw_download.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mpi_pre_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_command = type { i32, i32, i64 }
%struct.mps_usr_command = type { i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }

@MPS_SGC_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT = common dso_local global i32 0, align 4
@MPS_CM_FLAGS_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_command*, %struct.mps_usr_command*)* @mpi_pre_fw_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_pre_fw_download(%struct.mps_command* %0, %struct.mps_usr_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mps_command*, align 8
  %5 = alloca %struct.mps_usr_command*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  store %struct.mps_command* %0, %struct.mps_command** %4, align 8
  store %struct.mps_usr_command* %1, %struct.mps_usr_command** %5, align 8
  %10 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %11 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load i32, i32* @MPS_SGC_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 32, %16
  %18 = icmp uge i64 4, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @CTASSERT(i32 %19)
  %21 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %22 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %2
  %29 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %30 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %28
  %37 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %38 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %98

43:                                               ; preds = %36
  %44 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %45 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %48 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %51 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @copyin(i32 %46, i32 %49, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %98

58:                                               ; preds = %43
  %59 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = call i32 @mpi_init_sge(%struct.mps_command* %59, %struct.TYPE_7__* %60, i32* %62)
  %64 = call i32 @bzero(%struct.TYPE_6__* %8, i32 32)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %3, align 4
  br label %98

73:                                               ; preds = %58
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %78 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %3, align 4
  br label %98

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 12, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %88 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = load i32, i32* @MPS_CM_FLAGS_DATAOUT, align 4
  %92 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %93 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %97 = call i32 @mps_push_sge(%struct.mps_command* %96, %struct.TYPE_6__* %8, i32 32, i32 0)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %83, %81, %71, %56, %41, %34, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @copyin(i32, i32, i64) #1

declare dso_local i32 @mpi_init_sge(%struct.mps_command*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mps_push_sge(%struct.mps_command*, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
