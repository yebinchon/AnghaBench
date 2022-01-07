; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_get_thread_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_machdep.c_linux_get_thread_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_get_thread_area_args = type { i32 }
%struct.l_user_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.l_desc_struct = type { i32 }
%struct.segment_descriptor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@fsgs_gdt = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_get_thread_area(%struct.thread* %0, %struct.linux_get_thread_area_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_get_thread_area_args*, align 8
  %6 = alloca %struct.l_user_desc, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.l_desc_struct, align 4
  %10 = alloca %struct.segment_descriptor, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_get_thread_area_args* %1, %struct.linux_get_thread_area_args** %5, align 8
  %11 = load %struct.linux_get_thread_area_args*, %struct.linux_get_thread_area_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_get_thread_area_args, %struct.linux_get_thread_area_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @copyin(i32 %13, %struct.l_user_desc* %6, i32 36)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 6
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %24, %19
  store i32 3, i32* %8, align 4
  %30 = call i32 @memset(%struct.l_user_desc* %6, i32 0, i32 36)
  %31 = load i32, i32* @fsgs_gdt, align 4
  %32 = call %struct.segment_descriptor* @PCPU_GET(i32 %31)
  %33 = getelementptr inbounds %struct.segment_descriptor, %struct.segment_descriptor* %32, i64 1
  %34 = bitcast %struct.segment_descriptor* %10 to i8*
  %35 = bitcast %struct.segment_descriptor* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = call i32 @memcpy(%struct.l_desc_struct* %9, %struct.segment_descriptor* %10, i32 4)
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = call i32 @LINUX_GET_BASE(%struct.l_desc_struct* %9)
  %40 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 8
  store i32 %39, i32* %40, align 4
  %41 = call i32 @LINUX_GET_LIMIT(%struct.l_desc_struct* %9)
  %42 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 7
  store i32 %41, i32* %42, align 4
  %43 = call i32 @LINUX_GET_32BIT(%struct.l_desc_struct* %9)
  %44 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 6
  store i32 %43, i32* %44, align 4
  %45 = call i32 @LINUX_GET_CONTENTS(%struct.l_desc_struct* %9)
  %46 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 5
  store i32 %45, i32* %46, align 4
  %47 = call i32 @LINUX_GET_WRITABLE(%struct.l_desc_struct* %9)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = call i32 @LINUX_GET_LIMIT_PAGES(%struct.l_desc_struct* %9)
  %53 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = call i32 @LINUX_GET_PRESENT(%struct.l_desc_struct* %9)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = call i32 @LINUX_GET_USEABLE(%struct.l_desc_struct* %9)
  %60 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.linux_get_thread_area_args*, %struct.linux_get_thread_area_args** %5, align 8
  %62 = getelementptr inbounds %struct.linux_get_thread_area_args, %struct.linux_get_thread_area_args* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @copyout(%struct.l_user_desc* %6, i32 %63, i32 36)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %29
  %68 = load i32, i32* @EFAULT, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %67, %27, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @copyin(i32, %struct.l_user_desc*, i32) #1

declare dso_local i32 @memset(%struct.l_user_desc*, i32, i32) #1

declare dso_local %struct.segment_descriptor* @PCPU_GET(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.l_desc_struct*, %struct.segment_descriptor*, i32) #1

declare dso_local i32 @LINUX_GET_BASE(%struct.l_desc_struct*) #1

declare dso_local i32 @LINUX_GET_LIMIT(%struct.l_desc_struct*) #1

declare dso_local i32 @LINUX_GET_32BIT(%struct.l_desc_struct*) #1

declare dso_local i32 @LINUX_GET_CONTENTS(%struct.l_desc_struct*) #1

declare dso_local i32 @LINUX_GET_WRITABLE(%struct.l_desc_struct*) #1

declare dso_local i32 @LINUX_GET_LIMIT_PAGES(%struct.l_desc_struct*) #1

declare dso_local i32 @LINUX_GET_PRESENT(%struct.l_desc_struct*) #1

declare dso_local i32 @LINUX_GET_USEABLE(%struct.l_desc_struct*) #1

declare dso_local i32 @copyout(%struct.l_user_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
