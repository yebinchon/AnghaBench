; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_allocate_args = type { i64*, i64*, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.iovec = type { i64, %struct.statfs* }
%struct.statfs = type { i64 }
%struct.vattr = type { i64, i64 }
%struct.uio = type { i32, i64, %struct.thread*, i32, i8*, i64, %struct.iovec* }

@curthread = common dso_local global %struct.thread* null, align 8
@BLKDEV_IOSIZE = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i8* null, align 8
@UIO_READ = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_STATFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vop_stdallocate(%struct.vop_allocate_args* %0) #0 {
  %2 = alloca %struct.vop_allocate_args*, align 8
  %3 = alloca %struct.iovec, align 8
  %4 = alloca %struct.vattr, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.uio, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.statfs*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.vop_allocate_args* %0, %struct.vop_allocate_args** %2, align 8
  store %struct.statfs* null, %struct.statfs** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %12, align 8
  store %struct.vattr* %4, %struct.vattr** %5, align 8
  %17 = load %struct.vop_allocate_args*, %struct.vop_allocate_args** %2, align 8
  %18 = getelementptr inbounds %struct.vop_allocate_args, %struct.vop_allocate_args* %17, i32 0, i32 2
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  store %struct.vnode* %19, %struct.vnode** %13, align 8
  %20 = load %struct.vop_allocate_args*, %struct.vop_allocate_args** %2, align 8
  %21 = getelementptr inbounds %struct.vop_allocate_args, %struct.vop_allocate_args* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.vop_allocate_args*, %struct.vop_allocate_args** %2, align 8
  %25 = getelementptr inbounds %struct.vop_allocate_args, %struct.vop_allocate_args* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load %struct.vnode*, %struct.vnode** %13, align 8
  %29 = load %struct.vattr*, %struct.vattr** %5, align 8
  %30 = load %struct.thread*, %struct.thread** %12, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VOP_GETATTR(%struct.vnode* %28, %struct.vattr* %29, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %209

37:                                               ; preds = %1
  %38 = load %struct.vattr*, %struct.vattr** %5, align 8
  %39 = getelementptr inbounds %struct.vattr, %struct.vattr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.vattr*, %struct.vattr** %5, align 8
  %42 = getelementptr inbounds %struct.vattr, %struct.vattr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @BLKDEV_IOSIZE, align 8
  store i64 %47, i64* %14, align 8
  br label %48

48:                                               ; preds = %46, %37
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @MAXPHYS, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* @MAXPHYS, align 8
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i64, i64* %14, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @M_TEMP, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = call %struct.statfs* @malloc(i32 %56, i32 %57, i32 %58)
  store %struct.statfs* %59, %struct.statfs** %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.vattr*, %struct.vattr** %5, align 8
  %64 = getelementptr inbounds %struct.vattr, %struct.vattr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %54
  %68 = load %struct.vattr*, %struct.vattr** %5, align 8
  %69 = call i32 @VATTR_NULL(%struct.vattr* %68)
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.vattr*, %struct.vattr** %5, align 8
  %74 = getelementptr inbounds %struct.vattr, %struct.vattr* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.vnode*, %struct.vnode** %13, align 8
  %76 = load %struct.vattr*, %struct.vattr** %5, align 8
  %77 = load %struct.thread*, %struct.thread** %12, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @VOP_SETATTR(%struct.vnode* %75, %struct.vattr* %76, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  br label %209

84:                                               ; preds = %67
  %85 = load %struct.vattr*, %struct.vattr** %5, align 8
  %86 = call i32 @VATTR_NULL(%struct.vattr* %85)
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.vattr*, %struct.vattr** %5, align 8
  %89 = getelementptr inbounds %struct.vattr, %struct.vattr* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.vnode*, %struct.vnode** %13, align 8
  %91 = load %struct.vattr*, %struct.vattr** %5, align 8
  %92 = load %struct.thread*, %struct.thread** %12, align 8
  %93 = getelementptr inbounds %struct.thread, %struct.thread* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @VOP_SETATTR(%struct.vnode* %90, %struct.vattr* %91, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %209

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %54
  br label %101

101:                                              ; preds = %207, %100
  %102 = load i64, i64* %14, align 8
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %14, align 8
  %105 = urem i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %14, align 8
  %110 = urem i64 %108, %109
  %111 = load i64, i64* %9, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %107, %101
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %9, align 8
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %164

123:                                              ; preds = %119
  %124 = load %struct.statfs*, %struct.statfs** %11, align 8
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %3, i32 0, i32 1
  store %struct.statfs* %124, %struct.statfs** %125, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds %struct.iovec, %struct.iovec* %3, i32 0, i32 0
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 6
  store %struct.iovec* %3, %struct.iovec** %128, align 8
  %129 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 5
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  store i64 %132, i64* %133, align 8
  %134 = load i8*, i8** @UIO_SYSSPACE, align 8
  %135 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 4
  store i8* %134, i8** %135, align 8
  %136 = load i32, i32* @UIO_READ, align 4
  %137 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 3
  store i32 %136, i32* %137, align 8
  %138 = load %struct.thread*, %struct.thread** %12, align 8
  %139 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 2
  store %struct.thread* %138, %struct.thread** %139, align 8
  %140 = load %struct.vnode*, %struct.vnode** %13, align 8
  %141 = load %struct.thread*, %struct.thread** %12, align 8
  %142 = getelementptr inbounds %struct.thread, %struct.thread* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @VOP_READ(%struct.vnode* %140, %struct.uio* %6, i32 0, i32 %143)
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %123
  br label %208

148:                                              ; preds = %123
  %149 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ugt i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = load %struct.statfs*, %struct.statfs** %11, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds %struct.statfs, %struct.statfs* %153, i64 %154
  %156 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 0, %157
  %159 = getelementptr inbounds %struct.statfs, %struct.statfs* %155, i64 %158
  %160 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @bzero(%struct.statfs* %159, i64 %161)
  br label %163

163:                                              ; preds = %152, %148
  br label %168

164:                                              ; preds = %119
  %165 = load %struct.statfs*, %struct.statfs** %11, align 8
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @bzero(%struct.statfs* %165, i64 %166)
  br label %168

168:                                              ; preds = %164, %163
  %169 = load %struct.statfs*, %struct.statfs** %11, align 8
  %170 = getelementptr inbounds %struct.iovec, %struct.iovec* %3, i32 0, i32 1
  store %struct.statfs* %169, %struct.statfs** %170, align 8
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds %struct.iovec, %struct.iovec* %3, i32 0, i32 0
  store i64 %171, i64* %172, align 8
  %173 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 6
  store %struct.iovec* %3, %struct.iovec** %173, align 8
  %174 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load i64, i64* %10, align 8
  %176 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 5
  store i64 %175, i64* %176, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  store i64 %177, i64* %178, align 8
  %179 = load i8*, i8** @UIO_SYSSPACE, align 8
  %180 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 4
  store i8* %179, i8** %180, align 8
  %181 = load i32, i32* @UIO_WRITE, align 4
  %182 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 3
  store i32 %181, i32* %182, align 8
  %183 = load %struct.thread*, %struct.thread** %12, align 8
  %184 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 2
  store %struct.thread* %183, %struct.thread** %184, align 8
  %185 = load %struct.vnode*, %struct.vnode** %13, align 8
  %186 = load %struct.thread*, %struct.thread** %12, align 8
  %187 = getelementptr inbounds %struct.thread, %struct.thread* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @VOP_WRITE(%struct.vnode* %185, %struct.uio* %6, i32 0, i32 %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %168
  br label %208

193:                                              ; preds = %168
  %194 = load i64, i64* %9, align 8
  %195 = load i64, i64* %8, align 8
  %196 = sub nsw i64 %195, %194
  store i64 %196, i64* %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* %10, align 8
  %199 = add nsw i64 %198, %197
  store i64 %199, i64* %10, align 8
  %200 = load i64, i64* %8, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  br label %208

203:                                              ; preds = %193
  %204 = call i64 (...) @should_yield()
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  br label %208

207:                                              ; preds = %203
  br label %101

208:                                              ; preds = %206, %202, %192, %147
  br label %209

209:                                              ; preds = %208, %98, %83, %36
  %210 = load i64, i64* %8, align 8
  %211 = load %struct.vop_allocate_args*, %struct.vop_allocate_args** %2, align 8
  %212 = getelementptr inbounds %struct.vop_allocate_args, %struct.vop_allocate_args* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  store i64 %210, i64* %213, align 8
  %214 = load i64, i64* %10, align 8
  %215 = load %struct.vop_allocate_args*, %struct.vop_allocate_args** %2, align 8
  %216 = getelementptr inbounds %struct.vop_allocate_args, %struct.vop_allocate_args* %215, i32 0, i32 1
  %217 = load i64*, i64** %216, align 8
  store i64 %214, i64* %217, align 8
  %218 = load %struct.statfs*, %struct.statfs** %11, align 8
  %219 = load i32, i32* @M_TEMP, align 4
  %220 = call i32 @free(%struct.statfs* %218, i32 %219)
  %221 = load i32, i32* %15, align 4
  ret i32 %221
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local %struct.statfs* @malloc(i32, i32, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @bzero(%struct.statfs*, i64) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i64 @should_yield(...) #1

declare dso_local i32 @free(%struct.statfs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
