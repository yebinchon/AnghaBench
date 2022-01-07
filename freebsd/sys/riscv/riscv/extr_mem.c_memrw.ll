; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_mem.c_memrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_mem.c_memrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, i32, i32, %struct.iovec* }
%struct.iovec = type { i64 }
%struct.vm_page = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"memrw\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memrw(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca %struct.vm_page, align 4
  %12 = alloca %struct.vm_page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.uio*, %struct.uio** %5, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %134, %69, %51, %3
  %19 = load %struct.uio*, %struct.uio** %5, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i1 [ false, %18 ], [ %25, %23 ]
  br i1 %27, label %28, label %135

28:                                               ; preds = %26
  %29 = load %struct.uio*, %struct.uio** %5, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 4
  %31 = load %struct.iovec*, %struct.iovec** %30, align 8
  store %struct.iovec* %31, %struct.iovec** %10, align 8
  %32 = load %struct.iovec*, %struct.iovec** %10, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load %struct.uio*, %struct.uio** %5, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 4
  %39 = load %struct.iovec*, %struct.iovec** %38, align 8
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 1
  store %struct.iovec* %40, %struct.iovec** %38, align 8
  %41 = load %struct.uio*, %struct.uio** %5, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.uio*, %struct.uio** %5, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = call i32 @panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %36
  br label %18

52:                                               ; preds = %28
  %53 = load %struct.uio*, %struct.uio** %5, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @PAGE_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.iovec*, %struct.iovec** %10, align 8
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = call i64 @ulmin(i64 %61, i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  br label %18

70:                                               ; preds = %52
  %71 = load %struct.cdev*, %struct.cdev** %4, align 8
  %72 = call i32 @dev2unit(%struct.cdev* %71)
  switch i32 %72, label %134 [
    i32 129, label %73
    i32 128, label %113
  ]

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @VIRT_IN_DMAP(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.uio*, %struct.uio** %5, align 8
  %83 = call i32 @uiomove(i8* %80, i64 %81, %struct.uio* %82)
  store i32 %83, i32* %14, align 4
  br label %134

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.uio*, %struct.uio** %5, align 8
  %90 = getelementptr inbounds %struct.uio, %struct.uio* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UIO_READ, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @VM_PROT_READ, align 4
  br label %98

96:                                               ; preds = %84
  %97 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 @kernacc(i8* %87, i64 %88, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @EFAULT, align 4
  store i32 %103, i32* %14, align 4
  br label %134

104:                                              ; preds = %98
  %105 = load i32, i32* @kernel_pmap, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @pmap_extract(i32 %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @EFAULT, align 4
  store i32 %111, i32* %14, align 4
  br label %134

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %70, %112
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @PHYS_IN_DMAP(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @PHYS_TO_DMAP(i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.uio*, %struct.uio** %5, align 8
  %125 = call i32 @uiomove(i8* %122, i64 %123, %struct.uio* %124)
  store i32 %125, i32* %14, align 4
  br label %134

126:                                              ; preds = %113
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @trunc_page(i32 %127)
  %129 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %11, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  store %struct.vm_page* %11, %struct.vm_page** %12, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i64, i64* %13, align 8
  %132 = load %struct.uio*, %struct.uio** %5, align 8
  %133 = call i32 @uiomove_fromphys(%struct.vm_page** %12, i32 %130, i64 %131, %struct.uio* %132)
  br label %134

134:                                              ; preds = %70, %126, %117, %110, %102, %77
  br label %18

135:                                              ; preds = %26
  %136 = load %struct.uio*, %struct.uio** %5, align 8
  %137 = getelementptr inbounds %struct.uio, %struct.uio* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %141, %135
  %143 = load i32, i32* %14, align 4
  ret i32 %143
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ulmin(i64, i64) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @VIRT_IN_DMAP(i32) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @kernacc(i8*, i64, i32) #1

declare dso_local i32 @pmap_extract(i32, i32) #1

declare dso_local i32 @PHYS_IN_DMAP(i32) #1

declare dso_local i32 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @uiomove_fromphys(%struct.vm_page**, i32, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
