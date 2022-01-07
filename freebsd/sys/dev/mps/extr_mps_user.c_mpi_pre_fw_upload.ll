; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mpi_pre_fw_upload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mpi_pre_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_command = type { i32, i64 }
%struct.mps_usr_command = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }

@MPS_SGC_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPS_CM_FLAGS_DATAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_command*, %struct.mps_usr_command*)* @mpi_pre_fw_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_pre_fw_upload(%struct.mps_command* %0, %struct.mps_usr_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mps_command*, align 8
  %5 = alloca %struct.mps_usr_command*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store %struct.mps_command* %0, %struct.mps_command** %4, align 8
  store %struct.mps_usr_command* %1, %struct.mps_usr_command** %5, align 8
  %9 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %10 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load i32, i32* @MPS_SGC_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 24, %15
  %17 = icmp uge i64 4, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @CTASSERT(i32 %18)
  %20 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %21 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %29 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %27
  %36 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = call i32 @mpi_init_sge(%struct.mps_command* %36, %struct.TYPE_7__* %37, i32* %39)
  %41 = call i32 @bzero(%struct.TYPE_6__* %8, i32 24)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 12, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %46 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @MPS_CM_FLAGS_DATAIN, align 4
  %50 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %51 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %55 = call i32 @mps_push_sge(%struct.mps_command* %54, %struct.TYPE_6__* %8, i32 24, i32 0)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %35, %33, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @mpi_init_sge(%struct.mps_command*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mps_push_sge(%struct.mps_command*, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
