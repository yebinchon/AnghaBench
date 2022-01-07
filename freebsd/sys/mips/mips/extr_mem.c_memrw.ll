; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mem.c_memrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mem.c_memrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, i32, i64, %struct.iovec* }
%struct.iovec = type { i64, i64 }
%struct.vm_page = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"memrw\00", align 1
@CDEV_MINOR_MEM = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@CDEV_MINOR_KMEM = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memrw(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vm_page, align 8
  %16 = alloca %struct.vm_page*, align 8
  %17 = alloca i64, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %9, align 4
  %18 = call i32 @pmap_page_init(%struct.vm_page* %15)
  br label %19

19:                                               ; preds = %185, %172, %53, %3
  %20 = load %struct.uio*, %struct.uio** %6, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %186

30:                                               ; preds = %28
  %31 = load %struct.uio*, %struct.uio** %6, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %31, i32 0, i32 4
  %33 = load %struct.iovec*, %struct.iovec** %32, align 8
  store %struct.iovec* %33, %struct.iovec** %8, align 8
  %34 = load %struct.iovec*, %struct.iovec** %8, align 8
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.uio*, %struct.uio** %6, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 4
  %41 = load %struct.iovec*, %struct.iovec** %40, align 8
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 1
  store %struct.iovec* %42, %struct.iovec** %40, align 8
  %43 = load %struct.uio*, %struct.uio** %6, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = call i32 @panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %38
  br label %19

54:                                               ; preds = %30
  %55 = load %struct.cdev*, %struct.cdev** %5, align 8
  %56 = call i64 @dev2unit(%struct.cdev* %55)
  %57 = load i64, i64* @CDEV_MINOR_MEM, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %54
  %60 = load %struct.uio*, %struct.uio** %6, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %13, align 4
  %63 = load %struct.uio*, %struct.uio** %6, align 8
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PAGE_MASK, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %12, align 4
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = load %struct.iovec*, %struct.iovec** %8, align 8
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @PAGE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %68, %75
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* @PAGE_SIZE, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %78, %80
  %82 = call i64 @min(i64 %77, i64 %81)
  store i64 %82, i64* %17, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load %struct.iovec*, %struct.iovec** %8, align 8
  %85 = getelementptr inbounds %struct.iovec, %struct.iovec* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @min(i64 %83, i64 %86)
  store i64 %87, i64* %17, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i8* @trunc_page(i32 %88)
  %90 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %15, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  store %struct.vm_page* %15, %struct.vm_page** %16, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i64, i64* %17, align 8
  %93 = load %struct.uio*, %struct.uio** %6, align 8
  %94 = call i32 @uiomove_fromphys(%struct.vm_page** %16, i32 %91, i64 %92, %struct.uio* %93)
  store i32 %94, i32* %9, align 4
  br label %185

95:                                               ; preds = %54
  %96 = load %struct.cdev*, %struct.cdev** %5, align 8
  %97 = call i64 @dev2unit(%struct.cdev* %96)
  %98 = load i64, i64* @CDEV_MINOR_KMEM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %184

100:                                              ; preds = %95
  %101 = load %struct.uio*, %struct.uio** %6, align 8
  %102 = getelementptr inbounds %struct.uio, %struct.uio* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  %104 = load %struct.uio*, %struct.uio** %6, align 8
  %105 = getelementptr inbounds %struct.uio, %struct.uio* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @trunc_page(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %10, align 4
  %109 = load %struct.uio*, %struct.uio** %6, align 8
  %110 = getelementptr inbounds %struct.uio, %struct.uio* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load %struct.iovec*, %struct.iovec** %8, align 8
  %114 = getelementptr inbounds %struct.iovec, %struct.iovec* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = call i32 @round_page(i64 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %172

121:                                              ; preds = %100
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %172

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %138, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i32, i32* @kernel_pmap, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i64 @pmap_extract(i32 %131, i32 %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @EFAULT, align 4
  store i32 %136, i32* %4, align 4
  br label %188

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* @PAGE_SIZE, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %10, align 4
  br label %126

144:                                              ; preds = %126
  %145 = load %struct.uio*, %struct.uio** %6, align 8
  %146 = getelementptr inbounds %struct.uio, %struct.uio* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @UIO_READ, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @VM_PROT_READ, align 4
  br label %154

152:                                              ; preds = %144
  %153 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  store i32 %155, i32* %14, align 4
  %156 = load %struct.uio*, %struct.uio** %6, align 8
  %157 = getelementptr inbounds %struct.uio, %struct.uio* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = load %struct.iovec*, %struct.iovec** %8, align 8
  %163 = getelementptr inbounds %struct.iovec, %struct.iovec* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = call i64 @kernacc(i8* %161, i64 %164, i32 %165)
  %167 = load i64, i64* @FALSE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %154
  %170 = load i32, i32* @EFAULT, align 4
  store i32 %170, i32* %4, align 4
  br label %188

171:                                              ; preds = %154
  br label %172

172:                                              ; preds = %171, %121, %100
  %173 = load %struct.uio*, %struct.uio** %6, align 8
  %174 = getelementptr inbounds %struct.uio, %struct.uio* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = load %struct.iovec*, %struct.iovec** %8, align 8
  %180 = getelementptr inbounds %struct.iovec, %struct.iovec* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.uio*, %struct.uio** %6, align 8
  %183 = call i32 @uiomove(i8* %178, i64 %181, %struct.uio* %182)
  store i32 %183, i32* %9, align 4
  br label %19

184:                                              ; preds = %95
  br label %185

185:                                              ; preds = %184, %59
  br label %19

186:                                              ; preds = %28
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %169, %135
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @pmap_page_init(%struct.vm_page*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @dev2unit(%struct.cdev*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @trunc_page(i32) #1

declare dso_local i32 @uiomove_fromphys(%struct.vm_page**, i32, i64, %struct.uio*) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i64 @pmap_extract(i32, i32) #1

declare dso_local i64 @kernacc(i8*, i64, i32) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
