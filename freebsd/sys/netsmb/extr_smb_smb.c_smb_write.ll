; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.uio = type { i32 }
%struct.smb_cred = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_write(%struct.smb_share* %0, i32 %1, %struct.uio* %2, %struct.smb_cred* %3) #0 {
  %5 = alloca %struct.smb_share*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.smb_cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uio, align 4
  store %struct.smb_share* %0, %struct.smb_share** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uio* %2, %struct.uio** %7, align 8
  store %struct.smb_cred* %3, %struct.smb_cred** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.uio*, %struct.uio** %7, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.uio*, %struct.uio** %7, align 8
  %18 = bitcast %struct.uio* %13 to i8*
  %19 = bitcast %struct.uio* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  br label %20

20:                                               ; preds = %39, %4
  %21 = load i32, i32* %11, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.uio*, %struct.uio** %7, align 8
  %28 = load %struct.smb_cred*, %struct.smb_cred** %8, align 8
  %29 = call i32 @smb_smb_write(%struct.smb_share* %25, i32 %26, i32* %10, i32* %12, %struct.uio* %27, %struct.smb_cred* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %43

33:                                               ; preds = %23
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EIO, align 4
  store i32 %38, i32* %9, align 4
  br label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %20

43:                                               ; preds = %37, %32, %20
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.uio*, %struct.uio** %7, align 8
  %48 = bitcast %struct.uio* %47 to i8*
  %49 = bitcast %struct.uio* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @smb_smb_write(%struct.smb_share*, i32, i32*, i32*, %struct.uio*, %struct.smb_cred*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
