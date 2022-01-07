; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_hash_maddr_cam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_hash_maddr_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.vr_hash_maddr_cam_ctx = type { i64, i32, i32 }

@VR_MCAST_CAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @vr_hash_maddr_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_hash_maddr_cam(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vr_hash_maddr_cam_ctx*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.vr_hash_maddr_cam_ctx*
  store %struct.vr_hash_maddr_cam_ctx* %10, %struct.vr_hash_maddr_cam_ctx** %8, align 8
  %11 = load %struct.vr_hash_maddr_cam_ctx*, %struct.vr_hash_maddr_cam_ctx** %8, align 8
  %12 = getelementptr inbounds %struct.vr_hash_maddr_cam_ctx, %struct.vr_hash_maddr_cam_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.vr_hash_maddr_cam_ctx*, %struct.vr_hash_maddr_cam_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.vr_hash_maddr_cam_ctx, %struct.vr_hash_maddr_cam_ctx* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VR_MCAST_CAM, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %23 = call i32 @LLADDR(%struct.sockaddr_dl* %22)
  %24 = call i64 @vr_cam_data(i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = load %struct.vr_hash_maddr_cam_ctx*, %struct.vr_hash_maddr_cam_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.vr_hash_maddr_cam_ctx, %struct.vr_hash_maddr_cam_ctx* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.vr_hash_maddr_cam_ctx*, %struct.vr_hash_maddr_cam_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.vr_hash_maddr_cam_ctx, %struct.vr_hash_maddr_cam_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load %struct.vr_hash_maddr_cam_ctx*, %struct.vr_hash_maddr_cam_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.vr_hash_maddr_cam_ctx, %struct.vr_hash_maddr_cam_ctx* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %41

34:                                               ; preds = %16
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 1, %35
  %37 = load %struct.vr_hash_maddr_cam_ctx*, %struct.vr_hash_maddr_cam_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.vr_hash_maddr_cam_ctx, %struct.vr_hash_maddr_cam_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %31, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @vr_cam_data(i32, i32, i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
