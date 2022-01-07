; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_push_errcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_push_errcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_guest_paging = type { i32, i32 }
%struct.iovec = type { i32 }
%struct.seg_desc = type { i32, i32, i32 }

@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@SDT_SYS386BSY = common dso_local global i32 0, align 4
@SDT_SYS386TSS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@IDT_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, i32, i32*)* @push_errcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_errcode(%struct.vmctx* %0, i32 %1, %struct.vm_guest_paging* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_guest_paging*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [2 x %struct.iovec], align 4
  %15 = alloca %struct.seg_desc, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.vm_guest_paging* %2, %struct.vm_guest_paging** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %28 = call i8* @GETREG(%struct.vmctx* %25, i32 %26, i32 %27)
  store i8* %28, i8** %20, align 8
  %29 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %32 = call i8* @GETREG(%struct.vmctx* %29, i32 %30, i32 %31)
  store i8* %32, i8** %21, align 8
  %33 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %36 = call i8* @GETREG(%struct.vmctx* %33, i32 %34, i32 %35)
  store i8* %36, i8** %23, align 8
  %37 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %40 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %15, i32 0, i32 2
  %41 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %15, i32 0, i32 1
  %42 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %15, i32 0, i32 0
  %43 = call i32 @vm_get_desc(%struct.vmctx* %37, i32 %38, i32 %39, i32* %40, i32* %41, i32* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SDT_SYS386BSY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %6
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @SDT_SYS386TSS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %6
  store i32 4, i32* %17, align 4
  br label %57

56:                                               ; preds = %51
  store i32 2, i32* %17, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %15, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @SEG_DESC_DEF32(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 4, i32* %16, align 4
  br label %64

63:                                               ; preds = %57
  store i32 2, i32* %16, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %68 = call i8* @GETREG(%struct.vmctx* %65, i32 %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %22, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %22, align 4
  %73 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %10, align 8
  %74 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @PROT_WRITE, align 4
  %81 = call i64 @vie_calculate_gla(i32 %75, i32 %76, %struct.seg_desc* %15, i32 %77, i32 %78, i32 %79, i32 %80, i8** %19)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %64
  %84 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @IDT_SS, align 4
  %87 = load i8*, i8** %23, align 8
  %88 = call i32 @sel_exception(%struct.vmctx* %84, i32 %85, i32 %86, i8* %87, i32 1)
  %89 = load i32*, i32** %13, align 8
  store i32 1, i32* %89, align 4
  store i32 0, i32* %7, align 4
  br label %136

90:                                               ; preds = %64
  %91 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %10, align 8
  %92 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i8*, i8** %20, align 8
  %96 = load i8*, i8** %21, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = call i64 @vie_alignment_check(i32 %93, i32 %94, i8* %95, i8* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @vm_inject_ac(%struct.vmctx* %101, i32 %102, i32 1)
  %104 = load i32*, i32** %13, align 8
  store i32 1, i32* %104, align 4
  store i32 0, i32* %7, align 4
  br label %136

105:                                              ; preds = %90
  %106 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %10, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* @PROT_WRITE, align 4
  %112 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %113 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %114 = call i32 @nitems(%struct.iovec* %113)
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @vm_copy_setup(%struct.vmctx* %106, i32 %107, %struct.vm_guest_paging* %108, i8* %109, i32 %110, i32 %111, %struct.iovec* %112, i32 %114, i32* %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %105
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119, %105
  %124 = load i32, i32* %18, align 4
  store i32 %124, i32* %7, align 4
  br label %136

125:                                              ; preds = %119
  %126 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @vm_copyout(%struct.vmctx* %126, i32 %127, i32* %12, %struct.iovec* %128, i32 %129)
  %131 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @SETREG(%struct.vmctx* %131, i32 %132, i32 %133, i32 %134)
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %125, %123, %100, %83
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i8* @GETREG(%struct.vmctx*, i32, i32) #1

declare dso_local i32 @vm_get_desc(%struct.vmctx*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEG_DESC_DEF32(i32) #1

declare dso_local i64 @vie_calculate_gla(i32, i32, %struct.seg_desc*, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @sel_exception(%struct.vmctx*, i32, i32, i8*, i32) #1

declare dso_local i64 @vie_alignment_check(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @vm_inject_ac(%struct.vmctx*, i32, i32) #1

declare dso_local i32 @vm_copy_setup(%struct.vmctx*, i32, %struct.vm_guest_paging*, i8*, i32, i32, %struct.iovec*, i32, i32*) #1

declare dso_local i32 @nitems(%struct.iovec*) #1

declare dso_local i32 @vm_copyout(%struct.vmctx*, i32, i32*, %struct.iovec*, i32) #1

declare dso_local i32 @SETREG(%struct.vmctx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
