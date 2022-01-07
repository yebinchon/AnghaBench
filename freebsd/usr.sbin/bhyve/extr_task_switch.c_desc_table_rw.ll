; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_desc_table_rw.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_desc_table_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_guest_paging = type { i32 }
%struct.user_segment_descriptor = type { i32 }
%struct.iovec = type { i32 }

@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32, i32*)* @desc_table_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_table_rw(%struct.vmctx* %0, i32 %1, %struct.vm_guest_paging* %2, i32 %3, %struct.user_segment_descriptor* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_guest_paging*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.user_segment_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [2 x %struct.iovec], align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.vm_guest_paging* %2, %struct.vm_guest_paging** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.user_segment_descriptor* %4, %struct.user_segment_descriptor** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @ISLDT(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  br label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %21, align 4
  %31 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %21, align 4
  %34 = call i32 @vm_get_desc(%struct.vmctx* %31, i32 %32, i32 %33, i64* %17, i64* %18, i64* %19)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %18, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @SEL_LIMIT(i32 %40)
  %42 = icmp sge i64 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %11, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @SEL_START(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %29
  %55 = load i32, i32* @PROT_READ, align 4
  br label %58

56:                                               ; preds = %29
  %57 = load i32, i32* @PROT_WRITE, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %16, i64 0, i64 0
  %61 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %16, i64 0, i64 0
  %62 = call i32 @nitems(%struct.iovec* %61)
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @vm_copy_setup(%struct.vmctx* %45, i32 %46, %struct.vm_guest_paging* %47, i64 %51, i32 4, i32 %59, %struct.iovec* %60, i32 %62, i32* %63)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %58
  %72 = load i32, i32* %20, align 4
  store i32 %72, i32* %8, align 4
  br label %89

73:                                               ; preds = %67
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %16, i64 0, i64 0
  %80 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %13, align 8
  %81 = call i32 @vm_copyin(%struct.vmctx* %77, i32 %78, %struct.iovec* %79, %struct.user_segment_descriptor* %80, i32 4)
  br label %88

82:                                               ; preds = %73
  %83 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %13, align 8
  %86 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %16, i64 0, i64 0
  %87 = call i32 @vm_copyout(%struct.vmctx* %83, i32 %84, %struct.user_segment_descriptor* %85, %struct.iovec* %86, i32 4)
  br label %88

88:                                               ; preds = %82, %76
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %71
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i32 @vm_get_desc(%struct.vmctx*, i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEL_LIMIT(i32) #1

declare dso_local i32 @vm_copy_setup(%struct.vmctx*, i32, %struct.vm_guest_paging*, i64, i32, i32, %struct.iovec*, i32, i32*) #1

declare dso_local i64 @SEL_START(i32) #1

declare dso_local i32 @nitems(%struct.iovec*) #1

declare dso_local i32 @vm_copyin(%struct.vmctx*, i32, %struct.iovec*, %struct.user_segment_descriptor*, i32) #1

declare dso_local i32 @vm_copyout(%struct.vmctx*, i32, %struct.user_segment_descriptor*, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
