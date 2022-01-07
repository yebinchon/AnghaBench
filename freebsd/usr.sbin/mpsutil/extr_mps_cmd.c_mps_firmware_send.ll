; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_firmware_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_firmware_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@MPI2_FUNCTION_FW_DOWNLOAD = common dso_local global i32 0, align 4
@MPI2_FW_DOWNLOAD_ITYPE_BIOS = common dso_local global i32 0, align 4
@MPI2_FW_DOWNLOAD_ITYPE_FW = common dso_local global i32 0, align 4
@MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_firmware_send(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 @bzero(%struct.TYPE_6__* %10, i32 16)
  %13 = call i32 @bzero(%struct.TYPE_6__* %11, i32 16)
  %14 = load i32, i32* @MPI2_FUNCTION_FW_DOWNLOAD, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @MPI2_FW_DOWNLOAD_ITYPE_BIOS, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @MPI2_FW_DOWNLOAD_ITYPE_FW, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @mps_user_command(i32 %29, %struct.TYPE_6__* %10, i32 16, %struct.TYPE_6__* %11, i32 16, i8* %30, i32 %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %36

35:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @mps_user_command(i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
