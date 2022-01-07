; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_rdwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.mount* }
%struct.mount = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.uio = type { i32, i32, i32, i32, %struct.thread*, i64, %struct.iovec* }
%struct.iovec = type { i32, i8* }
%struct.vn_io_fault_args = type { i32, %struct.TYPE_4__, %struct.ucred*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vnode* }

@VCHR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@IO_RANGELOCKED = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IO_NODELOCKED with no vp lock held\00", align 1
@VN_IO_FAULT_VOP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IO_NOMACCHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rdwr(i32 %0, %struct.vnode* %1, i8* %2, i32 %3, i64 %4, i32 %5, i32 %6, %struct.ucred* %7, %struct.ucred* %8, i32* %9, %struct.thread* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ucred*, align 8
  %21 = alloca %struct.ucred*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.thread*, align 8
  %24 = alloca %struct.uio, align 8
  %25 = alloca %struct.iovec, align 8
  %26 = alloca %struct.mount*, align 8
  %27 = alloca %struct.ucred*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.vn_io_fault_args, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store %struct.vnode* %1, %struct.vnode** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32 %3, i32* %16, align 4
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store %struct.ucred* %7, %struct.ucred** %20, align 8
  store %struct.ucred* %8, %struct.ucred** %21, align 8
  store i32* %9, i32** %22, align 8
  store %struct.thread* %10, %struct.thread** %23, align 8
  %32 = load i64, i64* %17, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %11
  %35 = load %struct.vnode*, %struct.vnode** %14, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VCHR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %12, align 4
  br label %222

42:                                               ; preds = %34, %11
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 6
  store %struct.iovec* %25, %struct.iovec** %43, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %16, align 4
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %16, align 4
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* %17, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 5
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* %18, align 4
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.thread*, %struct.thread** %23, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 4
  store %struct.thread* %57, %struct.thread** %58, align 8
  store i32 0, i32* %30, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* @IO_NODELOCKED, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %134

63:                                               ; preds = %42
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @IO_RANGELOCKED, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @UIO_READ, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.vnode*, %struct.vnode** %14, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i8* @vn_rangelock_rlock(%struct.vnode* %73, i64 %74, i64 %78)
  store i8* %79, i8** %28, align 8
  br label %88

80:                                               ; preds = %68
  %81 = load %struct.vnode*, %struct.vnode** %14, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i8* @vn_rangelock_wlock(%struct.vnode* %81, i64 %82, i64 %86)
  store i8* %87, i8** %28, align 8
  br label %88

88:                                               ; preds = %80, %72
  br label %90

89:                                               ; preds = %63
  store i8* null, i8** %28, align 8
  br label %90

90:                                               ; preds = %89, %88
  store %struct.mount* null, %struct.mount** %26, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @UIO_WRITE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %90
  %95 = load %struct.vnode*, %struct.vnode** %14, align 8
  %96 = getelementptr inbounds %struct.vnode, %struct.vnode* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VCHR, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.vnode*, %struct.vnode** %14, align 8
  %102 = load i32, i32* @V_WAIT, align 4
  %103 = load i32, i32* @PCATCH, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @vn_start_write(%struct.vnode* %101, %struct.mount** %26, i32 %104)
  store i32 %105, i32* %30, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %213

108:                                              ; preds = %100, %94
  %109 = load %struct.mount*, %struct.mount** %26, align 8
  %110 = call i64 @MNT_SHARED_WRITES(%struct.mount* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %108
  %113 = load %struct.mount*, %struct.mount** %26, align 8
  %114 = icmp eq %struct.mount* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.vnode*, %struct.vnode** %14, align 8
  %117 = getelementptr inbounds %struct.vnode, %struct.vnode* %116, i32 0, i32 1
  %118 = load %struct.mount*, %struct.mount** %117, align 8
  %119 = call i64 @MNT_SHARED_WRITES(%struct.mount* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115, %108
  %122 = load i32, i32* @LK_SHARED, align 4
  store i32 %122, i32* %31, align 4
  br label %125

123:                                              ; preds = %115, %112
  %124 = load i32, i32* @LK_EXCLUSIVE, align 4
  store i32 %124, i32* %31, align 4
  br label %125

125:                                              ; preds = %123, %121
  br label %128

126:                                              ; preds = %90
  %127 = load i32, i32* @LK_SHARED, align 4
  store i32 %127, i32* %31, align 4
  br label %128

128:                                              ; preds = %126, %125
  %129 = load %struct.vnode*, %struct.vnode** %14, align 8
  %130 = load i32, i32* %31, align 4
  %131 = load i32, i32* @LK_RETRY, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @vn_lock(%struct.vnode* %129, i32 %132)
  br label %135

134:                                              ; preds = %42
  store i8* null, i8** %28, align 8
  br label %135

135:                                              ; preds = %134, %128
  %136 = load %struct.vnode*, %struct.vnode** %14, align 8
  %137 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %138 = load i32, i32* %30, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %181

140:                                              ; preds = %135
  %141 = load %struct.ucred*, %struct.ucred** %21, align 8
  %142 = icmp ne %struct.ucred* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load %struct.ucred*, %struct.ucred** %21, align 8
  store %struct.ucred* %144, %struct.ucred** %27, align 8
  br label %147

145:                                              ; preds = %140
  %146 = load %struct.ucred*, %struct.ucred** %20, align 8
  store %struct.ucred* %146, %struct.ucred** %27, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = load %struct.vnode*, %struct.vnode** %14, align 8
  %149 = call i64 @do_vn_io_fault(%struct.vnode* %148, %struct.uio* %24)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load i32, i32* @VN_IO_FAULT_VOP, align 4
  %153 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %29, i32 0, i32 3
  store i32 %152, i32* %153, align 8
  %154 = load %struct.ucred*, %struct.ucred** %27, align 8
  %155 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %29, i32 0, i32 2
  store %struct.ucred* %154, %struct.ucred** %155, align 8
  %156 = load i32, i32* %19, align 4
  %157 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %29, i32 0, i32 0
  store i32 %156, i32* %157, align 8
  %158 = load %struct.vnode*, %struct.vnode** %14, align 8
  %159 = getelementptr inbounds %struct.vn_io_fault_args, %struct.vn_io_fault_args* %29, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store %struct.vnode* %158, %struct.vnode** %161, align 8
  %162 = load %struct.vnode*, %struct.vnode** %14, align 8
  %163 = load %struct.thread*, %struct.thread** %23, align 8
  %164 = call i32 @vn_io_fault1(%struct.vnode* %162, %struct.uio* %24, %struct.vn_io_fault_args* %29, %struct.thread* %163)
  store i32 %164, i32* %30, align 4
  br label %180

165:                                              ; preds = %147
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @UIO_READ, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load %struct.vnode*, %struct.vnode** %14, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load %struct.ucred*, %struct.ucred** %27, align 8
  %173 = call i32 @VOP_READ(%struct.vnode* %170, %struct.uio* %24, i32 %171, %struct.ucred* %172)
  store i32 %173, i32* %30, align 4
  br label %179

174:                                              ; preds = %165
  %175 = load %struct.vnode*, %struct.vnode** %14, align 8
  %176 = load i32, i32* %19, align 4
  %177 = load %struct.ucred*, %struct.ucred** %27, align 8
  %178 = call i32 @VOP_WRITE(%struct.vnode* %175, %struct.uio* %24, i32 %176, %struct.ucred* %177)
  store i32 %178, i32* %30, align 4
  br label %179

179:                                              ; preds = %174, %169
  br label %180

180:                                              ; preds = %179, %151
  br label %181

181:                                              ; preds = %180, %135
  %182 = load i32*, i32** %22, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %22, align 8
  store i32 %186, i32* %187, align 4
  br label %198

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i32, i32* %30, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* @EIO, align 4
  store i32 %196, i32* %30, align 4
  br label %197

197:                                              ; preds = %195, %192, %188
  br label %198

198:                                              ; preds = %197, %184
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* @IO_NODELOCKED, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %198
  %204 = load %struct.vnode*, %struct.vnode** %14, align 8
  %205 = call i32 @VOP_UNLOCK(%struct.vnode* %204, i32 0)
  %206 = load %struct.mount*, %struct.mount** %26, align 8
  %207 = icmp ne %struct.mount* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.mount*, %struct.mount** %26, align 8
  %210 = call i32 @vn_finished_write(%struct.mount* %209)
  br label %211

211:                                              ; preds = %208, %203
  br label %212

212:                                              ; preds = %211, %198
  br label %213

213:                                              ; preds = %212, %107
  %214 = load i8*, i8** %28, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load %struct.vnode*, %struct.vnode** %14, align 8
  %218 = load i8*, i8** %28, align 8
  %219 = call i32 @vn_rangelock_unlock(%struct.vnode* %217, i8* %218)
  br label %220

220:                                              ; preds = %216, %213
  %221 = load i32, i32* %30, align 4
  store i32 %221, i32* %12, align 4
  br label %222

222:                                              ; preds = %220, %40
  %223 = load i32, i32* %12, align 4
  ret i32 %223
}

declare dso_local i8* @vn_rangelock_rlock(%struct.vnode*, i64, i64) #1

declare dso_local i8* @vn_rangelock_wlock(%struct.vnode*, i64, i64) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i64 @MNT_SHARED_WRITES(%struct.mount*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i64 @do_vn_io_fault(%struct.vnode*, %struct.uio*) #1

declare dso_local i32 @vn_io_fault1(%struct.vnode*, %struct.uio*, %struct.vn_io_fault_args*, %struct.thread*) #1

declare dso_local i32 @VOP_READ(%struct.vnode*, %struct.uio*, i32, %struct.ucred*) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, %struct.ucred*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @vn_rangelock_unlock(%struct.vnode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
