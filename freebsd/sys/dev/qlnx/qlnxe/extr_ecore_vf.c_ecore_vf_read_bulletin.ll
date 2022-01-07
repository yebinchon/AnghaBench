; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_read_bulletin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_read_bulletin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { %struct.TYPE_2__, %struct.ecore_bulletin_content }
%struct.TYPE_2__ = type { i64, %struct.ecore_bulletin_content* }
%struct.ecore_bulletin_content = type { i64, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_AGAIN = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Read a bulletin update %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_read_bulletin(%struct.ecore_hwfn* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ecore_vf_iov*, align 8
  %7 = alloca %struct.ecore_bulletin_content, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  %12 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %11, align 8
  store %struct.ecore_vf_iov* %12, %struct.ecore_vf_iov** %6, align 8
  store i32 4, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %16, align 8
  %18 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @OSAL_MEMCPY(%struct.ecore_bulletin_content* %7, %struct.ecore_bulletin_content* %17, i64 %21)
  %23 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %2
  %33 = bitcast %struct.ecore_bulletin_content* %7 to i32*
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @OSAL_CRC32(i32 0, i32* %36, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %32
  %52 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %52, i32 0, i32 1
  %54 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %55 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @OSAL_MEMCPY(%struct.ecore_bulletin_content* %53, %struct.ecore_bulletin_content* %7, i64 %57)
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %60 = load i32, i32* @ECORE_MSG_IOV, align 4
  %61 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %59, i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %5, align 8
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %51, %49, %30
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @OSAL_MEMCPY(%struct.ecore_bulletin_content*, %struct.ecore_bulletin_content*, i64) #1

declare dso_local i32 @OSAL_CRC32(i32, i32*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
