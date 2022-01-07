; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_read_tss_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_read_tss_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_task_switch = type { i64, %struct.vm_guest_paging, i32 }
%struct.vm_guest_paging = type { i64 }
%struct.user_segment_descriptor = type { i32 }

@TSR_IRET = common dso_local global i64 0, align 8
@IDT_TS = common dso_local global i32 0, align 4
@IDT_GP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.vm_task_switch*, i32, %struct.user_segment_descriptor*, i32*)* @read_tss_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tss_descriptor(%struct.vmctx* %0, i32 %1, %struct.vm_task_switch* %2, i32 %3, %struct.user_segment_descriptor* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_task_switch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.user_segment_descriptor*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.vm_guest_paging, align 8
  %15 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.vm_task_switch* %2, %struct.vm_task_switch** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.user_segment_descriptor* %4, %struct.user_segment_descriptor** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @ISLDT(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @IDXSEL(i32 %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @desc_table_limit_check(%struct.vmctx* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %6
  %33 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %34 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TSR_IRET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IDT_TS, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %44 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sel_exception(%struct.vmctx* %39, i32 %40, i32 %41, i32 %42, i32 %45)
  br label %56

47:                                               ; preds = %32
  %48 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @IDT_GP, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %53 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sel_exception(%struct.vmctx* %48, i32 %49, i32 %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %47, %38
  store i32 1, i32* %7, align 4
  br label %70

57:                                               ; preds = %6
  %58 = load %struct.vm_task_switch*, %struct.vm_task_switch** %10, align 8
  %59 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %58, i32 0, i32 1
  %60 = bitcast %struct.vm_guest_paging* %14 to i8*
  %61 = bitcast %struct.vm_guest_paging* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 8, i1 false)
  %62 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %14, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %12, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @desc_table_read(%struct.vmctx* %63, i32 %64, %struct.vm_guest_paging* %14, i32 %65, %struct.user_segment_descriptor* %66, i32* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %57, %56
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ISLDT(i32) #1

declare dso_local i64 @IDXSEL(i32) #1

declare dso_local i64 @desc_table_limit_check(%struct.vmctx*, i32, i32) #1

declare dso_local i32 @sel_exception(%struct.vmctx*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @desc_table_read(%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
