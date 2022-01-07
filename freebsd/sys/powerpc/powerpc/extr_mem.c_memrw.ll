; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mem.c_memrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mem.c_memrw.c"
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
@EFAULT = common dso_local global i32 0, align 4
@hw_direct_map = common dso_local global i64 0, align 8
@CDEV_MINOR_KMEM = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@virtual_end = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
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
  br label %18

18:                                               ; preds = %205, %195, %52, %3
  %19 = load %struct.uio*, %struct.uio** %6, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i1 [ false, %18 ], [ %26, %23 ]
  br i1 %28, label %29, label %206

29:                                               ; preds = %27
  %30 = load %struct.uio*, %struct.uio** %6, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 4
  %32 = load %struct.iovec*, %struct.iovec** %31, align 8
  store %struct.iovec* %32, %struct.iovec** %8, align 8
  %33 = load %struct.iovec*, %struct.iovec** %8, align 8
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = load %struct.uio*, %struct.uio** %6, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 4
  %40 = load %struct.iovec*, %struct.iovec** %39, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 1
  store %struct.iovec* %41, %struct.iovec** %39, align 8
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = call i32 @panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %37
  br label %18

53:                                               ; preds = %29
  %54 = load %struct.cdev*, %struct.cdev** %5, align 8
  %55 = call i64 @dev2unit(%struct.cdev* %54)
  %56 = load i64, i64* @CDEV_MINOR_MEM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %116

58:                                               ; preds = %53
  %59 = load %struct.uio*, %struct.uio** %6, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %132, %58
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @PAGE_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %12, align 4
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = load %struct.iovec*, %struct.iovec** %8, align 8
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @PAGE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %66, %73
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %76, %78
  %80 = call i64 @min(i64 %75, i64 %79)
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load %struct.iovec*, %struct.iovec** %8, align 8
  %83 = getelementptr inbounds %struct.iovec, %struct.iovec* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @min(i64 %81, i64 %84)
  store i64 %85, i64* %17, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i64, i64* %17, align 8
  %88 = call i64 @mem_valid(i32 %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %62
  %91 = load i32, i32* @EFAULT, align 4
  store i32 %91, i32* %9, align 4
  br label %206

92:                                               ; preds = %62
  %93 = load i64, i64* @hw_direct_map, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = load i64, i64* %17, align 8
  %98 = call i32 @pmap_dev_direct_mapped(i32 %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  %102 = call i64 @PHYS_TO_DMAP(i32 %101)
  %103 = inttoptr i64 %102 to i8*
  %104 = load i64, i64* %17, align 8
  %105 = load %struct.uio*, %struct.uio** %6, align 8
  %106 = call i32 @uiomove(i8* %103, i64 %104, %struct.uio* %105)
  store i32 %106, i32* %9, align 4
  br label %115

107:                                              ; preds = %95, %92
  %108 = load i32, i32* %13, align 4
  %109 = call i8* @trunc_page(i32 %108)
  %110 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %15, i32 0, i32 0
  store i8* %109, i8** %110, align 8
  store %struct.vm_page* %15, %struct.vm_page** %16, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i64, i64* %17, align 8
  %113 = load %struct.uio*, %struct.uio** %6, align 8
  %114 = call i32 @uiomove_fromphys(%struct.vm_page** %16, i32 %111, i64 %112, %struct.uio* %113)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %107, %100
  br label %205

116:                                              ; preds = %53
  %117 = load %struct.cdev*, %struct.cdev** %5, align 8
  %118 = call i64 @dev2unit(%struct.cdev* %117)
  %119 = load i64, i64* @CDEV_MINOR_KMEM, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %204

121:                                              ; preds = %116
  %122 = load %struct.uio*, %struct.uio** %6, align 8
  %123 = getelementptr inbounds %struct.uio, %struct.uio* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @virtual_end, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128, %121
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @DMAP_TO_PHYS(i32 %133)
  store i32 %134, i32* %13, align 4
  br label %62

135:                                              ; preds = %128
  %136 = load %struct.uio*, %struct.uio** %6, align 8
  %137 = getelementptr inbounds %struct.uio, %struct.uio* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @trunc_page(i32 %138)
  %140 = ptrtoint i8* %139 to i32
  store i32 %140, i32* %10, align 4
  %141 = load %struct.uio*, %struct.uio** %6, align 8
  %142 = getelementptr inbounds %struct.uio, %struct.uio* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = load %struct.iovec*, %struct.iovec** %8, align 8
  %146 = getelementptr inbounds %struct.iovec, %struct.iovec* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = call i32 @round_page(i64 %148)
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %162, %135
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %150
  %155 = load i32, i32* @kernel_pmap, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i64 @pmap_extract(i32 %155, i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* @EFAULT, align 4
  store i32 %160, i32* %4, align 4
  br label %208

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* @PAGE_SIZE, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %10, align 4
  br label %150

168:                                              ; preds = %150
  %169 = load %struct.uio*, %struct.uio** %6, align 8
  %170 = getelementptr inbounds %struct.uio, %struct.uio* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @UIO_READ, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @VM_PROT_READ, align 4
  br label %178

176:                                              ; preds = %168
  %177 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  store i32 %179, i32* %14, align 4
  %180 = load %struct.uio*, %struct.uio** %6, align 8
  %181 = getelementptr inbounds %struct.uio, %struct.uio* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = load %struct.iovec*, %struct.iovec** %8, align 8
  %187 = getelementptr inbounds %struct.iovec, %struct.iovec* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = call i64 @kernacc(i8* %185, i64 %188, i32 %189)
  %191 = load i64, i64* @FALSE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %178
  %194 = load i32, i32* @EFAULT, align 4
  store i32 %194, i32* %4, align 4
  br label %208

195:                                              ; preds = %178
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.iovec*, %struct.iovec** %8, align 8
  %200 = getelementptr inbounds %struct.iovec, %struct.iovec* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.uio*, %struct.uio** %6, align 8
  %203 = call i32 @uiomove(i8* %198, i64 %201, %struct.uio* %202)
  store i32 %203, i32* %9, align 4
  br label %18

204:                                              ; preds = %116
  br label %205

205:                                              ; preds = %204, %115
  br label %18

206:                                              ; preds = %90, %27
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %193, %159
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @dev2unit(%struct.cdev*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @mem_valid(i32, i64) #1

declare dso_local i32 @pmap_dev_direct_mapped(i32, i64) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i8* @trunc_page(i32) #1

declare dso_local i32 @uiomove_fromphys(%struct.vm_page**, i32, i64, %struct.uio*) #1

declare dso_local i32 @DMAP_TO_PHYS(i32) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i64 @pmap_extract(i32, i32) #1

declare dso_local i64 @kernacc(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
