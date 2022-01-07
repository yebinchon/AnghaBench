; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_unloadentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_unloadentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv_fw = type { i64, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@FIRMWARE_MAX = common dso_local global i32 0, align 4
@firmware_mtx = common dso_local global i32 0, align 4
@firmware_table = common dso_local global %struct.priv_fw* null, align 8
@FW_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @unloadentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unloadentry(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.priv_fw*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @FIRMWARE_MAX, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 @mtx_lock(i32* @firmware_mtx)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %67, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %11
  %16 = load %struct.priv_fw*, %struct.priv_fw** @firmware_table, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @FIRMWARE_MAX, align 4
  %19 = srem i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %16, i64 %20
  store %struct.priv_fw* %21, %struct.priv_fw** %7, align 8
  %22 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %23 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %15
  %28 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %29 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %34 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %39 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FW_UNLOAD, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %32, %27, %15
  br label %67

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FIRMWARE_MAX, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @FW_UNLOAD, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %52 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = call i32 @mtx_unlock(i32* @firmware_mtx)
  %56 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %57 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @linker_release_module(i32* null, i32* null, i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = call i32 @mtx_lock(i32* @firmware_mtx)
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load %struct.priv_fw*, %struct.priv_fw** %7, align 8
  %65 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %45
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %11

70:                                               ; preds = %11
  %71 = call i32 @mtx_unlock(i32* @firmware_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @linker_release_module(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
